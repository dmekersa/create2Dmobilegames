-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- create object
local myObject = display.newRect( display.contentCenterX, display.contentCenterY, 50, 50 )
myObject:setFillColor( 255 )

--function myObject:touch( event )
--	print(event.phase)
--
--	return true
--end

--myObject:addEventListener( "touch", myObject )

function onTouch( event )
	print(event.phase)

	return true
end

myObject:addEventListener( "touch", onTouch )
