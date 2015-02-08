Hero = {}
local mt = {__index = Hero}      
 
function Hero.new(px, py)
	local new_instance = {}
	new_instance.x = px
	new_instance.y = py
	return setmetatable(new_instance,mt)
end
 
function Hero:MoveTo(px,py)
	self.x = px
	self.y = py
end
 
return Hero