-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--[[
function getDistance(object1, object2)
	distance = math.sqrt(
	   (object2.x-object1.x)^2+
	   (object2.y-object1.y)^2)
	return distance
end

object1 = {}
object1.x = 50
object1.y = 50

object2 = {}
object2.x = 100
object2.y = 100

dist = getDistance(object1, object2)

print("The distance is", dist)
]]

myShips = {}

myShips[1] = "Alpha"
myShips[2] = "Omega"
myShips[3] = "Delta"

print("Here is a simple array",#myShips)
for i=1,#myShips do
	print(i,myShips[i])
end

table.insert( myShips, 1, "Added first!" )
table.insert( myShips, "Added last!" )

print("Now it's a list!",#myShips)
for i=1,#myShips do
	print(i,myShips[i])
end

-- remove Alpha
table.remove( myShips, 2 )

print("Alpha was destroyed",#myShips)
for i=1,#myShips do
	print(i,myShips[i])
end
