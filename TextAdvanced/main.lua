-- The options table will be used later to store text attributes
local options

-- Create a background rectangle for the title
local titleBackground = display.newRect( 
	display.contentCenterX, 
	50, 
	display.actualContentWidth, 
	50 )
titleBackground:setFillColor( .2, .2, .4 )

-- Create the label for the title at the same position
options = 
{
    text = "My nice title",
    x = display.contentCenterX,
    y = titleBackground.y,
    font = native.systemFont,   
    fontSize = 25
}
local mytitle = display.newText( options )

-- An underlined title
options = 
{
    text = "My underlined title",
    x = display.contentCenterX,
    y = 150,
    font = native.systemFont,   
    fontSize = 25
}
local myTitle2 = display.newText( options )

-- Calculate the position and length of the underline
local title2X1 = myTitle2.x - myTitle2.width/2
local title2X2 =  myTitle2.x + myTitle2.width/2
local title2Y = myTitle2.y + myTitle2.height / 2
local title2Line = display.newLine(	title2X1, title2Y, title2X2, title2Y )
title2Line:setStrokeColor( 1, .3, .3 )

-- A squared title
options = 
{
    text = "I'm in a frame!",
    x = display.contentCenterX,
    y = 250,
    font = native.systemFont,   
    fontSize = 25
}
local myTitle3 = display.newText( options )

-- The square
local padding = 5
local title3Square = display.newRect(
	myTitle3.x, myTitle3.y,
	myTitle3.width + padding, myTitle3.height + padding )
-- To be a square, the rect needs a stroke and a transparent fill
title3Square.strokeWidth = 1
title3Square:setFillColor( 0, 0 )
title3Square:setStrokeColor( .6, .6, .8 )

local backButton = widget.newButton
{
    left = 0,
    top = display.contentHeight-200,
    width = display.contentWidth,
    height = 200,
    label = "Back...",
    onEvent = handleButtonEvent
}
