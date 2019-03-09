ITEM.name = "Cactus Soda"
ITEM.uniqueID = "food_cactus_soda"
ITEM.model = "models/props_junk/popcan01a.mdl"
ITEM.material = "models/xqm/woodplanktexture"
ITEM.foodDesc = "An aluminum can full of cactus soda. It's very spicey and burns your throat when you drink it."
ITEM.quantity = 2
ITEM.price = 0
ITEM.isFood = true
ITEM.cookable = false
ITEM.mustCooked = false
ITEM.container = "j_empty_soda_can"
ITEM.sound = "npc/barnacle/barnacle_gulp1.wav"

ITEM.attribBoosts = { 
	["end"] = -4, 
	["fortitude"] = 5,
	["stm"] = -3,
}

ITEM.iconCam = {
	pos = Vector(-200, 0, 0),
	ang = Angle(0, -0, 0),
	fov = 2.5,
}