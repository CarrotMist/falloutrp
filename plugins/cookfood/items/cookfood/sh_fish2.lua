ITEM.name = "Fish"
ITEM.uniqueID = "food_fish2"
ITEM.model = "models/props/de_inferno/goldfish.mdl"
ITEM.hungerAmount = 15
ITEM.foodDesc = "A fish caught from some distant water source. It's a goldfish I think."
ITEM.quantity = 2
ITEM.price = 0
ITEM.width = 2
ITEM.height = 1
ITEM.isFood = true
ITEM.cookable = true
ITEM.mustCooked = true

ITEM.attribBoosts = { ["stm"] = 1 }

ITEM.iconCam = {
	pos = Vector(-3.5, 200, 0),
	ang = Angle(0, 270, 0),
	fov = 5,
}

ITEM.functions.Name = {
	tip = "Name this item",
	icon = "icon16/add.png",
	onRun = function(item)
		local client = item.player
		client:requestString("Change Name", "What do you want to name your fish? (This is final)", function(text)
			item:setData("customName", text)
		end, item.name)
		
		return false
	end,
	onCanRun = function(item)
		if (item:getData("customName") != nil) then
			return false
		else
			return true
		end
	end
}