 print("-- PET SIM X BLUNDER --")
repeat
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
local Http = game:GetService("HttpService")
local url = "https://discord.com/api/webhooks/1288429702293491775/ZbqmI34oqbEz1B8eUd22h8aORla__pAGrp4bedofLleUB-4vtmeQks-F_V6rlpm64iY9"
local function SenWH(data)
   local abc = {
            {
                ["color"] = 1,
                ["fields"] = {                
                            ["name"] = " __Gem__",
                            ["value"] = ("• **Total Gems:** ``%s``")..data,
                            ["inline"] = false
                     
                            },
                ["author"] = {
                    ["name"] = "Mystic Farmer • Stats"
                             },
               ["timestamp"] = DateTime.now():ToIsoDate()
            }
        }
   local senall = Http:JSONEncode{
                    ["content"] = "hi",
                    ["embeds"] = abc
                }
   Http:PostAsync(url, senall)
end
while wait(5) do
    writefile(plr.Name .. "pet99.json", game:GetService('HttpService'):JSONEncode(data))
end
print(data)
game.Players.PlayerAdded:spawn(function(p)
 wait(5)
  print("send")
  SenWH(p,"Nam")
 end)
