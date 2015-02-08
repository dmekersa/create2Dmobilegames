local composer = require( "composer" )

local scene = composer.newScene()

local menuLogo
local menuOverlay
local menuButton
local menuFish

function scene:create( event )

	local view = self.view

	-- Main background
	local background = display.newImageRect( view, "background.jpg", 320, 568 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	-- Game Logo
	menuLogo = display.newImageRect( view, "logo.png", 252, 124 )
	menuLogo.x = display.contentCenterX
	menuLogo.y = 130

	menuOverlay = display.newImageRect( view, "overlay.png", 320, 180 )
	menuOverlay.anchorY = 1
	menuOverlay.x = display.contentCenterX
	menuOverlay.y = display.actualContentHeight + display.screenOriginY

	menuButton = display.newImageRect( view, "play.png", 146, 69 )
	menuButton.x = display.contentCenterX
	menuButton.y = 390 - display.screenOriginY

	menuFish = display.newImageRect( view, "fish.png", 68, 39 )
	menuFish.x = display.contentCenterX
	menuFish.y = display.contentCenterY

	function onPlay( event )
		local function gotoGameplay( )
			local options =
			{
				effect = "fade",
				time = 300,
				params = {
					sampleParam = "I was here!"
				}
			}
			composer.gotoScene("gameplay", options)
		end
		transition.from( event.target, {time=500, xScale=.8, yScale=.8, transition=easing.outElastic, onComplete=gotoGameplay} )
	end
	menuButton:addEventListener( "tap", onPlay )

end

function scene:show( event )
	if ( event.phase == "will" ) then
		print("will")
		menuOverlay.isVisible = false
		menuButton.isVisible = false
		menuFish.x = display.actualContentWidth + menuFish.width
	elseif ( event.phase == "did" ) then
		print("did")
		menuOverlay.isVisible = true
		local function showButton()
			menuButton.isVisible = true
			menuButton.alpha = 0
			transition.fadeIn( menuButton, {time=500} )
		end
		transition.from( menuOverlay, {time=500,y=menuOverlay.y+menuOverlay.height, transition=easing.outQuad, onComplete=showButton} )
		local function moveFish(  )
			if menuFish.x < 0-menuFish.width then
				menuFish.x = display.actualContentWidth + menuFish.width
			end
			transition.to( menuFish, {time=1500, x=menuFish.x-50, transition=easing.inOutQuad, onComplete=moveFish} )
		end
		transition.to( menuFish, {time=1500, x=menuFish.x-50, transition=easing.inOutQuad, onComplete=moveFish} )
	end
end

function scene:hide( event )
	if ( event.phase == "will" ) then
		transition.cancel()
	elseif ( event.phase == "did" ) then
	end
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )

return scene