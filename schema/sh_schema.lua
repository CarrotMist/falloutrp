--------------
--[[ INFO ]]--
--------------
SCHEMA.name = "Fallout 2 Roleplay"
SCHEMA.author = "SuperMicronde, vin, Trip, Otunga, CarrotMist, Freelok"
SCHEMA.desc = "Fallout 2 Setting, North California"

-----------------------
--[[ GLOBAL TABLES ]]--
-----------------------
FO_AMB = FO_AMB or {} -- Ambience

------------------
--[[ INCLUDES ]]--
------------------
nut.util.includeDir("libs", nil, true)
nut.util.includeDir("meta", nil, true)
nut.util.includeDir("modules", nil, true)
nut.util.includeDir("hooks", nil, true)
nut.util.includeDir("derma", nil, true)

-----------------------
--[[ CONFIGURATION ]]--
-----------------------
nut.currency.set("","Cap", "Caps")

SCHEMA:DisablePlugin("doors")
SCHEMA:DisablePlugin("crosshair")
SCHEMA:DisablePlugin("storage")

SCHEMA:OverrideConfig("color", forp_amber)
SCHEMA:OverrideConfig("font", "Monofonto")

---------------
--[[ FILES ]]--
---------------
if ( SERVER ) then
resource.AddWorkshop( "891790188" ) -- Fallout 3 Custom Backpacks
resource.AddWorkshop( "203873185" ) -- Fallout Collection: Aid Props
resource.AddWorkshop( "169557505" ) --fallout hud
end

---------------
--[[ FLAGS ]]--
---------------

nut.flag.add("F", "Access to food/drink items.")
nut.flag.add("G", "Access to general items.")
nut.flag.add("f", "Access to armor items.")
nut.flag.add("E", "Effects.")

nut.flag.add("S", "Acess to Special Weapons.")
nut.flag.add("A", "Ammunition.")
nut.flag.add("a", "Assault Weapons")
nut.flag.add("b", "Bladed Weapons")
nut.flag.add("B", "Blunt Weapons")
nut.flag.add("L", "Energy/Lazor Weapons")
nut.flag.add("X", "Explosives")
nut.flag.add("H", "Heavy Weapons")