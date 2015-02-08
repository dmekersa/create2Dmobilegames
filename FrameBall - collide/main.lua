-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

physics = require("physics")
--physics.setDrawMode( "hybrid" )

physics.start( )
physics.setGravity(0,0)

local ball1 = display.newCircle( display.contentCenterX, 100, 20 )
ball1.myName = "ball #1"
ball1:setFillColor( math.random(), math.random(), math.random() )
physics.addBody( ball1, "dynamic", { isSensor=true, radius = 20 } )
ball1.xMove = math.random(1,5)
ball1.yMove = math.random(1,5)

local ball2 = display.newCircle( display.contentCenterX, 300, 20 )
ball2.myName = "ball #2"
ball2:setFillColor( math.random(), math.random(), math.random() )
physics.addBody( ball2, "dynamic", { isSensor=true, radius = 20 } )
ball2.xMove = math.random(1,5)
ball2.yMove = math.random(1,5)

local wall = display.newRect( display.contentCenterX, display.contentCenterY, 100, 50 )
wall.myName = "the wall..."
wall:setFillColor( math.random(), math.random(), math.random() )
physics.addBody( wall, "dynamic", { isSensor=true } )

local tPrevious = system.getTimer()
local myListener = function( event )
    local tDelta = (event.time - tPrevious) / 10
    tPrevious = event.time

    -- Keep the corrent ball positions safe
    local previousXball1 = ball1.x
    local previousYball1 = ball1.y
    local previousXball2 = ball2.x
    local previousYball2 = ball2.y

    ball1.x = ball1.x + (ball1.xMove * tDelta)
    ball1.y = ball1.y + (ball1.yMove * tDelta)
    ball2.x = ball2.x + (ball2.xMove * tDelta)
    ball2.y = ball2.y + (ball2.yMove * tDelta)

    -- if a ball reachs an edge, 
    -- we reverse the motion and restore the ball to its previous
    -- position on its axis

    if ball1.x <= 0 or ball1.x >= display.contentWidth then
        ball1.xMove = 0 - ball1.xMove
        ball1.x = previousXball1
    end
    if ball1.y <= 0 or ball1.y >= display.contentHeight then
        ball1.yMove = 0 - ball1.yMove
        ball1.y = previousYball1
    end

    if ball2.x <= 0 or ball2.x >= display.contentWidth then
        ball2.xMove = 0 - ball2.xMove
        ball2.x = previousXball2
    end
    if ball2.y <= 0 or ball2.y >= display.contentHeight then
        ball2.yMove = 0 - ball2.yMove
        ball2.y = previousYball2
    end
end


local function onCollision( event )

    if ( event.phase == "began" ) then

        print("Collision occurs")
        print("Object 1=",event.object1.myName)
    	print("Object 2=",event.object2.myName)

        event.object1:setFillColor( math.random(), math.random(), math.random() )
        event.object2:setFillColor( math.random(), math.random(), math.random() )

    end
end

Runtime:addEventListener( "collision", onCollision )
Runtime:addEventListener( "enterFrame", myListener )