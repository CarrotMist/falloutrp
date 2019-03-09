ITEM.name = "Fish"
ITEM.uniqueID = "food_fish"
ITEM.model = "models/props/cs_militia/fishriver01.mdl"
ITEM.hungerAmount = 30
ITEM.foodDesc = "A fish that was caught from some water source."
ITEM.quantity = 3
ITEM.price = 0
ITEM.width = 2
ITEM.height = 1
ITEM.isFood = true
ITEM.cookable = true
ITEM.mustCooked = true

ITEM.attribBoosts = { ["medical"] = 4 }

ITEM.iconCam = {
	pos = Vector(-1.5, 200, 0.5),
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