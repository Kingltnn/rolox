local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Fire, Invoke = Network.Fire, Network.Invoke

local old
old = hookfunction(getupvalue(Fire, 1), function(...)
   return true
end)
function FrTeleportToWorld(world, area)
        local Library = require(game:GetService("ReplicatedStorage").Library)
        Library.WorldCmds.Load(world)
        wait(0.25)
        local areaTeleport = Library.WorldCmds.GetMap().Teleports:FindFirstChild(area)
        Library.Signal.Fire("Teleporting")
        task.wait(0.25)
        local Character = game.Players.LocalPlayer.Character
        local Humanoid = Character.Humanoid
        local HumanoidRootPart = Character.HumanoidRootPart
        Character:PivotTo(areaTeleport.CFrame + areaTeleport.CFrame.UpVector * (Humanoid.HipHeight + HumanoidRootPart.Size.Y / 2))
        Library.Network.Fire("Performed Teleport", area)
        task.wait(0.25)
end
function FrTeleportToArea(world, area)
    local areaTeleport = Library.WorldCmds.GetMap().Teleports:FindFirstChild(area)
        local Character = game.Players.LocalPlayer.Character
        local Humanoid = Character.Humanoid
        local HumanoidRootPart = Character.HumanoidRootPart
        Character:PivotTo(areaTeleport.CFrame + areaTeleport.CFrame.UpVector * (Humanoid.HipHeight + HumanoidRootPart.Size.Y / 2))
        Library.Network.Fire("Performed Teleport", area)
end
FrTeleportToWorld("Diamond Mine", "Mystic Mine")
