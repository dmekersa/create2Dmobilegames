OOShip = {}
local mt = {__index = OOShip}      
 
-- Note the use of '.'
function OOShip.new(pName)
	local new_instance = {}
	new_instance.name = pName
	return setmetatable(new_instance,mt)
end
 
-- Note the use of ':'
function OOShip:PrintName()
	print(self.name)
end
 
return OOShip