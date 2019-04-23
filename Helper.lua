script_name("Helper")
script_description("Доработка")
script_version("1.0.0")
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
    sampAddChatMessage("{ffffff}* [Helper]: Скрипт загруженн. {ffffff}Версия скрипта: 1.0.0")
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
			sampSendChat("/me заломил руку человеку напротив.")
			wait(15)
			sampSendChat("/do Наручники на поясе.")
			wait(15)
			sampSendChat("/cuff " .. id)
		else
			sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1)
		end
	end)
end

function uncuff(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me протянул руку в карман, из которого достал ключи от наручников.")
			wait(100)
			sampSendChat("/uncuff " .. id)
			wait(100)
			sampSendChat("/me повесил наручники на пояс.")
		else
			sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1)
		end
	end)
end

function frisked(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do На поясе открыта сумка.")
			wait(800)
			sampSendChat("/me резким движением руки достал ордер и перчатки из сумки.")
			wait(800)
			sampSendChat("/me предъявил ордер на обыск, затем убрал его в сумку и надел перчатки.")
			wait(800)
			sampSendChat("/frisk " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1) end
	end)
end

function shipped(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do Лента с шипами готова.")
			wait(300)
			sampSendChat("/me протянул руку к кнопке и нажал на кнопку.")
			wait(300)
			sampSendChat("/ship " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1) end
	end)
end

function findgun(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do Открытая сумка на поясе.")
			wait(1000)
			sampSendChat("/me легким движением руки достал ордер и перчатки из сумки.")
			wait(1000)
			sampSendChat("/me предъявил ордер на обыск, затем убрал его в сумку и надел перчатки.")
			wait(1000)
			sampSendChat("/findgun " .. id)
		end
	end)
end

function carin(params)
	lua_thread.create(function()
		local a, b = params:match("(.+)%s+(.+)")
		if a and b ~= nil then
			sampSendChat("/me взял преступника за шкирку, открыл дверь машины, после чего..")
			wait(300)
			sampSendChat("/do .. бросил преступника в машину и закрыл дверь.")
			wait(300)
			sampSendChat("/incar " .. a .. " " .. b)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1) end
	end)
end

function docs(params)
	lua_thread.create(function()
		sampSendChat("Здравствуйте, вас беспокоит Начальник ФСО Александр Коскор.")
		wait(1500)
		sampSendChat("Предъявите ваши документы удостоверяющие личность...")
		wait(1400)
		sampSendChat("В случае неподчинения будут приняты меры.")
	end)
end

function knockouted(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/me с разбегу, наносит удар в область груди человека напротив.")
			wait(15)
			sampSendChat("/ko " .. id)
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1) end
	end)
end

function ud(params)
	lua_thread.create(function()
		id = tonumber(params)
		if params and id ~= nil then
			sampSendChat("/do В кармане пиджака лежит удостоверение.")
			wait(1000)
			sampSendChat("/me достал удостоверение из пиджака и показал человеку напротив ")
			wait(500)
			sampSendChat("/ud " .. id)
			wait(1000)
			sampSendChat("/me убрал удостоверение обратно в пиджак.")
		else sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Вы не ввели параметр !", -1) end
	end)
end

function reload()
	sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Инициализирована перезагрузка скрипта!")
	sampAddChatMessage("{ffffff}* [{1FAEE9}Helper{ffffff}]: Перезагрузка будет выполнена немедленно!")
	thisScript():reload()
end

function cudo(params)
	lua_thread.create(function()
		sampSendChat("/me приподняв правую руку вверх, медленно щелкнул пальцами.")
		wait(900)
		sampSendChat("/do И тут, настигло неизвестных людей чудо темное.")
	end)
end

function rptime(params)
	lua_thread.create(function()
		sampSendChat("/me отогнув рукав на левой руке, посмотрел на часы марки *Rish Bish*")
		wait(200)
		sampSendChat("/time ")
		wait(650)
		sampSendChat("/do Время на часах было прям то, что надо для души.")
	end)
end

function hhelp(params)
	sampAddChatMessage("{4169E1}Команды: {ffffff}cuff - рп cuff. | frisk - рп frisk. | shi - рп шипы. | findgun - рп findgun.")
	sampAddChatMessage("{4169E1}Команды: {ffffff}incar - рп incar. | docs - требовать документы. | hvat - по рп схатить за наручники.")
	sampAddChatMessage("{4169E1}Команды: {ffffff}vignat1 - просьба покинуть здание. | vignat2 - заломить руку и вывести. | vignat3 - нейтрализовать и вывести.")
end

function vignat1(params)
	lua_thread.create(function()
	sampSendChat("Товарищь, прошу вас покинуть здание правительства, или я буду вынужден применить силу.")
	end)
end

function vignat2(params)
	lua_thread.create(function()
		sampSendChat("/me заломил руку нарушителю.")
		wait(700)
		sampSendChat("/me выводит нарушителя из здания правительства.")
	end)
end

function vignat3(params)
	lua_thread.create(function()
	sampSendChat("/me достал дубинку.")
	wait(700)
	sampSendChat("/me нейтрализовал нарушителя дубинкой.")
	wait(700)
	sampSendChat("/do нарушитель нейтрализован.")
	wait(700)
	sampSendChat("/me поднял нарушителя.")
	wait(700)
	sampSendChat("/me вывел нарушителя из здания правительства.")
	end)
end

function naborfso1(params)
	lua_thread.create(function()
		sampSendChat("Здравствуйте, меня зовут Александр Коскор.")
		wait(500)
		sampSendChat("Вы пришли на собеседование?")
	end)
end

function naborfso2(params)
	lua_thread.create(function()
		sampSendChat("/todo Так и знал, покажите ваши документы. * протягивая руку к собеседнику.")
	end)
end

function naborfso3(params)
	lua_thread.create(function()
		sampSendChat("/todo Хорошо, скажите что такое по вашему форум? * протягивая руку с документами обратно собеседнику.")
	end)
end

function naborfso4(params)
	lua_thread.create(function()
		sampSendChat("Угу... Теперь расскажите обязаности агента ФСО. ")
	end)
end

function nepodhod(params)
	lua_thread.create(function()
		sampSendChat("Извините, вы нам не подходите.")
	end)
end

function molitva(params)
	lua_thread.create(function()
		sampSendChat("/me медленно встал на колени и вознес руки вверх.")
		wait(350)
		sampSendChat("/do Руки слегка разведены по сторонам.")
		wait(1000)
		sampSendChat("[Молится]: Путь Бездны – Одина дорога,")
		wait(2100)
		sampSendChat("[Молится]: Связала нас – людей, с судьбой Земли,")
		wait(2400)
		sampSendChat("[Молится]: Отец небесный – Один – Бог наш – Слава Роду!")
		wait(2400)
		sampSendChat("[Молится]: Через Тебя к Всевышнему мольбу возносим мы,")
		wait(2400)
		sampSendChat("[Молится]: И Чашу жизни полним, любовью претворяя в жизнь мечту …")
		wait(2400)
		sampSendChat("[Молится]: Веди вперед нас, Один, долг мы свой исполним!")
		wait(2400)
		sampSendChat("[Молится]: И Чашу жизни, и свою судьбу приемлем всё, как дар бесценный,")
		wait(2300)
		sampSendChat("[Молится]: Направь на правую стезю: Отец Всевышний, Вседержитель, Первый!")
		wait(2200)
		sampSendChat("/me опустил руки и помолчав какое-то время встал с колен.")
		wait(1800)
		sampSendChat("/do В глазах блеснула искра.")
	end)
end

function hvat(params)
	lua_thread.create(function()
	sampSendChat("/me резким движением руки схватил человека за наручники..")
	wait(700)
	sampSendChat("/me ..и грубо повёл за собой.")
	end)
end
