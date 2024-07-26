local Library = require(game:GetService("ReplicatedStorage").Library)
local LibrarySave = Library.Save

local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIStroke"] = Instance.new("UIStroke");
	["_Frame1"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_ImageLabel"] = Instance.new("ImageLabel");
}

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame"].BorderSizePixel = 2
Converted["_Frame"].Position = UDim2.new(0.0959244519, 0, 0.317505717, 0)
Converted["_Frame"].Size = UDim2.new(0, 241, 0, 37)
Converted["_Frame"].Parent = Converted["_ScreenGui"]

Converted["_UICorner"].CornerRadius = UDim.new(0, 20)
Converted["_UICorner"].Parent = Converted["_Frame"]

Converted["_TextLabel"].Font = Enum.Font.SourceSansBold
Converted["_TextLabel"].Text = "0"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(111.00000858306885, 229.00001674890518, 255)
Converted["_TextLabel"].TextScaled = true
Converted["_TextLabel"].TextSize = 39
Converted["_TextLabel"].TextStrokeTransparency = 0
Converted["_TextLabel"].TextWrapped = true
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderMode = Enum.BorderMode.Middle
Converted["_TextLabel"].BorderSizePixel = 9
Converted["_TextLabel"].Position = UDim2.new(0.00596883474, 0, 0, 0)
Converted["_TextLabel"].Size = UDim2.new(0, 239, 0, 37)
Converted["_TextLabel"].Parent = Converted["_Frame"]





local GemCount = LibrarySave.Get().Diamonds
local LastGems = 0
local function CalculateGemDifference(gems)
    if GainsOnly then
        if gems < LastGems then
            gems = LastGems
        end
    end
    local formatted = tostring(gems)
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
            break
        end
    end
    LastGems = gems
    return formatted
end

while task.wait(0.01) do
    Converted["_TextLabel"].Text = CalculateGemDifference(LibrarySave.Get().Diamonds-GemCount)
end
