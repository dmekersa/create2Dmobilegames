-- Hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- Display a background
local myBG = display.newImage( "bg.jpg" )
myBG.x = display.contentCenterX
myBG.y = display.contentCenterY

-- Display a simple text
local myTitle = display.newText( "Hello I'm the chicken!", display.contentCenterX, 50, native.systemFont, 16 )

-- Display an image
local myImage = display.newImage( "chicken.png" )
myImage.x = display.contentCenterX
myImage.y = display.contentCenterY

