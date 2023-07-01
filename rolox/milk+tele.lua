loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fc715fb43902af268c335a5c7269be5e.lua"))()
wait(5)
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game.Players
local LocalPlayer = game.Players.LocalPlayer
local Positions = {
    ["Mystic Mine"] = {
        Diamonds = CFrame.new(9021, -30, 2506),
        GiantChest = CFrame.new(9085, -30, 2200),
    },
    ["Cyber Cavern"] = {
        Diamonds = CFrame.new(8784, -30, 3036),
        GiantChest = CFrame.new(8483, -30, 2997),
    },
    ["Paradise Cave"] = {
        Diamonds = CFrame.new(9249, -30, 3348),
    },
}


function getRoot(char)
    if not char then
        wait(1)
        return getRoot(game.Players.LocalPlayer.Character)
    end
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
    return rootPart
end

local pchar = game.Players.LocalPlayer.Character
local Float = Instance.new('Part')
Float.Name = "floatName"
Float.Parent = pchar
Float.Transparency = 1
Float.Size = Vector3.new(2,0.2,1.5)
Float.Anchored = true
local FloatValue = -3.1
Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,-3.1,0)
local function FloatPadLoop()
    if pchar:FindFirstChild("floatName") and getRoot(pchar) then
        Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,-3.1,0)
    else
        FloatingFunc:Disconnect()
    end
end


     local BP = Instance.new("Part", workspace)
    BP.Anchored = true
    BP.Name = math.random(10000,99999)
    BP.CFrame = CFrame.new(8784, -35, 3036)
    BP.Size = Vector3.new(9999,1,9999)
    BP.Transparency = 0.5


    function TPP(cf)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
        Fire("Performed Teleport")
    end
TPP(Positions["Mystic Mine"].Diamonds)


    

   
    
end
