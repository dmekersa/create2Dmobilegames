display.setStatusBar( display.HiddenStatusBar )         -- hide status bar

local myImage1 = display.newImage( "chicken.png" )
myImage1.x = display.contentCenterX - 100
myImage1.y = display.contentCenterY

local myImage2 = display.newImageRect( "chicken.png", 66, 77 )
myImage2.x = display.contentCenterX + 100
myImage2.y = display.contentCenterY