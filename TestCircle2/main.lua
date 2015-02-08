-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local head = display.newCircle( 160, 100, 50 )
head:setFillColor(233/255,205/255,176/255)

local chest = display.newRect(160, 225, 50, 150)
chest:setFillColor(50/255, 200/255, 50/255)

local arm1 = display.newLine( 135, 160, 90, 290 )
local arm2 = display.newLine( 185, 160, 230, 290 )

-- arm1.strokeWidth = 10
-- arm2.strokeWidth = 10

-- local leg1 = display.newLine( 140, 290, 140, 450 )
-- local leg2 = display.newLine( 180, 290, 180, 450 )

-- leg1.strokeWidth = 10
-- leg2.strokeWidth = 10

-- local stickman = display.newGroup()

-- stickman:insert( head )
-- stickman:insert( chest )
-- stickman:insert( arm1 )
-- stickman:insert( arm2 )
-- stickman:insert( leg1 )
-- stickman:insert( leg2 )

-- print(stickman.x,stickman.y)
-- stickman.anchorChildren = true
-- local halfW, halfH = display.contentCenterX, display.contentCenterY
-- stickman:translate( halfW, halfH )  
-- print(stickman.x,stickman.y)
-- transition.to(stickman, {time = 5000, rotation=360})