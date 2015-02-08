-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
display.setStatusBar( display.HiddenStatusBar ) 

background = display.newImageRect( "ultimatebg.jpg", 900, 1425 )
background.x = display.contentCenterX
background.y = display.contentCenterY

redSquare = display.newRect( 0, 0, 50, 50 )
redSquare:setFillColor( 1,0,0 )
redSquare.strokeWidth = 1
redSquare:setStrokeColor( 0 )
redSquare.anchorX = 0
redSquare.x = 10
redSquare.y = display.contentCenterY

blueSquare = display.newRect( 0, 0, 50, 50 )
blueSquare:setFillColor( 0,0,1 )
blueSquare.strokeWidth = 1
blueSquare:setStrokeColor( 0 )
blueSquare.anchorX = 1
blueSquare.x = display.contentWidth - 10
blueSquare.y = display.contentCenterY

yellowSquare = display.newRect( 0, 0, 50, 50 )
yellowSquare:setFillColor( 1,1,0 )
yellowSquare.strokeWidth = 1
yellowSquare:setStrokeColor( 0 )
yellowSquare.anchorY = 0
yellowSquare.x = display.contentCenterX
yellowSquare.y = 10

greenSquare = display.newRect( 0, 0, 50, 50 )
greenSquare:setFillColor( 0,1,0 )
greenSquare.strokeWidth = 1
greenSquare:setStrokeColor( 0 )
greenSquare.anchorY = 1
greenSquare.x = display.contentCenterX
greenSquare.y = display.contentHeight - 10

print( "display.screenOriginX", display.screenOriginX )
print( "display.screenOriginY", display.screenOriginY )
print( "display.actualContentWidth", display.actualContentWidth )
print( "display.actualContentHeight", display.actualContentHeight )
print( "display.contentWidth", display.contentWidth )
print( "display.contentHeight", display.contentHeight )