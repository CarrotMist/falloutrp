nut.chat.register("den", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "den")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(speaker, "den")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Denon Speak, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Denon Speak.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/den", "/denonspeak"}
})

nut.chat.register("denw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "den")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "den")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Denon Speak, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Denon Speak.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/denw", "/denonw"}
})

nut.chat.register("deny", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "dem")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "den")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Denon Speak, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Denon Speak.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/deny", "/denony"}
})

nut.chat.register("jpn", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "jap")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(speaker, "jap")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Japanese, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Japanese.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/jap", "/japanese"}
})

nut.chat.register("jpnw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "jap")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "jap")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Japanese, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Japanese.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/japw", "/japanesew"}
})

nut.chat.register("jpny", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "jap")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "jap")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Japanese, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Japanese.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/japy", "/japanesey"}
})

nut.chat.register("ita", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ita")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ita")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Italian. "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Italian.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/ita", "/italian"}
})

nut.chat.register("itaw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ita")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ita")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Italian. "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Italian.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/itaw", "/italianw"}
})

nut.chat.register("itay", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ita")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ita")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Italian. "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Italian.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/itay", "/italiany"}
})

nut.chat.register("spa", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "spa")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "spa")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Spanish "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Spanish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/spa", "/spanish"}
})

nut.chat.register("spaw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "spa")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "spa")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Spanish, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Spanish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/spaw", "/spanishw"}
})

nut.chat.register("spay", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "spa")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "spa")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Spanish, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Spanish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/spay", "/spanishy"}
})

nut.chat.register("chi", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "chi")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "chi")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Chinese "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Chinese.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/chi", "/chinese"}
})

nut.chat.register("chiw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "chi")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "chi")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Chinese, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Chinese.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/chiw", "/chinesew"}
})

nut.chat.register("chiy", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "chi")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "chi")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Chinese, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Chinese.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/chiy", "/chinesey"}
})

nut.chat.register("ger", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ger")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ger")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in German "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in German.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/ger", "/german"}
})

nut.chat.register("gerw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ger")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ger")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in German, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in German.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/gerw", "/germanw"}
})

nut.chat.register("gery", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ger")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ger")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in German, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in German.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/gery", "/germany"}
})

nut.chat.register("rus", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "rus")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "rus")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Russian "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Russian.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/rus", "/russian"}
})

nut.chat.register("rusw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "rus")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "rus")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Russian, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Russian.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/rusw", "/russianw"}
})

nut.chat.register("rusy", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "rus")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "rus")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Russian, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Russian.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/rusy", "/russiany"}
})

nut.chat.register("ara", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ara")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ara")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Arabic "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Arabic.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/ara", "/arabic"}
})

nut.chat.register("araw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ara")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ara")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Arabic, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Arabic.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/araw", "/arabicw"}
})

nut.chat.register("aray", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "ara")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "ara")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Arabic, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Arabic.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/aray", "/arabicy"}
})

nut.chat.register("fre", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "fre")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "fre")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in French "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in French.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/fre", "/french"}
})

nut.chat.register("frew", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "fre")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "fre")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in French, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in French.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/frew", "/frenchw"}
})

nut.chat.register("frey", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "fre")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "fre")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in French, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in French.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/frey", "/frenchy"}
})

nut.chat.register("afr", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "afr")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "afr")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Afrikaans "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Afrikaans.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/afr", "/afrikaans"}
})

nut.chat.register("afrw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "afr")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "afr")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Afrikaans, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Afrikaans.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/afrw", "/afrikaansw"}
})

nut.chat.register("afry", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "afr")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "afr")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Afrikaans, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Afrikaans.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/afry", "/afrikaansy"}
})

nut.chat.register("kor", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "kor")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "kor")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Korean "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Korean.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/kor", "/korean"}
})

nut.chat.register("korw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "kor")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "kor")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Korean, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Korean.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/korw", "/koreanw"}
})

nut.chat.register("kory", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "kor")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "kor")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Korean, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Korean.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/kory", "/koreany"}
})

nut.chat.register("fin", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "fin")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "fin")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Finnish "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Finnish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/fin", "/finnish"}
})

nut.chat.register("finw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "fin")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "fin")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Finnish, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Finnish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/finw", "/finnishw"}
})

nut.chat.register("finy", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "fin")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "fin")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Finnish, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Finnish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/finy", "/finnishy"}
})

nut.chat.register("pol", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "pol")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "pol")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Polish "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Polish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/pol", "/polish"}
})

nut.chat.register("polw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "pol")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "pol")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Polish, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Polish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/polw", "/polishw"}
})

nut.chat.register("poly", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "pol")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "pol")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Polish, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Polish.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)	
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/poly", "/polishy"}
})

nut.chat.register("pla", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "pla")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "pla")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' writes in the plastic written language, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." writes something in the plastic written language.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/pla", "/plastic"}
})

nut.chat.register("signp", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "pla")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "pla")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' signs in plastic, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." is using Plastic sign language.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/signp"}
})

nut.chat.register("sign", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "sign_a")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "sign_a")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' signs in english, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." is using American sign language.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/sign"}
})

nut.chat.register("khm", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "khm")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(speaker, "khm")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' says in Khmer, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." says something in Khmer.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280),
	onGetColor = function(speaker, text)
		return Color(102, 153, 204)
	end,
	prefix = {"/khm", "/khmer"}
})

nut.chat.register("khmw", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "khm")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "khm")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' whispers in Khmer, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." whispers something in Khmer.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * .25,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r - 35, color.g - 35, color.b - 35)
	end,
	prefix = {"/khmw", "/khmerw"}
})

nut.chat.register("khmy", {
    onCanSay =  function(speaker, text)
		return hasTrait(speaker, "khm")
	end,
	onChatAdd = function(speaker, text)
		if (hasTrait(LocalPlayer(), "khm")) then
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName()..' yells in Khmer, "'..text..'"')
		else
			chat.AddText(nut.config.get("chatColor"),speaker:getChar():getName().." yells something in Khmer.")
		end
	end,
	onCanHear = nut.config.get("chatRange", 280) * 2,
	onGetColor = function(speaker, text)
	local color = nut.chat.classes.ic.onGetColor(speaker, text)
		return Color(color.r + 35, color.g + 35, color.b + 35)
	end,
	prefix = {"/khmy", "/khmery"}
})