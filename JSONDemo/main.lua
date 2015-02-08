-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- JSON API
local json = require "json"

-- gamedata Example 
gamedata = {}
gamedata.player = {}
gamedata.player.live = 3
gamedata.player.shield = 100

local encoded

encoded = json.encode( gamedata )

print(encoded)

-- Example to write data to a JSON file

function saveToFile(filename, path, contents)
	local filepath = system.pathForFile( filename, path )
	local file = io.open( filepath, "w" )
	file:write(contents)
	io.close( file )
	file = nil
end
 
saveToFile("gamedata.json", system.DocumentsDirectory, encoded)

-- example to generate a JSON template
ships = {}
ships[1] = {}
ships[1].name = "Alpha Centauri"
ships[1].shield = 100

ships[2] = {}
ships[2].name = "Cygnus"
ships[2].shield = 150

ships[3] = {}
ships[3].name = "Taurus"
ships[3].shield = 200

encoded = json.encode( ships )

print(encoded)

-- example to read the ships table from a JSON

-- Json code for external variable loading 
local function jsonFile(filename,path) 
   local path = system.pathForFile(filename, path ) 
   local contents 
   local file = io.open( path, "r" ) 
   if file then 
      contents = file:read("*a") 
      io.close(file) 
   end 
   return contents 
end 

shipsData = {}
jsonContent = jsonFile("ships.json",system.ResourceDirectory)
shipsData = json.decode( jsonContent )

print("I got ",#shipsData, "ships from the JSON file")

for i in pairs(shipsData) do
	print(shipsData[i].name,shipsData[i].shield)
end

