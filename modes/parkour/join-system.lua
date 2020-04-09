local join_bot = "Tocutoeltuco#6919"
local join_epoch = os.time({year=2020, month=1, day=1, hour=0})
local join_to_delete = {_count = 0}
local waiting_mod = false
local A, Z, a, z = string.byte("AZaz", 1, 4)
local next_join_check = os.time() + 15000
local waiting_mod_timeout = 0

local room = tfm.get.room

local function generatePassword(length)
	local characters = {}

	for index = 1, length do
		characters[index] = math.random(0, 1) == 0 and math.random(A, Z) or math.random(a, z)
	end

	return string.char(table.unpack(characters))
end

onEvent("PlayerDataLoaded", function(player, data)
	if player ~= join_bot then return end

	data = json.decode(data)

	if room.name == "*#parkour0maps" then
		eventJoinSystemDataLoaded(join_bot, data)
	else
		local now = os.time() - join_epoch
		join_to_delete._count = 0

		for room_name, expire in next, data do
			if not expire[1] then
				if now >= expire[2] then
					join_to_delete._count = join_to_delete._count + 1
					join_to_delete[join_to_delete._count] = room_name

				elseif room_name == room.name then
					local password = generatePassword(15)
					waiting_mod = true
					waiting_mod_timeout = now + 45000
					data[room_name] = {true, waiting_mod_timeout, password}

					tfm.exec.setRoomPassword(password)
					tfm.exec.setRoomMaxPlayers(math.max(13, player_count + 1))
				end
			end
		end

		for idx = 1, join_to_delete._count do
			data[join_to_delete[idx]] = nil
		end

		system.savePlayerData(join_bot, json.encode(data))
	end
end)

onEvent("NewPlayer", function()
	if waiting_mod then
		tfm.exec.setRoomMaxPlayers(12)
		tfm.exec.setRoomPassword("")
		waiting_mod = false
	end
end)

onEvent("Loop", function()
	local now = os.time()
	if now >= next_join_check then
		system.loadPlayerData(join_bot)
		next_join_check = now + 15000
	end
	if waiting_mod and now >= waiting_mod_timeout then
		tfm.exec.setRoomMaxPlayers(12)
		tfm.exec.setRoomPassword("")
		waiting_mod = false
	end
end)