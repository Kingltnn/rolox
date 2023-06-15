task.wait(100)
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Library = require(game:GetService("ReplicatedStorage").Library)
local Fire, Invoke = Network.Fire, Network.Invoke

function TeleportArea(World, Area)
	Library.WorldCmds.Load(World)
	if Area ~= "" or Area ~= nil then
		local areaTeleport = Library.WorldCmds.GetMap().Teleports:FindFirstChild(Area)
		if areaTeleport then
			local Humanoid = game.Players.LocalPlayer.Character.Humanoid
			local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
			game.Players.LocalPlayer.Character:PivotTo(areaTeleport.CFrame + areaTeleport.CFrame.UpVector * (Humanoid.HipHeight + HumanoidRootPart.Size.Y / 2))
		end
	end
end

TeleportArea("Diamond Mine", "Mystic Mine")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kingltnn/rolox/main/rolox/hopnew.lua"))()
