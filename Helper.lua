script_name("Helper")
script_description("äîðàáîòêà...")
script_version("V1.0")
script_author("AlexFLIX")
script_dependencies("SAMPFUNCS, SAMP")

require("lib.moonloader")
local sampev = require("lib.samp.events")

local encoding = require ("encoding")
encoding.default = "CP1251"
u8 = encoding.UTF8

jstart = 1

function main()
  while not isSampAvailable() do
    wait(1000)
  end
  if jstart == 1 then
    sampAddChatMessage("{ffffff}* [Helper]: Ñïåöèàëüíûé ñêðèïò äëÿ ñâîèõ ïîöûêîâ çàãðóæåí. {ffffff}Âåðñèÿ ñêðèïòà: 0.1.")
  elseif jstart == 2 then
    sampfuncsLog("{ffffff}* [Helper]:  test...")
  end
	sampRegisterChatCommand("cuff", cuffed)
	sampRegisterChatCommand("uncuff", uncuff)
	sampRegisterChatCommand("frisk", frisked)
	sampRegisterChatCommand("shi", shipped)
	sampRegisterChatCommand("findgun", findgun)
	sampRegisterChatCommand("incar", carin)
	sampRegisterChatCommand("docs", docs)
	sampRegisterChatCommand("ko", knockouted)
	sampRegisterChatCommand("ud", ud)
	sampRegisterChatCommand("time", rptime)
	sampRegisterChatCommand("vignat1", vignat1)
	sampRegisterChatCommand("vignat2", vignat2)
	sampRegisterChatCommand("vignat3", vignat3)
	sampRegisterChatCommand("naborfso1", naborfso1)
	sampRegisterChatCommand("naborfso2", naborfso2)
	sampRegisterChatCommand("naborfso3", naborfso3)
	sampRegisterChatCommand("naborfso4", naborfso4)
	sampRegisterChatCommand("nepodhod", nepodhod)
	sampRegisterChatCommand("hvat", hvat)
	sampRegisterChatCommand("hhelp", hhelp)
	sampRegisterChatCommand("reload", reload)
	sampRegisterChatCommand("cudo", cudo)
	sampRegisterChatCommand("molitva", molitva)
end

function cuffed(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me çàëîìèë ðóêó ÷åëîâåêó íàïðîòèâ.")
			wait(15)
			sampSendChat("/do Íàðó÷íèêè íà ïîÿñå.")
			wait(15)
			sampSendChat("/cuff " .. id)
		else
			sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1)
		end
	end)
end

function uncuff(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me ïðîòÿíóë ðóêó â êàðìàí, èç êîòîðîãî äîñòàë êëþ÷è îò íàðó÷íèêîâ.")
			wait(100)
			sampSendChat("/uncuff " .. id)
			wait(100)
			sampSendChat("/me ïîâåñèë íàðó÷íèêè íà ïîÿñ.")
		else
			sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1)
		end
	end)
end

function frisked(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do Íà ïîÿñå îòêðûòà ñóìêà.")
			wait(800)
			sampSendChat("/me ðåçêèì äâèæåíèåì ðóêè äîñòàë îðäåð è ïåð÷àòêè èç ñóìêè.")
			wait(800)
			sampSendChat("/me ïðåäúÿâèë îðäåð íà îáûñê, çàòåì óáðàë åãî â ñóìêó è íàäåë ïåð÷àòêè.")
			wait(800)
			sampSendChat("/frisk " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1) end
	end)
end

function shipped(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do Ëåíòà ñ øèïàìè ãîòîâà.")
			wait(300)
			sampSendChat("/me ïðîòÿíóë ðóêó ê êíîïêå è íàæàë íà êíîïêó.")
			wait(300)
			sampSendChat("/ship " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1) end
	end)
end

function findgun(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do Îòêðûòàÿ ñóìêà íà ïîÿñå.")
			wait(1000)
			sampSendChat("/me ëåãêèì äâèæåíèåì ðóêè äîñòàë îðäåð è ïåð÷àòêè èç ñóìêè.")
			wait(1000)
			sampSendChat("/me ïðåäúÿâèë îðäåð íà îáûñê, çàòåì óáðàë åãî â ñóìêó è íàäåë ïåð÷àòêè.")
			wait(1000)
			sampSendChat("/findgun " .. id)
		end
	end)
end

function carin(params)
	lua_thread.create(function()
		local a, b = params:match("(.+)%s+(.+)")
		if a and b ~= nil then
			sampSendChat("/me âçÿë ïðåñòóïíèêà çà øêèðêó, îòêðûë äâåðü ìàøèíû, ïîñëå ÷åãî..")
			wait(300)
			sampSendChat("/do .. áðîñèë ïðåñòóïíèêà â ìàøèíó è çàêðûë äâåðü.")
			wait(300)
			sampSendChat("/incar " .. a .. " " .. b)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1) end
	end)
end

function docs(params)
	lua_thread.create(function()
		sampSendChat("Çäðàâñòâóéòå, âàñ áåñïîêîèò Íà÷àëüíèê ÔÑÎ Àëåêñàíäð Êîñêîð.")
		wait(1500)
		sampSendChat("Ïðåäúÿâèòå âàøè äîêóìåíòû óäîñòîâåðÿþùèå ëè÷íîñòü...")
		wait(1400)
		sampSendChat("Â ñëó÷àå íåïîä÷èíåíèÿ áóäóò ïðèíÿòû ìåðû.")
	end)
end

function knockouted(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me ñ ðàçáåãó, íàíîñèò óäàð â îáëàñòü ãðóäè ÷åëîâåêà íàïðîòèâ.")
			wait(15)
			sampSendChat("/ko " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1) end
	end)
end

function ud(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do Â êàðìàíå ïèäæàêà ëåæèò óäîñòîâåðåíèå.")
			wait(1000)
			sampSendChat("/me äîñòàë óäîñòîâåðåíèå èç ïèäæàêà è ïîêàçàë ÷åëîâåêó íàïðîòèâ ")
			wait(500)
			sampSendChat("/ud " .. id)
			wait(1000)
			sampSendChat("/me óáðàë óäîñòîâåðåíèå îáðàòíî â ïèäæàê.")
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Âû íå ââåëè ïàðàìåòð !", -1) end
	end)
end

function reload()
	sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Èíèöèàëèçèðîâàíà ïåðåçàãðóçêà ñêðèïòà!")
	sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Ïåðåçàãðóçêà áóäåò âûïîëíåíà íåìåäëåííî!")
	thisScript():reload()
end

function cudo(params)
	lua_thread.create(function()
		sampSendChat("/me ïðèïîäíÿâ ïðàâóþ ðóêó ââåðõ, ìåäëåííî ùåëêíóë ïàëüöàìè.")
		wait(900)
		sampSendChat("/do È òóò, íàñòèãëî íåèçâåñòíûõ ëþäåé ÷óäî òåìíîå.")
	end)
end

function rptime(params)
	lua_thread.create(function()
		sampSendChat("/me îòîãíóâ ðóêàâ íà ëåâîé ðóêå, ïîñìîòðåë íà ÷àñû ìàðêè *Rish Bish*")
		wait(200)
		sampSendChat("/time ")
		wait(650)
		sampSendChat("/do Âðåìÿ íà ÷àñàõ áûëî ïðÿì òî, ÷òî íàäî äëÿ äóøè.")
	end)
end

function hhelp(params)
	sampAddChatMessage("{4169E1}Êîìàíäû: {ffffff}cuff - ðï cuff. | frisk - ðï frisk. | shi - ðï øèïû. | findgun - ðï findgun.")
	sampAddChatMessage("{4169E1}Êîìàíäû: {ffffff}incar - ðï incar. | docs - òðåáîâàòü äîêóìåíòû. | hvat - ïî ðï ñõàòèòü çà íàðó÷íèêè.")
	sampAddChatMessage("{4169E1}Êîìàíäû: {ffffff}vignat1 - ïðîñüáà ïîêèíóòü çäàíèå. | vignat2 - çàëîìèòü ðóêó è âûâåñòè. | vignat3 - íåéòðàëèçîâàòü è âûâåñòè.")
end

function vignat1(params)
	lua_thread.create(function()
	sampSendChat("Òîâàðèùü, ïðîøó âàñ ïîêèíóòü çäàíèå ïðàâèòåëüñòâà, èëè ÿ áóäó âûíóæäåí ïðèìåíèòü ñèëó.")
	end)
end

function vignat2(params)
	lua_thread.create(function()
		sampSendChat("/me çàëîìèë ðóêó íàðóøèòåëþ.")
		wait(700)
		sampSendChat("/me âûâîäèò íàðóøèòåëÿ èç çäàíèÿ ïðàâèòåëüñòâà.")
	end)
end

function vignat3(params)
	lua_thread.create(function()
	sampSendChat("/me äîñòàë äóáèíêó.")
	wait(700)
	sampSendChat("/me íåéòðàëèçîâàë íàðóøèòåëÿ äóáèíêîé.")
	wait(700)
	sampSendChat("/do íàðóøèòåëü íåéòðàëèçîâàí.")
	wait(700)
	sampSendChat("/me ïîäíÿë íàðóøèòåëÿ.")
	wait(700)
	sampSendChat("/me âûâåë íàðóøèòåëÿ èç çäàíèÿ ïðàâèòåëüñòâà.")
	end)
end

function naborfso1(params)
	lua_thread.create(function()
		sampSendChat("Çäðàâñòâóéòå, ìåíÿ çîâóò Àëåêñàíäð Êîñêîð.")
		wait(500)
		sampSendChat("Âû ïðèøëè íà ñîáåñåäîâàíèå?")
	end)
end

function naborfso2(params)
	lua_thread.create(function()
		sampSendChat("/todo Òàê è çíàë, ïîêàæèòå âàøè äîêóìåíòû. * ïðîòÿãèâàÿ ðóêó ê ñîáåñåäíèêó.")
	end)
end

function naborfso3(params)
	lua_thread.create(function()
		sampSendChat("/todo Õîðîøî, ñêàæèòå ÷òî òàêîå ïî âàøåìó ôîðóì? * ïðîòÿãèâàÿ ðóêó ñ äîêóìåíòàìè îáðàòíî ñîáåñåäíèêó.")
	end)
end

function naborfso4(params)
	lua_thread.create(function()
		sampSendChat("Óãó... Òåïåðü ðàññêàæèòå îáÿçàíîñòè àãåíòà ÔÑÎ. ")
	end)
end

function nepodhod(params)
	lua_thread.create(function()
		sampSendChat("Èçâèíèòå, âû íàì íå ïîäõîäèòå.")
	end)
end

function molitva(params)
	lua_thread.create(function()
		sampSendChat("/me ìåäëåííî âñòàë íà êîëåíè è âîçíåñ ðóêè ââåðõ.")
		wait(350)
		sampSendChat("/do Ðóêè ñëåãêà ðàçâåäåíû ïî ñòîðîíàì.")
		wait(1000)
		sampSendChat("[Ìîëèòñÿ]: Ïóòü Áåçäíû  Îäèíà äîðîãà,")
		wait(2100)
		sampSendChat("[Ìîëèòñÿ]: Ñâÿçàëà íàñ  ëþäåé, ñ ñóäüáîé Çåìëè,")
		wait(2400)
		sampSendChat("[Ìîëèòñÿ]: Îòåö íåáåñíûé  Îäèí  Áîã íàø  Ñëàâà Ðîäó!")
		wait(2400)
		sampSendChat("[Ìîëèòñÿ]: ×åðåç Òåáÿ ê Âñåâûøíåìó ìîëüáó âîçíîñèì ìû,")
		wait(2400)
		sampSendChat("[Ìîëèòñÿ]: È ×àøó æèçíè ïîëíèì, ëþáîâüþ ïðåòâîðÿÿ â æèçíü ìå÷òó ")
		wait(2400)
		sampSendChat("[Ìîëèòñÿ]: Âåäè âïåðåä íàñ, Îäèí, äîëã ìû ñâîé èñïîëíèì!")
		wait(2400)
		sampSendChat("[Ìîëèòñÿ]: È ×àøó æèçíè, è ñâîþ ñóäüáó ïðèåìëåì âñ¸, êàê äàð áåñöåííûé,")
		wait(2300)
		sampSendChat("[Ìîëèòñÿ]: Íàïðàâü íà ïðàâóþ ñòåçþ: Îòåö Âñåâûøíèé, Âñåäåðæèòåëü, Ïåðâûé!")
		wait(2200)
		sampSendChat("/me îïóñòèë ðóêè è ïîìîë÷àâ êàêîå-òî âðåìÿ âñòàë ñ êîëåí.")
		wait(1800)
		sampSendChat("/do Â ãëàçàõ áëåñòíóëà èñêðà.")
	end)
end

function hvat(params)
	lua_thread.create(function()
	sampSendChat("/me ðåçêèì äâèæåíèåì ðóêè ñõâàòèë ÷åëîâåêà çà íàðó÷íèêè..")
	wait(700)
	sampSendChat("/me ..è ãðóáî ïîâ¸ë çà ñîáîé.")
	end)
end
