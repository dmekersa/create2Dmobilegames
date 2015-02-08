-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

physics = require("physics")
physics.setDrawMode( "hybrid" )

physics.start( )

local ballNumber = 0

function newBall()
	local ball = display.newCircle( display.contentCenterX+math.random(-10,10), 100, 20 )
	ball:setFillColor( math.random( ), math.random( ), math.random( ) )
	ball.rotation = math.random( 0,360 )
	physics.addBody( ball, "dynamic", { radius = 20, density=1.0, friction=0.3, bounce=0.5 } )
	ball:setLinearVelocity( math.random(-50,50), 0 )
	ball.myName="ball #"..ballNumber
	ballNumber = ballNumber + 1
end

local ground1 = display.newRect( display.contentCenterX, display.contentHeight, display.contentWidth*2, 80 )
ground1.rotation = -20
ground1.myName = "ground #1"
physics.addBody( ground1, "static", { density=1.0} )
local ground2 = display.newRect( display.contentCenterX, display.contentHeight, display.contentWidth*2, 80 )
ground2.rotation = 20
ground2.myName = "ground #2"
physics.addBody( ground2, "static", { density=1.0} )
ground1:setFillColor( .5, .1, .5 )
ground2:setFillColor( .5, .1, .5 )

local function onCollision( event )
    if ( event.phase == "began" ) then
        print( "began collision between: " .. event.object1.myName .. " and " .. event.object2.myName )
    elseif ( event.phase == "ended" ) then
        print( "ended collision between: " .. event.object1.myName .. " and " .. event.object2.myName )
    end
end

Runtime:addEventListener( "collision", onCollision )

timer.performWithDelay( 500, newBall, 20 )