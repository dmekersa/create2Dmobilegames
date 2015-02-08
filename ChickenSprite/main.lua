-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local options = 
{     
width = 174,     
height = 160,     
numFrames = 4 
}
local sheet_handmade = graphics.newImageSheet( "chicken_handmade.png", options )

local sequenceData1 =
{
    name="fly",
    start=1,
    count=4,
    time=500,
    loopCount = 0,
    loopDirection = "bounce"
}

local chicken1 = display.newSprite( sheet_handmade, sequenceData1 )
chicken1.x = display.contentCenterX
chicken1.y = display.contentCenterY * 0.3
chicken1:play()

local sheetInfo = require("chicken_packer")
local sheet_packer = graphics.newImageSheet( "chicken_packer.png", sheetInfo:getSheet() )

local sequenceData2 =
{
    name="fly",
    frames={sheetInfo:getFrameIndex("blitzsubspeed1"),
            sheetInfo:getFrameIndex("blitzsubspeed2"),
            sheetInfo:getFrameIndex("blitzsubspeed3"),
            sheetInfo:getFrameIndex("blitzsubspeed4")},
    time=500,
    loopCount = 0,
    loopDirection = "bounce"
}

local chicken2 = display.newSprite( sheet_packer , sequenceData2 )

chicken2.x = display.contentCenterX
chicken2.y = display.contentCenterY * 1.3
chicken2:play()
