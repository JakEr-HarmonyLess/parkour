max_leaderboard_rows = 70
max_weekleaderboard_rows = 28
local max_leaderboard_pages = math.ceil(max_leaderboard_rows / 14) - 1
local max_weekleaderboard_pages = math.ceil(max_weekleaderboard_rows / 14) - 1
local loaded_leaderboard = false
leaderboard = {}
weekleaderboard = {}
-- {id, name, completed_maps, community}
local default_leaderboard_user = {0, nil, 0, "xx"}
local leaderboard_badges = {
	{14, 2},
	{28, 3},
	{42, 4},
	{56, 5},
	{70, 6}
}
leaderboard_badges._count = #leaderboard_badges

local function leaderboardSort(a, b)
	return a[3] > b[3]
end

local remove, sort = table.remove, table.sort

local function checkPlayersPosition(week)
	local max_lb_rows = week and max_weekleaderboard_rows or max_leaderboard_rows
	local lb = week and weekleaderboard or leaderboard
	local totalRankedPlayers = #lb
	local cachedPlayers = {}

	local playerId, position

	local toRemove, counterRemoved = {}, 0
	for player = 1, totalRankedPlayers do
		position = lb[player]
		playerId = position[1]

		if bans[playerId] then
			counterRemoved = counterRemoved + 1
			toRemove[counterRemoved] = player
		else
			cachedPlayers[playerId] = position
		end
	end

	for index = counterRemoved, 1, -1 do
		remove(lb, toRemove[index])
	end
	toRemove = nil

	totalRankedPlayers = totalRankedPlayers - counterRemoved

	local cacheData
	local playerFile, playerData, completedMaps

	for player in next, in_room do
		playerFile = players_file[player]

		if playerFile then
			completedMaps = week and playerFile.parkour.week_c or playerFile.parkour.c
			playerData = room.playerList[player]
			if playerData then
				playerId = playerData.id

				if not bans[playerId] then
					cacheData = cachedPlayers[playerId]
					if cacheData then
						cacheData[2] = player
						cacheData[3] = completedMaps
						cacheData[4] = playerData.community
					else
						totalRankedPlayers = totalRankedPlayers + 1
						lb[totalRankedPlayers] = {
							playerId,
							player,
							completedMaps,
							playerData.community
						}
					end
				end
			end
		end
	end

	sort(lb, leaderboardSort)

	for index = max_lb_rows + 1, totalRankedPlayers do
		lb[index] = nil
	end

	if not week then
		local name, badges, badge, skip
		for pos = 1, #lb do
			name = lb[pos][2]
			lb[name] = pos

			if players_file[name] then
				badges = players_file[name].parkour.badges

				for i = 1, leaderboard_badges._count do
					badge = leaderboard_badges[i]
					if pos <= badge[1] and badges[badge[2]] ~= 1 then
						skip = false
						for j = 1, i - 1 do
							if badges[leaderboard_badges[j][2]] == 1 then
								skip = true
								break
							end
						end

						if not skip then
							for j = i + 1, leaderboard_badges._count do
								badges[leaderboard_badges[j][2]] = 0
							end

							badges[badge[2]] = 1

							NewBadgeInterface:show(name, badge[2])
							savePlayerData(name)
						end

						break
					end
				end
			end
		end
	else
		for index = 1, #lb do
			lb[lb[index][2]] = index
		end
	end
end

onEvent("GameDataLoaded", function(data)
	if data.ranking then
		if not loaded_leaderboard then
			loaded_leaderboard = true

			translatedChatMessage("leaderboard_loaded")
		end

		leaderboard = data.ranking

		checkPlayersPosition(false)
	end
	if data.weekranking then
		local ts = os.time()
		local now = os.date("*t", ts / 1000)
		now.wday = now.wday - 1
		if now.wday == 0 then
			now.wday = 7
		end

		local new_reset = os.date("%d/%m/%Y", ts - (now.wday - 1) * 24 * 60 * 60 * 1000)
		if new_reset ~= timed_maps.week.last_reset then
			if #data.weekranking > 2 and data.weekranking[1][3] > 30 then
				sendPacket(
					4,
					timed_maps.week.last_reset .. "\000" .. os.date("%d/%m/%Y", ts - 24 * 60 * 60 * 1000) ..
					"\000" .. data.weekranking[1][4] .. "\000" .. data.weekranking[1][2] .. "\000" .. data.weekranking[1][3] ..
					"\000" .. data.weekranking[2][4] .. "\000" .. data.weekranking[2][2] .. "\000" .. data.weekranking[2][3] ..
					"\000" .. data.weekranking[3][4] .. "\000" .. data.weekranking[3][2] .. "\000" .. data.weekranking[3][3]
				)
			end

			timed_maps.week.last_reset = new_reset
			timed_maps.week.next_reset = os.date("%d/%m/%Y", ts + (8 - now.wday) * 24 * 60 * 60 * 1000)

			for player, data in next, players_file do
				data.parkour.week_c = 0
				data.parkour.week_r = new_reset
			end

			data.weekranking = {}
		end

		weekleaderboard = data.weekranking

		checkPlayersPosition(true)
	end
end)
