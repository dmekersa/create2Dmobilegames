--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f7d1d7007b7802f7006ab5b725c167b8:80ac306c7910ffcff4e0135f3b07762a:508315e819c8c5d7d547404630422e16$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- blitzsubspeed1
            x=530,
            y=2,
            width=174,
            height=160,

        },
        {
            -- blitzsubspeed2
            x=354,
            y=2,
            width=174,
            height=160,

        },
        {
            -- blitzsubspeed3
            x=178,
            y=2,
            width=174,
            height=160,

        },
        {
            -- blitzsubspeed4
            x=2,
            y=2,
            width=174,
            height=160,

        },
    },
    
    sheetContentWidth = 706,
    sheetContentHeight = 164
}

SheetInfo.frameIndex =
{

    ["blitzsubspeed1"] = 1,
    ["blitzsubspeed2"] = 2,
    ["blitzsubspeed3"] = 3,
    ["blitzsubspeed4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
