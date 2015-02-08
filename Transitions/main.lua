-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- local ball = display.newCircle( 20, 20, 10 ) 

-- transition.from( ball, { x=300, y=400, time=4000 } )

--transition.moveBy( ball, { x=50, y=50, time=4000 } )

--local box = display.newRect( 160, 200, 50, 50 )

--transition.to(box, { xScale = 0.5, time=1000 } )

--transition.from(box, { alpha = 0, rotation = 180, time=2000 } )

--local ball = display.newCircle( 100, 160, 10 ) 

--transition.to( ball, { x = 250, time=1000, transition = easing.outBounce } )

ball = display.newCircle( 160, 100, 10 ) 

function ballDown()
	transition.to( ball, { y = 200, time=1000, transition = easing.inQuad, onComplete = ballUp } )
end

function ballUp(ball)
	transition.to( ball, { y = 100, time=1000, transition = easing.outQuad, onComplete = ballDown } )
end

ballDown()

box = display.newRect( 160, 20, 50, 50 )

boxText = display.newText( "I'm done!", 160, 440 )

function boxDone()
	transition.to( boxText, { alpha = 1, time = 500 } )
end

boxText.alpha = 0

transition.to( box,
	{ y = 400, time = 2000, transition = easing.outExpo,
		onComplete = function()
			transition.to( boxText, { alpha = 1, time = 500 } )
		end
	} )
