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

local myShip = display.newRect( display.contentCenterX, 350, 30, 20 )
myShip:setFillColor( 255 )

local alienColumn
local alienRow
local spacing = display.contentWidth / 5
local xColumn
for alienRow=1,3 do
	xColumn = spacing/2
	for alienColumn=1,5 do
		local alien = display.newRect( xColumn, alienRow*30, 30, 20 )
		physics.addBody( alien, "dynamic", { isSensor=true } )
		alien.myName = "alien"
		xColumn = xColumn + spacing
	end
end

local myBtnLeft = display.newCircle( 60, 420, 20 )
local myBtnRight = display.newCircle( 110, 420, 20 )
local myBtnFire = display.newCircle( 160, 420, 20 )

function onLeft( event )
	print("Tap on Left")
	if myShip.x > 0 then
		myShip.x = myShip.x - 5
	end
end

function onRight( event )
	print("Tap on Right")
	if myShip.x < display.contentWidth then
		myShip.x = myShip.x + 5
	end
end

function bulletComplete(bullet)
	print("Bullet out of screen")
	bullet:removeSelf( )
end

function onFire( event )
	print("Fire!")
	local newBullet = display.newCircle( myShip.x, myShip.y, 5 )
	physics.addBody( newBullet, "dynamic", { isSensor=true, radius = 5 } )
	newBullet.myName = "bullet"
	transition.to( newBullet, {time=3000,y=-50,onComplete=function() bulletComplete(newBullet) end} )
end

local function onCollision( event )

    if ( event.phase == "began" ) then

        print("Collision occurs")
        local alienHit = nil
        local bulletHit = nil
        if event.object1.myName == "alien" then
        	alienHit = event.object1
        elseif event.object2.myName == "alien" then
        	alienHit = event.object2
        end
        if event.object1.myName == "bullet" then
        	bulletHit = event.object1
        elseif event.object2.myName == "bullet" then
        	bulletHit = event.object2
        end
        if alienHit ~= nil and bulletHit ~= nil then
        	print("Alien destroyed!")
        	alienHit:removeSelf( )
        	transition.cancel( bulletHit )
        	bulletHit:removeSelf( )
        end
    end
end

Runtime:addEventListener( "collision", onCollision )

myBtnLeft:addEventListener( "tap", onLeft )
myBtnRight:addEventListener( "tap", onRight )
myBtnFire:addEventListener( "tap", onFire )
