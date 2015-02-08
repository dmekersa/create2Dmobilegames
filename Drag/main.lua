-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local myObject = display.newRect( display.contentCenterX, display.contentCenterY, 50, 50 )
myObject:setFillColor( 255 )

local myBtnLeft = display.newCircle( 60, 420, 20 )
local myBtnRight = display.newCircle( 110, 420, 20 )

function myObject:touch( event )
	if event.phase == "began" then
		display.getCurrentStage():setFocus( self )
		self.isDrag = true

		self.initX = self.x
		self.initY = self.y

	elseif self.isDrag then
		if event.phase == "moved" then
			self.x = event.x - event.xStart + self.initX
			self.y = event.y - event.yStart + self.initY
		elseif event.phase == "ended" or event.phase == "cancelled" then
			display.getCurrentStage():setFocus( nil )
			self.isDrag = false
		end
	end

	return true
end

function onLeft( event )
	print("Tap on Left")
	transition.cancel( myObject )
	transition.from( myBtnLeft,
	                {time=1000, xScale=.8, yScale=.8, transition=easing.outElastic} )
	transition.to( myObject, {time=500, x=25, transition=easing.outQuad} )
end

function onRight( event )
	print("Tap on Right")
	transition.cancel( myObject )
	transition.from( myBtnRight,
	                {time=1000, xScale=.8, yScale=.8, transition=easing.outElastic} )
	transition.to( myObject, {time=500, x=295, transition=easing.outQuad} )
end

myObject:addEventListener( "touch", myObject )
myBtnLeft:addEventListener( "tap", onLeft )
myBtnRight:addEventListener( "tap", onRight )