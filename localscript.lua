-- Clicks Counter.
-- Presented to you, by 1559EnderAlt or ender11.

local tool = script.Parent
local clicks = 0

local canClick = false

function reset() -- idk lifesaver ig
	clicks = 0
end

tool.Equipped:Connect(function()
	canClick = true
end)

tool.Unequipped:Connect(function()
	canClick = false
	if clicks>0 and clicks~=0 then reset() end
end)

tool.Activated:Connect(function(add)
	add = 1
	if clicks==0 and canClick==true then
		canClick = false
		clicks+=add
		print(clicks)
	end
end)
