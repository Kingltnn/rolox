-- made by jedpep
-- discord.gg/BNxJpgymkE
repeat wait() until game:IsLoaded()

if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...) return(...) end;
    LPH_NO_VIRTUALIZE = function(...) return(...) end;
end

if not game.PlaceId == 6284583030 or not game.PlaceId == 10321372166 then wait(9e9) end

makefolder("JXMysticFarmer")
if not isfile("JXMysticFarmer/Fruits.txt") then writefile("JXMysticFarmer/Fruits.txt", "false") end

local settings = getgenv().JXMysticFarmerConfig
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game.Players
local LocalPlayer = game.Players.LocalPlayer
local types = {"Low", "Normal"}

setfpscap(settings.Preformace.FPS)

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

MINIMUM_PLAYERS = 1
TeleportService = game:GetService("TeleportService")
fileName = string.format("JXMysticFarmer/%s_servers.json", tostring(PlaceId))
ServerHopData = { 
    CheckedServers = {},
    LastTimeHop = nil,
    CreatedAt = os.time()
}
if isfile(fileName) then
    local fileContent = readfile(fileName)
    ServerHopData = game:GetService("HttpService"):JSONDecode(fileContent)
end
ServerTypes = { ["Normal"] = "desc", ["Low"] = "asc" }

function Jump(serverType)
    serverType = serverType or "Normal"
    if not ServerTypes[serverType] then serverType = "Normal" end
    local function GetServerList(cursor)
        cursor = cursor and "&cursor=" .. cursor or ""
        local API_URL = string.format('https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=100', tostring(game.PlaceId), ServerTypes[serverType])
        return game:GetService("HttpService"):JSONDecode(game:HttpGet(API_URL .. cursor))
    end
    local currentPageCursor = nil
    while true do 
        local serverList = GetServerList(currentPageCursor)
        currentPageCursor = serverList.nextPageCursor
        for _, server in ipairs(serverList.data) do
            if server.playing and tonumber(server.playing) >= MINIMUM_PLAYERS and tonumber(server.playing) < game.Players.MaxPlayers and not table.find(ServerHopData.CheckedServers, tostring(server.id)) then     
                ServerHopData.LastTimeHop = os.time()
                table.insert(ServerHopData.CheckedServers, server.id)
                writefile(fileName, game:GetService("HttpService"):JSONEncode(ServerHopData))
                TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, game.Players.LocalPlayer) 
                wait(0.5)
            end
        end
        if not currentPageCursor then break else wait(0.25) end
    end  
end

local LoadingTime = os.time()

local Library = require(ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
while not Library.Loaded do
    RunService.Heartbeat:Wait()
end

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

local LoadingTime = math.floor(os.time() - LoadingTime)
Library = require(ReplicatedStorage.Library)
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Fire, Invoke = Network.Fire, Network.Invoke
Network = nil
local HttpService = game:GetService("HttpService")
local InputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')


local banSuccess, banError = pcall(function() 
    local Blunder = require(game:GetService("ReplicatedStorage"):WaitForChild("X", 10):WaitForChild("Blunder", 10):WaitForChild("BlunderList", 10))
    if not Blunder or not Blunder.getAndClear then LocalPlayer:Kick("Error while bypassing the anti-cheat! (Didn't find blunder)") end
    
    local OldGet = Blunder.getAndClear
    setreadonly(Blunder, false)
    local function OutputData(Message)
    print("-- PET SIM X BLUNDER --")
    print(Message .. "\n")
    end
    
    Blunder.getAndClear = function(...)
    local Packet = ...
        for i,v in next, Packet.list do
        if v.message ~= "PING" then
            OutputData(v.message)
            table.remove(Packet.list, i)
        end
    end
    return OldGet(Packet)
    end
    
    setreadonly(Blunder, true)
end)

if not banSuccess then
    LocalPlayer:Kick("Error while bypassing the anti-cheat! (".. banError ..")")
    return
end

local Library2 = require(game:GetService("ReplicatedStorage").Library)
assert(Library, "Oopps! Library has not been loaded. Maybe try re-joining?") 
while not Library.Loaded do task.wait() end
Library2 = nil


Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
Humanoid = Character:WaitForChild("Humanoid")
HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- thanks rafa
local bypassSuccess, bypassError
bypassSuccess, bypassError = pcall(function()
    if not Library.Network then 
        LocalPlayer:Kick("Network not found, can't bypass!")
    end
    
    if not Library.Network.Invoke or not Library.Network.Fire then
        LocalPlayer:Kick("Network Invoke/Fire was not found! Failed to bypass!")
    end
    
    hookfunction(debug.getupvalue(Library.Network.Invoke, 1), function(...) return true end)
    
    local originalPlay = Library.Audio.Play
    Library.Audio.Play = function(...) 
        if checkcaller() then
            local audioId, parent, pitch, volume, maxDistance, group, looped, timePosition = unpack({ ... })
            if type(audioId) == "table" then
                audioId = audioId[Random.new():NextInteger(1, #audioId)]
            end
            if not parent then
                warn("Parent cannot be nil", debug.traceback())
                return nil
            end
            if audioId == 0 then return nil end
            
            if type(audioId) == "number" or not string.find(audioId, "rbxassetid://", 1, true) then
                audioId = "rbxassetid://" .. audioId
            end
            if pitch and type(pitch) == "table" then
                pitch = Random.new():NextNumber(unpack(pitch))
            end
            if volume and type(volume) == "table" then
                volume = Random.new():NextNumber(unpack(volume))
            end
            if group then
                local soundGroup = game.SoundService:FindFirstChild(group) or nil
            else
                soundGroup = nil
            end
            if timePosition == nil then
                timePosition = 0
            else
                timePosition = timePosition
            end
            local isGargabe = false
            if not pcall(function() local _ = parent.Parent end) then
                local newParent = parent
                pcall(function()
                    newParent = CFrame.new(newParent)
                end)
                parent = Instance.new("Part")
                parent.Anchored = true
                parent.CanCollide = false
                parent.CFrame = newParent
                parent.Size = Vector3.new()
                parent.Transparency = 1
                parent.Parent = workspace:WaitForChild("__DEBRIS")
                isGargabe = true
            end
            local sound = Instance.new("Sound")
            sound.SoundId = audioId
            sound.Name = "sound-" .. audioId
            sound.Pitch = pitch and 1
            sound.Volume = volume and 0.5
            sound.SoundGroup = soundGroup
            sound.Looped = looped and false
            sound.MaxDistance = maxDistance and 100
            sound.TimePosition = timePosition
            sound.RollOffMode = Enum.RollOffMode.Linear
            sound.Parent = parent
            if not require(game:GetService("ReplicatedStorage"):WaitForChild("Library"):WaitForChild("Client")).Settings.SoundsEnabled then
                sound:SetAttribute("CachedVolume", sound.Volume)
                sound.Volume = 0
            end
            sound:Play()
            getfenv(originalPlay).AddToGarbageCollection(sound, isGargabe)
            return sound
        end
        
        return originalPlay(...)
    end

end)

if not bypassSuccess then
    print(bypassError)
    LocalPlayer:Kick("Error while bypassing network, try again or wait for an update!")
    return
end

wait(2)

FloatingFunc = game:GetService("RunService").Heartbeat:Connect(FloatPadLoop)

LPH_NO_VIRTUALIZE(function()
    if (not getgenv().RemoteHooking) then
        local Network2 = require(game:GetService("ReplicatedStorage").Library.Client.Network)
        local functions = Network2.Fire, Network2.Invoke
        local old 
        old = hookfunction(getupvalue(functions, 1) , function(...) return true end)
        getgenv().RemoteHooking = true
        Network2 = nil
    end
end)()

function add_suffix(inte)
    local gems = inte
    local gems_formatted

    if gems >= 1000000000000 then
        gems_formatted = string.format("%.2ft", gems / 1000000000000)
    elseif gems >= 1000000000 then
        gems_formatted = string.format("%.2fb", gems / 1000000000)
    elseif gems >= 1000000 then
        gems_formatted = string.format("%.2fm", gems / 1000000)
    elseif gems >= 1000 then
        gems_formatted = string.format("%.2fk", gems / 1000)
    else
        gems_formatted = tostring(gems)
    end

    return gems_formatted
end

function GetMulti(B)
    if not B then return 1 end
    local totalMultiplier = 0
    if B.l then
        for _,v in pairs(B.l) do
            pcall(function()
                if v.m and tonumber(v.m) then
                    totalMultiplier = totalMultiplier + v.m
                end
            end)
        end
    end
    if totalMultiplier == 0 then
        return 1
    else
        return totalMultiplier
    end
end

local Character = Players.LocalPlayer.Character


local Coins = Invoke("Get Coins")
local TargetCoins = {}
local GiantMulti = ""

function GetCoinsInArea(Area)
    local C = {}
    local GC = Invoke("Get Coins")
    for i,v in pairs(GC) do
        if v.a == Area and not string.find(v.n, "Giant") then
            C[#C+1] = i
        end
    end
    GC = nil
    return C
end

function GetGiantChestInArea(Area)
    local C = nil
    local GC = Invoke("Get Coins")
    for i,v in pairs(GC) do
        if v.a == Area and string.find(v.n, "Giant") then
            C = {i, v}
        end
    end
    GC = nil
    return C
end

function PickupOrbs()
    while true do
        local orbs = {}
        for i,v in pairs(workspace["__THINGS"].Orbs:GetChildren()) do
            table.insert(orbs, v.Name)
        end
        Fire("Claim Orbs", orbs)
        orbs = {}
        wait(0.1)
        for i,v in pairs(workspace["__THINGS"].Lootbags:GetChildren()) do
            Fire("Collect Lootbag", v.Name, v.Position)
        end
    end
end

function getFruit(fruit)
    return math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory[fruit]))
end

local PickupOrbsLoop = coroutine.create(PickupOrbs)
coroutine.resume(PickupOrbsLoop)

function SendWebhook(GemsEarned, GiantChestsBroken, CoinsBroken)
    local webhook_user = ""
    if settings.Webhook.ShowUsername then
        webhook_user = " • "..Players.LocalPlayer.Name
    end
    local wtime = settings.Webhook.Delay

    local embed = {
        {
            ["color"] = 1,
            ["fields"] = {
                    {
                        ["name"] = "<:Diamonds:1092474189862158398> __Rewards__",
                        ["value"] = ("• **Gems Earned:** ``%s``\n• **Total Gems:** ``%s``\n• **Time Spent:** ``%s``"):format(add_suffix(GemsEarned), add_suffix(Library.Save.Get().Diamonds), string.format("%02i hours, %02i mintues and %02i seconds.", wtime/60^2, wtime/60%60, wtime%60)),
                        ["inline"] = false
                    },
                    {
                        ["name"] = ":gift: __Chests__",
                        ["value"] = ("• **Giant chests broken:** ``%s``\n• **Small chests broken:** ``%s``"):format(#GiantChestsBroken, #CoinsBroken),
                        ["inline"] = false
                    },
            },
            ["author"] = {
                ["name"] = "Mystic Farmer • Stats"
            },
            ["footer"] = {
                ["text"] = "JX Utilities • Mystic Farmer"..webhook_user,
                ["icon_url"] = "https://media.discordapp.net/attachments/1108132899431137300/1109902689996910622/gpfp.png?width=675&height=675"
            },
            ["timestamp"] = DateTime.now():ToIsoDate()
        }
    }

    if settings.Webhook.ShowFruits then
        table.insert(
            embed[1]["fields"],
            {
                ["name"] = ":tangerine: __Fruits__",
                ["value"] = ("• **Oranges:** ``%s``\n• **Pineapple:** ``%s``\n• **Bananas:** ``%s``\n• **Apples:** ``%s``\n• **Golden Apples:** ``%s``"):format(
                    math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Orange"])),
                    math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Pineapple"])),
                    math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Banana"])),
                    math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Apple"])),
                    math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Pear"]))
                ),
                ["inline"] = false
            }
        )
    end

    local AttemptWebhook, WebhookError = pcall(function()
        (syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request) {
            Url = settings.Webhook.GemUrl,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode{
                ["content"] = "",
                ["embeds"] = embed
            }
        }
    end)
    if not AttemptWebhook then print(WebhookError) end
end

getgenv([[|||||||||||||||||||||||||||||||||||MAIN SCRIPT||||||||||||||||||||||||||||||||]])

if (math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory.Orange)) <= settings.Fruits.StartFarmAt) or (readfile("JXMysticFarmer/Fruits.txt") == "true") then
    writefile("JXMysticFarmer/Fruits.txt", "true")

    if math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory.Orange)) >= settings.Fruits.Max then
        writefile("JXMysticFarmer/Fruits.txt", "false")
        Jump(types[math.random(1,2)])
        wait(100)
    end

    local FarmingTime = os.time()
    wait(10)

    local Worlds = settings.Fruits.Worlds
    function GetFruits()
        local Coins = Invoke("Get Coins")
        local Things = settings.Fruits.FruitsToFarm
        local Fruit = {}
        for i,v in pairs(Coins) do
            local isFruit = false
            for _, name in pairs(Things) do
                if v.n == name then
                    table.insert(Fruit, {i, v})
                end
            end
        end
        return Fruit
    end

    function TPToArea(area)
        local areaTeleport = Library.WorldCmds.GetMap().Teleports:FindFirstChild(area)
        local Character = game.Players.LocalPlayer.Character
        local Humanoid = Character.Humanoid
        local HumanoidRootPart = Character.HumanoidRootPart
        Character:PivotTo(areaTeleport.CFrame + areaTeleport.CFrame.UpVector * (Humanoid.HipHeight + HumanoidRootPart.Size.Y / 2))
        Library.Network.Fire("Performed Teleport", area)
    end

    for i,v in pairs(Worlds) do
        if tostring(Library.WorldCmds.Get()) ~= tostring(v) then
            Library.WorldCmds.Load(tostring(v))
        end
        wait(0.5)
        repeat
            local Fruits = GetFruits()
            local Pets = Library.PetCmds.GetEquipped()
            for _, pet in pairs(Pets) do
                local SelectedFruit = Fruits[1]
                if SelectedFruit then
                    TPToArea(SelectedFruit[2].a)
                    task.wait(0.25)
                    task.spawn(function()
                        Invoke("Join Coin", SelectedFruit[1], {pet.uid})
                        Fire("Farm Coin", SelectedFruit[1], pet.uid)
                    end)
                    task.wait(0.1)
                    table.remove(Fruits, 1)
                end
            end
        until #GetFruits() < 1
    end

    FarmingTime = math.floor(os.time() - FarmingTime)

    if settings.Webhook and settings.Webhook.EnableFruitWebhook and settings.Webhook.FruitUrl and settings.Webhook.FruitUrl ~= "" then
        local webhook_user = "REDACTED"
        local webhook_multi = ""
        if settings.Webhook.ShowUsername then
            webhook_user = " • "..Players.LocalPlayer.Name
        end

        local embed = {
            {
                ["color"] = 1,
                ["fields"] = {
                        {
                            ["name"] = ":hourglass: __Time__",
                            ["value"] = ("• **Time Taken:** ``%s``"):format(string.format("%02i hours, %02i mintues and %02i seconds.", wtime/60^2, wtime/60%60, wtime%60)),
                            ["inline"] = false
                        },
                        {
                            ["name"] = ":tangerine: __Fruits__",
                            ["value"] = ("• **Oranges:** ``%s``\n• **Pineapple:** ``%s``\n• **Bananas:** ``%s``\n• **Apples:** ``%s``\n• **Golden Apples:** ``%s``"):format(
                                math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Orange"])),
                                math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Pineapple"])),
                                math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Banana"])),
                                math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Apple"])),
                                math.ceil(Library.FruitCmds.Get(game.Players.LocalPlayer, Library.FruitCmds.Directory["Pear"]))
                            ),
                            ["inline"] = false
                        }
                },
                ["author"] = {
                    ["name"] = "Mystic Farmer • Stats"
                },
                ["footer"] = {
                    ["text"] = "JX Utilities • Mystic Farmer"..webhook_user,
                    ["icon_url"] = "https://media.discordapp.net/attachments/1108132899431137300/1109902689996910622/gpfp.png?width=675&height=675"
                },
                ["timestamp"] = DateTime.now():ToIsoDate()
            }
        }

        local AttemptWebhook, WebhookError = pcall(function()
            (syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request) {
                Url = settings.Webhook.FruitUrl,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game:GetService("HttpService"):JSONEncode{
                    ["content"] = "",
                    ["embeds"] = embed
                }
            }
        end)
        if not AttemptWebhook then print(WebhookError) end
    end
    
    Jump("Low")
else
    if Library.WorldCmds.Get() ~= "Diamond Mine" then
        if Library.WorldCmds.Get() ~= "Spawn" then
            Library.WorldCmds.Load("Spawn")
            wait(5)
        end
        if workspace.__MAP.Interactive["Diamond Mine Collapsed Sign"].Main.Transparency ~= 1 then
            repeat
                wait()
            until workspace.__MAP.Interactive["Diamond Mine Collapsed Sign"].Main.Transparency == 1
        end
        wait(5)
        Library.WorldCmds.Load("Diamond Mine")
        print(Library.WorldCmds.HasLoaded())
    end

    local COffset = 0
    if not settings.HideUnderMap then
        COffset = 14
    end

    local FarmingTime = os.time()
    local GemsEarned = Library.Save.Get().Diamonds
    local CoinsBroken = {}
    local GiantChestsBroken = {}

    local Pets = Library.PetCmds.GetEquipped()
    local PetUIDs = {} do
        for _, pet in pairs(Pets) do
            table.insert(PetUIDs, pet.uid)
        end
    end

    function WebhookStats()
        local gemsrn = Library.Save.Get().Diamonds
        while wait(settings.Webhook.Delay) do
            SendWebhook(Library.Save.Get().Diamonds-gemsrn, GiantChestsBroken, CoinsBroken)
            gemsrn = Library.Save.Get().Diamonds
            CoinsBroken = {}
            GiantChestsBroken = {}
        end
    end

    local BP = Instance.new("Part", workspace)
    BP.Anchored = true
    BP.Name = math.random(10000,99999)
    BP.CFrame = CFrame.new(8784, -35, 3036)
    BP.Size = Vector3.new(9999,1,9999)
    BP.Transparency = 0.5

    local WebhookStatsLoop = coroutine.create(WebhookStats)
    coroutine.resume(WebhookStatsLoop)

    function TPP(cf)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
        Fire("Performed Teleport")
    end

    while true do
        local ActiveBoosts = Library.ServerBoosts.GetActiveBoosts()
        if settings.AutoServerTripleDamage and not ActiveBoosts["Triple Damage"] then
            Fire("Activate Server Boost", "Triple Damage")
        end
        if settings.Areas["Mystic Mine"].GiantChest then
            local GiantChest = GetGiantChestInArea("Mystic Mine")
            if GiantChest then
                TPP(Positions["Mystic Mine"].GiantChest)
                table.insert(GiantChestsBroken, GiantChest[1])

                repeat
                    local JC = Invoke("Join Coin", GiantChest[1], PetUIDs)
                    for i, _ in pairs(JC) do
                        Fire("Farm Coin", GiantChest[1], i)
                    end
                    JC = nil
                    wait(0.1)
                until not GetGiantChestInArea("Mystic Mine")
            end
        end if settings.Areas["Mystic Mine"].Diamonds then
            TPP(Positions["Mystic Mine"].Diamonds)
            if settings.MineMode == "Multi" then
                local TargetCoins = GetCoinsInArea("Mystic Mine")
                for _, pet in pairs(Pets) do
                    local SelectedCoin = TargetCoins[1]
                    if not SelectedCoin then continue end
                    if not table.find(CoinsBroken, SelectedCoin) then
                        table.insert(CoinsBroken, SelectedCoin)
                    end
                    task.spawn(function()
                        Invoke("Join Coin", SelectedCoin, {pet.uid})
                        Fire("Farm Coin", SelectedCoin, pet.uid)
                    end)
                    table.remove(TargetCoins,1)
                    task.wait(0.15)
                end
            elseif settings.MineMode == "All" then
                local TargetCoins = GetCoinsInArea("Mystic Mine")
                for _,v in pairs(TargetCoins) do
                    if not table.find(CoinsBroken, v) then
                        table.insert(CoinsBroken, v)
                    end
                    task.spawn(function()
                        local JC = Invoke("Join Coin", v, PetUIDs)
                        for i, _ in pairs(JC) do
                            Fire("Farm Coin", v, i)
                        end
                    end)
                    task.wait(0.3)
                end
            else
                game.Players.LocalPlayer:Kick("Invalid mining mode (JXMysticFarmer)")
            end
        end if settings.Areas["Cyber Cavern"].GiantChest then
            local GiantChest = GetGiantChestInArea("Cyber Cavern")
            if GiantChest then
                TPP(Positions["Cyber Cavern"].GiantChest)
                table.insert(GiantChestsBroken, GiantChest[1])

                repeat
                    local JC = Invoke("Join Coin", GiantChest[1], PetUIDs)
                    for i, _ in pairs(JC) do
                        Fire("Farm Coin", GiantChest[1], i)
                    end
                    JC = nil
                    wait(0.1)
                until not GetGiantChestInArea("Cyber Cavern")
            end
        end if settings.Areas["Cyber Cavern"].Diamonds then
            TPP(Positions["Cyber Cavern"].Diamonds)
            if settings.MineMode == "Multi" then
                local TargetCoins = GetCoinsInArea("Cyber Cavern")
                for _, pet in pairs(Pets) do
                    local SelectedCoin = TargetCoins[1]
                    if not SelectedCoin then continue end
                    if not table.find(CoinsBroken, SelectedCoin) then
                        table.insert(CoinsBroken, SelectedCoin)
                    end
                    task.spawn(function()
                        Invoke("Join Coin", SelectedCoin, {pet.uid})
                        Fire("Farm Coin", SelectedCoin, pet.uid)
                    end)
                    table.remove(TargetCoins,1)
                    task.wait(0.15)
                end
            elseif settings.MineMode == "All" then
                local TargetCoins = GetCoinsInArea("Cyber Cavern")
                for _,v in pairs(TargetCoins) do
                    if not table.find(CoinsBroken, v) then
                        table.insert(CoinsBroken, v)
                    end
                    task.spawn(function()
                        local JC = Invoke("Join Coin", v, PetUIDs)
                        for i, _ in pairs(JC) do
                            Fire("Farm Coin", v, i)
                        end
                    end)
                    task.wait(0.3)
                end
            else
                game.Players.LocalPlayer:Kick("Invalid mining mode (JXMysticFarmer)")
            end
        end if settings.Areas["Paradise Cave"].Diamonds then
            TPP(Positions["Paradise Cave"].Diamonds)
            if settings.MineMode == "Multi" then
                local TargetCoins = GetCoinsInArea("Paradise Cave")
                for _, pet in pairs(Pets) do
                    local SelectedCoin = TargetCoins[1]
                    if not SelectedCoin then continue end
                    if not table.find(CoinsBroken, SelectedCoin) then
                        table.insert(CoinsBroken, SelectedCoin)
                    end
                    task.spawn(function()
                        Invoke("Join Coin", SelectedCoin, {pet.uid})
                        Fire("Farm Coin", SelectedCoin, pet.uid)
                    end)
                    table.remove(TargetCoins,1)
                    task.wait(0.15)
                end
            elseif settings.MineMode == "All" then
                local TargetCoins = GetCoinsInArea("Paradise Cave")
                for _,v in pairs(TargetCoins) do
                    if not table.find(CoinsBroken, v) then
                        table.insert(CoinsBroken, v)
                    end
                    task.spawn(function()
                        local JC = Invoke("Join Coin", v, PetUIDs)
                        for i, _ in pairs(JC) do
                            Fire("Farm Coin", v, i)
                        end
                    end)
                    task.wait(0.3)
                end
            else
                game.Players.LocalPlayer:Kick("Invalid mining mode (JXMysticFarmer)")
            end
        end
        task.wait(1)
        if (getFruit"Orange" <= settings.Fruits.StartFarmAt) or (readfile("JXMysticFarmer/Fruits.txt") == "true") then break end
    end





    print("Done :)")

    FarmingTime = math.floor(os.time() - FarmingTime)
    GemsEarned = Library.Save.Get().Diamonds - GemsEarned

    Jump(types[math.random(1,2)])
end
