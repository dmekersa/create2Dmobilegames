-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

ship = require( "OOShip" )

local ship1 = ship.new("alpha")
local ship2 = ship.new("beta")
 
ship1:PrintName()
ship2:PrintName()

local x = 100
Energy = {}
Energy.level = 100
function Energy.Decrease(p)
	Energy.level = Energy.level - p
	local x=20
	print("x in the function",x)
end
print("x",x)

Energy.Decrease(10)
print(Energy.level)
print("x after function call",x)

hero = require( "Hero" )

local myHero = hero.new(10,10)

myHero:MoveTo(50,50)

print("myHero coordinates are",myHero.x,myHero.y)

if x <= 100 then
	local message = "Warning!"
	print(message)
end
print(message)
