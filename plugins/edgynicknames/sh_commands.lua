local PLUGIN = PLUGIN

--Credits to whoever wrote the original string replacement code
nut.command.add("setnick", {
	syntax = "[string newnick]",
	onRun = function(client, arguments)
		if SERVER and IsValid(client) then
			local newNick = arguments[1]
			if newNick then
				local oldName = client:Name()
				local newName
				if not string.find(client:Name(), "'") then
					--newName = string.gsub(oldName, " ", " '"..newNick.."' ")
					newName = oldName .. " '"..newNick.."' "
				else
					newName = string.gsub(oldName, "'.*'", "'"..newNick.."'")
				end
				--client:getChar():setVar("charname", newName)
				nut.command.run(client, "charsetname", {client:Name(), newName})
				client:notify("Your darker and edgier name is "..newName..".")
			else
				client:notify("You must specify a nickname.")
			end
		end
	end
})

nut.command.add("removenick", {
	syntax = "[none]",
	onRun = function(client, arguments)
		if SERVER and IsValid(client) then
			local newName = string.gsub(client:Name(), "'.*' ", "")
			--client:getChar():setVar("charname", newName)
			nut.command.run(client, "charsetname", {client:Name(), newName})
			client:notify("Your lighter and tamer name is "..newName..".")
		end
	end
})

nut.command.add("flaggiveall", {
	adminOnly = true,
	syntax = "<string name> [string flags]",
	onRun = function(client, arguments)
		local target = nut.command.findPlayer(client, arguments[1])

		if (IsValid(target) and target:getChar()) then
			local flags = "QWERTYUIOPASDFGHJKLZXCVBNM1234qwertyuiopasdfghjklzxcvbnm"

			target:getChar():giveFlags(flags)

			nut.util.notifyLocalized("flagGive", nil, client:Name(), target:Name(), flags)
		end
	end
})