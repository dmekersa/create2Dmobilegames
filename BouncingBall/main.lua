-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

physics = require("physics")
physics.start()

local ground = display.newRect(display.contentCenterX, 470, display.contentWidth, 20)
physics.addBody(ground, "static")

local ball = display.newCircle( display.contentCenterX, 0, 20 )
physics.addBody( ball, "dynamic", {density=1, bounce=0.4, radius=20} )