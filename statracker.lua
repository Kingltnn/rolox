 return
wait()
until game:IsLoaded() and
    game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and
    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MainLeft") and
    game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Currency.Diamonds.Diamonds.Visible == true and
    not game:GetService("Players").LocalPlayer:FindFirstChild("GUIFX Holder")
local plr = game.Players.LocalPlayer
local data = {
    Shard = 0,
    Gem = 0,
    GemPerMin = 0,
    HugePoseidonCorgi = 0,
    UnlockedZones = 0,
    Bucket = 0,
    Rank = 1,
    Rebirth = 0,
    Rod = {},
    Shovel = {},
    RngCoins = 0,
    Dice = {},
    Huge = {},
    Titanic = {},
    Rolls = 0,
    Coins = 0
}
local save = require(game:GetService("ReplicatedStorage").Library.Client.Save)
spawn(function()
    while wait() do
        for i, v in pairs(save.Get().Inventory.Currency) do
            if v.id == "RngCoins" then
                data.RngCoins = v._am
            end
            if v.id == "Coins" then
                data.Coins = v._am
            end
        end
        if game:GetService("Players").LocalPlayer.leaderstats:FindFirstChild("\240\159\142\178 Rolls") then
            data.Rolls = game:GetService("Players").LocalPlayer.leaderstats["\240\159\142\178 Rolls"].Value
        end
    end
end)
local lastValues = {}

local function hasValueChanged(id, value)
    if not lastValues[id] then
        return true
    end
    return lastValues[id] ~= value
end
spawn(function()
    while wait() do
        for i, v in pairs(save.Get().Inventory.Misc) do
            if v.id == "Bucket" then
                data.Bucket = v._am
            end
            if v.id == "Magic Shard" then
                data.Shard = v._am
            end
            if string.find(v.id, "Dice") then
                if not data.Dice[v.id] then
                    data.Dice[v.id] = {}
                end
                if hasValueChanged(v.id, v._am) then
                    table.insert(data.Dice[v.id], v._am)
                    lastValues[v.id] = v._am
                end
            end
            if string.find(v.id, "Rod") and not table.find(data.Rod, v.id) then
                table.insert(data.Rod, v.id)
            end
            if string.find(v.id, "Shovel") and not table.find(data.Shovel, v.id) then
                table.insert(data.Shovel, v.id)
            end
        end
    end
end)
function checknote(table, value)
    for _, v in ipairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

spawn(function()
    while wait() do
        for i, v in pairs(save.Get().Inventory.Pet) do
            if string.find(v.id, "Huge") then
                if not checknote(data.Huge, v.id) then
                    table.insert(data.Huge, v.id)
                end
            end
            if string.find(v.id, "Titanic") then
                if not checknote(data.Titanic, v.id) then
                    table.insert(data.Titanic, v.id)
                end
            end
            if v.id == "Huge Poseidon Corgi" then
                data.HugePoseidonCorgi = data.HugePoseidonCorgi + 1
            end
        end
    end
end)
--[[
Debug Dice ( For Yummy )
for i, v in next, data.Dice do
    for i1, v1 in next, v do
        print(i, v1)
    end
end
]]
spawn(function()
    while wait() do
        for i, v in next, save.Get() do
            if i == "Rank" then
                data.Rank = v
            end
            if i == "Rebirths" then
                data.Rebirth = v
            end
        end
        data.Gem = game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\142 Diamonds"].Value
    end
end)
function getzone()
    local total = 0
    for i, v in next, save.Get().UnlockedZones do
        total = total + 1
    end
    return total
end

spawn(function()
    while wait() do
        data.UnlockedZones = getzone()
    end
end)
local old = game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\142 Diamonds"].Value
data.GemPerMin = math.floor((game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\142 Diamonds"].Value - old))
old = game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\142 Diamonds"].Value
spawn(function()
    while wait(60) do
        data.GemPerMin = math.floor((game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\142 Diamonds"].Value - old))
        old = game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\142 Diamonds"].Value
    end
end)




