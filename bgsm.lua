local RS = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local LocalData = require(RS.Client.Framework.Services.LocalData)
local GumData = require(RS.Shared.Data.Gum)
local FlavorsData = require(RS.Shared.Data.Flavors)
local PlaytimeData = require(RS.Shared.Data.Playtime)
local EggsData = require(RS.Shared.Data.Eggs)

local TimeModule = require(RS.Shared.Framework.Utilities.Math.Time)

local MainEvent = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Event")
local MainFunction = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Framework"):WaitForChild("Network"):WaitForChild("Remote"):WaitForChild("Function")
local PickupRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Pickups"):WaitForChild("CollectPickup")


local function GetSorted(data)
local sorted = {}
local list = {}
for name, data in pairs(data) do
local c = data.Cost
if typeof(c) == "table" and c.Type == "Currency" and c.Currency == "Coins" then
table.insert(list, {Name = name, Data = data})
end
end
table.sort(list, function(a, b)
return a.Data.Cost.Amount < b.Data.Cost.Amount
end)
for _, item in ipairs(list) do
sorted[item.Name] = item.Data
end
return sorted
end

function GetCoins()
    return LocalData.Get().Coins
end

function BuyBestGum()
    local OwnedGums = LocalData.Get().Gum
    local AvailGums = GetSorted(GumData)
    local CurrentCoins = GetCoins()

    for i, v in pairs(AvailGums) do
        if not OwnedGums[i] and CurrentCoins > v.Cost.Amount then
            print("Buy:", i, v.Cost.Amount)
            MainEvent:FireServer("GumShopPurchase", i)
            return i
        end
    end
end

function BuyBestFlavor()
    local OwnedFlavors = LocalData.Get().Flavors
    local AvailFlavors = GetSorted(FlavorsData)
    local CurrentCoins = GetCoins()

    for i, v in pairs(AvailFlavors) do
        if not OwnedFlavors[i] and CurrentCoins > v.Cost.Amount then
            print("Buy:", i, v.Cost.Amount)
            MainEvent:FireServer("GumShopPurchase", i)
            return i
        end
    end
end

function ClaimPlaytimeRewards()
    local data = LocalData.Get()
    local TimeSinceStart = TimeModule.now() - data.PlaytimeRewards.Start
    for i, v in pairs(PlaytimeData.Gifts) do
        if not data.PlaytimeRewards.Claimed[tostring(i)] and math.max(0, v.Time - TimeSinceStart) == 0 then
            MainFunction:InvokeServer("ClaimPlaytime", i)  
            task.wait(0.5)
        end
    end
end

function UnlockAllWorlds()
    for i, v in pairs(workspace.Worlds["The Overworld"].Islands:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Island.WorldPivot
        task.wait(1)
    end
end
