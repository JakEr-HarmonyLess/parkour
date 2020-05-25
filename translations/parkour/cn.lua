translations.cn = {
	name = "cn",

	-- Error messages
	corrupt_map = "<r>地圖崩壞。正在載入另一張。",
	corrupt_map_vanilla = "<r>[錯誤] <n>無法取得此地圖的資訊。",
	corrupt_map_mouse_start = "<r>[錯誤] <n>此地圖需要有起始位置 (小鼠出生點)。",
	corrupt_map_needing_chair = "<r>[錯誤] <n>地圖需要包括終點椅子。",
	corrupt_map_missing_checkpoints = "<r>[錯誤] <n>地圖需要有最少一個重生點 (黃色釘子)。",
	corrupt_data = "<r>不幸地, 你的資料崩壞了而被重置了。",
	min_players = "<r>房間裡需要至少4名玩家才可以保存資料。 <bl>[%s/%s]",
	tribe_house = "<r>在部落之家遊玩的資料不會被儲存。",
	invalid_syntax = "<r>無效的格式。",
	user_not_in_room = "<r>玩家 <n2>%s</n2> 不在房間裡。",
	arg_must_be_id = "<r>參數需要是一個有效的 id。",
	cant_update = "<r>現在無法更新玩家階級。請稍後再嘗試。",
	cant_edit = "<r>你不能修改 <n2>%s</n2> 的階級",
	invalid_rank = "<r>無效的階級: <n2>%s",
	code_error = "<r>發生了錯誤: <bl>%s-%s-%s %s",
	panic_mode = "<r>小遊戲進入了混亂模式。",
	public_panic = "<r>請等待直到機械人來重啟小遊戲。",
	tribe_panic = "<r>請輸入 <n2>/module parkour</n2> 來重啟小遊戲。",
	emergency_mode = "<r>正在啟動緊急終止模式, 新玩家無法加入遊戲。請前往另一個　#parkour 房間。",
	bot_requested = "<r>已收到請求機械人。它將會馬上到達。",
	stream_failure = "<r>內部串流渠道錯誤。資料不能被傳送。",
	maps_not_available = "<r>#parkour 的 'maps' 附屬模式只在 <n2>*#parkour0maps</n2> 房間提供。",
	version_mismatch = "<r>機械人 (<d>%s</d>) 跟 lua (<d>%s</d>) 版本不相乎。不能啟動系統。",
	missing_bot = "<r>遺失機械人。請等待機械人到達或在 discord 上私聊 @Tocu#0018: <d>%s</d>",
	invalid_length = "<r>你的訊息長度需在 10 到 100 字元。 它現在有 <n2>%s</n2> 個字元。",
	invalid_map = "<r>無效的地圖。",
	map_does_not_exist = "<r>你提交的地圖不存在或是不能加載。請稍後再嘗試。",
	invalid_map_perm = "<r>你提交的地圖不是 P22 或 P41。",
	invalid_map_perm_specific = "<r>你提交的地圖不是在 P%s。",
	cant_use_this_map = "<r>你提交的地圖有漏洞而不能被使用。",
	invalid_map_p41 = "<r>你提交的地圖是 P41, 但不在小遊戲地圖列表裡。",
	invalid_map_p22 = "<r>你提交的地圖是 P22, 但不在小遊戲地圖列表裡。",
	map_already_voting = "<r>你提交的地圖已經在其他公開的循環裡了。",
	not_enough_permissions = "<r>你沒有足夠的權限來操作。",
	already_depermed = "<r>你提交的地圖已經從地圖庫中被除去。",
	already_permed = "<r>你提交的地圖已經是在循環裡。",
	cant_perm_right_now = "<r>現在不能改變這地圖的類別。請稍後再嘗試。",
	already_killed = "<r>玩家 %s 已經被殺。",
	leaderboard_not_loaded = "<r>排行榜沒被加載。請稍後片刻。",

	-- Help window
	help = "幫助",
	staff = "職員",
	rules = "規則",
	contribute = "貢獻",
	changelog = "新聞",
	help_help = "<p align = 'center'><font size = '14'>歡迎來到 <T>#parkour!</T></font></p>\n<font size = '12'><p align='center'><J>你的目標是到達所有重生點直到完成地圖。</J></p>\n\n<N>• 按 <O>O</O>鍵, 輸入 <O>!op</O> 或是點擊右上方的 <O>齒輪</O> 來開啟 <T>選項目錄</T>。\n• 按 <O>P</O> 鍵或是點擊右上方的 <O>拳頭標誌</O> 來開啟 <T>能力目錄</T>。\n• 按 <O>L</O> 鍵或是輸入 <O>!lb</O> 來開啟 <T>排行榜</T>。\n• 按 <O>M</O> 鍵或是 <O>刪除</O> 鍵來 <T>自殺</T>, 你可以在 <J>選項</J> 目錄中激活按鍵。\n• 要知道更多關於我們 <O>職員</O> 的資訊以及 <O>parkour 的規則</O>, 可點擊 <T>職員</T> 及 <T>規則</T> 的分頁查看。\n• 點擊 <a href='event:discord'><o>這裡</o></a> 來取得 discord 邀請連結及 <a href='event:map_submission'><o>這裡</o></a> 來得到提交地圖的論壇連結。\n• 當你想滾動頁面可使用 <o>上</o> 鍵及 <o>下</o> 鍵。\n\n<p align = 'center'><font size = '13'><T>貢獻現在是開放的! 點擊 <O>貢獻</O> 分頁來了解更多!</T></font></p>",
	help_staff = "<p align = 'center'><font size = '13'><r>免責聲明: Parkour 的職員並不是 Transformice 職員而且在遊戲裡沒有任何權力, 只負責這小遊戲的規管。</r>\nParkour 職員確保小遊戲減少錯誤而運作順暢, 而且可以在有需要時協助玩家。</font></p>\n你可以在聊天框輸入 <D>!staff</D> 來查看職員列表。\n\n<font color = '#E7342A'>管理員:</font> 他們負責透過更新及修復滴漏洞來維護小遊戲。\n\n<font color = '#843DA4'>小隊主管:</font> 他們會觀察管理團隊及地圖團隊, 確保他們在工作上的表現。他們也負責招募新成員加入職員團隊中。\n\n<font color = '#FFAAAA'>管理員:</font> 他們負責執行小遊戲裡的規則以及處分違反規則的玩家。\n\n<font color = '#25C059'>地圖管理員:</font> 他們負責審核, 新增, 以及移除小遊戲裡的地圖來確保你可以享受遊戲過程。",
	help_rules = "<font size = '13'><B><J>所有適用於 Transformice 的條款及細則也適用於 #parkour</J></B></font>\n\n如果你發現任何玩家違反這些規則, 可以在遊戲中私聊 parkour 的管理員。如果沒有管理員在線, 你可以在 discord 伺服器中舉報事件。\n當你舉報的時候, 請提供你所在的伺服器, 房間名稱, 以及玩家名稱。\n• 例如: en-#parkour10 Blank#3495 trolling\n證明, 例如是截圖, 錄象以及gif圖能有效協助舉報, 但不是一定需要的。\n\n<font size = '11'>• 任何 <font color = '#ef1111'>外掛, 瑕疵或漏洞</font> 是不能在 #parkour 房間中使用\n• <font color = '#ef1111'>VPN 刷數據</font> 會被當作 <B>利用漏洞</B> 而不被允許的。 <p align = 'center'><font color = '#cc2222' size = '12'><B>\n任何人被抓到違反規則會被即時封禁。</B></font></p>\n\n<font size = '12'>Transformice 允許搗蛋行為。但是, <font color='#cc2222'><B>我們不允許在 parkour 的搗蛋行為。</B></font></font>\n\n<p align = 'center'><J>搗蛋行為是指當一個玩家有意圖利用他的能力來阻止其他玩家完成地圖。</j></p>\n• 復仇性的搗蛋行為 <B>並不是一個合理解釋</B> 來搗亂別人而因此你也會被處分。\n• 強迫想自理的玩家接受協助而當他說不用之後仍舊沒有停止此行為也會被視作搗蛋。\n• <J>如果一個玩家不想被協助或是想自理通關, 請你盡力協助其他玩家。</J> 但是如果有另外的玩家需要協助而剛好跟自理玩家在同一個重生點, 你可以協助他們 [兩人]。\n\n如果玩家的搗蛋行為被抓到, 他們會被處分基於時間或是 parkour 回合數的遊玩限制。重覆的搗蛋行為會引至更長及更嚴重的處分。",
	help_contribute = "<font size='14'>\n<p align='center'>Parkour 管理團隊喜愛開放原始碼是因為它能夠<t>協助社群</t>。 你可以在 <o><u><a href='event:github'>GitHub</a></u></o> <o>查看</o> 以及 <o>修改</o> 原始碼。\n\n維護這個小遊戲是 <t>義務性質</t>, 所以任何在 <t>編程</t>, <t>漏洞回饋</t>, <t>建議</t> 及 <t>地圖創作</t> 上提供的幫助將會是十分 <u>歡迎而且非常感激</u>。\n你可以在 <o><u><a href='event:discord'>Discord</a></u></o> 及/或 <o><u><a href='event:github'>GitHub</a></u></o> <vp>匯報漏洞</vp> 和 <vp>提供意見</vp>。\n你可以在我們的 <o><u><a href='event:map_submission'>論壇帖子</a></u></o> 中 <vp>提交你的地圖</vp>。\n\n維護 Parkour 不是很花費, 但也不完全是免費。我們希望你能夠在 <o><u><a href='event:donate'>這裡</a></u></o> <t>捐贈任何金額</t> 來支持我們。\n<u>所有捐款會用來改善這個小遊戲。</u></p>",
	help_changelog = "<font size='13'><p align='center'><o>版本 2.2.0 - 08/05/2020</o></p>\n\n• 改善了小遊戲的內部架構。\n\t\t• 小遊戲變得 <o>更加穩定了</o>。\n• 新增機械人 (<o>Parkour#8558</o>) 在稍後會用在 discord 上。\n• <vp>新能力!</vp>\n\t\t• 如果你進入排行榜上 (按 <t>L</t>鍵 打開) 你可以施放 <t>馬桶</t>! <o>在它們消失的時候將會有驚喜...</o>\n\t\t• 如果你有足夠的地圖通過數, 你也可以施放 <t>大箱子</t> 以及 <t>彈床</t>!",

	-- Congratulation messages
	reached_level = "<d>恭喜! 你到達了第 <vp>%s</vp> 個重生點。",
	finished = "<d><o>%s</o> 在 <vp>%s</vp> 秒內完成了地圖, <fc>恭喜!",
	unlocked_power = "<ce><d>%s</d> 解鎖了 <vp>%s</vp> 能力。",
	enjoy = "<d>享受你的新能力吧!",

	-- Information messages
	paused_events = "<cep><b>[警告!]</b> <n>小遊戲已達到最高流量限制而被暫停了。",
	resumed_events = "<n2>小遊戲已繼續啟用。",
	welcome = "<n>歡迎來到 <t>#parkour</t>!",
	mod_apps = "<j>Parkour 管理員申請現正開放! 請查看這連結: <rose>%s",
	type_help = "<pt>我們建議你輸入 <d>!help</d> 查看有用的資訊!",
	data_saved = "<vp>資料已儲存。",
	action_within_minute = "<vp>你的指示將會馬上執行。",
	rank_save = "<n2>輸入 <d>!rank save</d> 來確認改變。",
	module_update = "<r><b>[警告!]</b> <n>小遊戲將會在 <d>%02d:%02d</d> 後更新。",
	mapping_loaded = "<j>[資訊] <n>地圖系統 <t>(v%s)</t> 已加載。",
	mapper_joined = "<j>[資訊] <n><ce>%s</ce> <n2>(%s)</n2> 加入了房間。",
	mapper_left = "<j>[資訊] <n><ce>%s</ce> <n2>(%s)</n2> 離開了房間。",
	mapper_loaded = "<j>[資訊] <n><ce>%s</ce> 加載了地圖。",
	starting_perm_change = "<j>[資訊] <n>正在更改地圖類別...",
	got_map_info = "<j>[資訊] <n>已收集地圖資訊。正嘗試改變類別...",
	perm_changed = "<j>[資訊] <n>已成功更改地圖 <ch>@%s</ch> 的類別 <r>P%s</r> 到 <t>P%s</t>。",
	leaderboard_loaded = "<j>排行榜已載入。請按 L 鍵打開它。",
	kill_minutes = "<R>你的能力已經在 %s 分鐘內暫時取消了。",
	kill_map = "<R>你的能力已被取消直到下一回合。",

	-- Miscellaneous
	options = "<p align='center'><font size='20'>Parkour 選項</font></p>\n\n在重生點使用粒子效果\n\n使用 <b>QWERTY</b> 鍵盤 (使用<b>AZERTY</b>請關閉此項)\n\n使用快捷鍵 <b>M</b> 來 <b>自殺</b> (使用<b>DEL</b>請關閉此項)\n\n顯示你的能力緩衝時間\n\n顯示能力選項按鈕\n\n顯示幫助按鈕\n\n顯示完成地圖的公告",
	unknown = "不明物",
	powers = "能力",
	press = "<vp>按 %s",
	click = "<vp>左鍵點擊",
	ranking_pos = "排名 #%s",
	completed_maps = "<p align='center'><BV><B>完成的地圖數: %s</B></p></BV>",
	leaderboard = "排行榜",
	position = "位置",
	username = "用戶名",
	community = "社區",
	completed = "完成地圖數",
	not_permed = "沒被分類",
	permed = "已分類",
	points = "%d 分數",
	conversation_info = "<j>%s <bl>- @%s <vp>(%s, %s) %s\n<n><font size='10'>發起人 <d>%s</d>。最後回覆者 <d>%s</d>。 <d>%s</d> 個回應, <d>%s</d> 個未讀。",
	map_info = "<p align='center'>地圖編號: <bl>@%s</bl> <g>|</g> 地圖作者: <j>%s</j> <g>|</g> 狀態: <vp>%s, %s</vp> <g>|</g> 分數: <vp>%s</vp>",
	permed_maps = "已分類地圖",
	ongoing_votations = "投票進行中",
	archived_votations = "投票已結束",
	open = "開",
	not_archived = "未完成",
	archived = "已完成",
	delete = "<r><a href='event:%s'>[刪除]</a> ",
	see_restore = "<vp><a href='event:%s'>[查看]</a> <a href='event:%s'>[回復]</a> ",
	no_comments = "沒有回應。",
	deleted_by = "<r>[訊息被 %s 刪除]",
	dearchive = "刪除", -- to dearchive
	archive = "達成", -- to archive
	deperm = "刪除分類", -- to deperm
	perm = "分類", -- to perm
	map_actions_staff = "<p align='center'><a href='event:%s'>&lt;</a> %s <a href='event:%s'>&gt;</a> <g>|</g> <a href='event:%s'><j>評價</j></a> <g>|</g> 你的投票: %s <g>|</g> <vp><a href='event:%s'>[%s]</a> <a href='event:%s'>[%s]</a> <a href='event:%s'>[加載]</a></p>",
	map_actions_user = "<p align='center'><a href='event:%s'>&lt;</a> %s <a href='event:%s'>&gt;</a> <g>|</g> <a href='event:%s'><j>評價</j></a></p>",
	load_from_thread = "<p align='center'><a href='event:load_custom'>加載玩家創作地圖</a></p>",
	write_comment = "在這裡寫下評價",
	write_map = "在這裡寫下地圖編號",

	-- Power names
	balloon = "氣球",
	masterBalloon = "進階氣球",
	bubble = "泡泡",
	fly = "飛行",
	snowball = "雪球",
	speed = "加速",
	teleport = "傳送",
	smallbox = "小箱子",
	cloud = "白雲",
	rip = "墓碑",
	choco = "巧克力棒",
	bigBox = "大箱子",
	trampoline = "彈床",
	toilet = "馬桶"
}