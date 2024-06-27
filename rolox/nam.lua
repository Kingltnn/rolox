
local RE = function(RemoteName)
    if Network:FindFirstChild(RemoteName) then
        return Network[RemoteName]
    else
        error("Failed to load remote " .. RemoteName .. " Please Contact Deku with this error message")
    end
end

local RF = function(RemoteName)
    if Network:FindFirstChild(RemoteName) then
        return Network[RemoteName]
    else
        error("Failed to load Remotfunction " .. RemoteName .. " Please Contact Deku with this error")
    end
end

local GetPresentTable = function(Pre)
    if Pre then
        for i,v in next, getupvalue(GetActive, 1) do
            if v.Model == Pre then
                return v
            end
        end
    end
end

local CurrentActive = function()
    return Active:GetChildren()[1]
end

local GetMap = function()
    for i,v in next, Workspace:GetChildren() do
        if v.Name:find("Map") and v:IsA("Folder") then
            return v.Name
        end
    end
end
local getShiny = function(Shin)
    if Shin then
        for i,v in next, getupvalue(RequestRelics,1) do
            if v.Model == Shin then
                return v
            end
        end
    end
end

local GetFruits = function()
    error("Disabled")
end


local OpenAllGifts = function()
    for _,v in next, Library.Items.All.Globals.All() do
        if Gifts:FindFirstChild(v._data.id) then
            RF("GiftBag_Open"):InvokeServer(v._data.id)
        end
    end
end

local GetFlags = function()
	local LMAO = Client.Save.GetSaves()[Player].Inventory.Misc
	for i,v in next, LMAO do
		if table.find(Flags, v.id) then
			RF("Flags: Consume"):InvokeServer(WantedFlag, i)
            break
		end
	end
end

local ClaimRanks = function()
    for _,v in Player.PlayerGui.Rank.Frame.Rewards.Items.Unlocks:GetChildren() do
        if v.Name == "ClaimSlot" then
            RE("Ranks_ClaimReward"):FireServer(tonumber(v.Title.Text))
        end
    end
end
--------------- Fishing
local Activated = function()
    if Method == "Fishing" and not Active:FindFirstChild("Fishing") then
        VG.Teleport(Things.Instances.Fishing.Teleports.Enter.Position)
        wait(5)
    elseif Method == "AdvancedFishing" and not Active:FindFirstChild("AdvancedFishing") then
        VG.Teleport(Things.Instances.AdvancedFishing.Teleports.Enter.Position)
        wait(5)
        VG.GetHumanoid():MoveTo(1448, 67, -4445)
    end
    if Method == "AdvancedFishing" then
        if require(ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") < 30 then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer(CurrentActive().Name, "RequestCast",Vector3.new(1466.473388671875, 61.62495040893555, -4454.935546875))
        elseif require(ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") >= 30 and CurrentActive().Interactable:FindFirstChild("DeepPool") then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("AdvancedFishing","RequestCast", CurrentActive().Interactable.DeepPool.Position)
        else
            RF("Instancing_InvokeCustomFromClient"):InvokeServer(CurrentActive().Name, "RequestCast",Vector3.new(1466.473388671875, 61.62495040893555, -4454.935546875))
        end
        RE("Instancing_FireCustomFromClient"):FireServer("AdvancedFishing","RequestReel")
        RF("Instancing_InvokeCustomFromClient"):InvokeServer("AdvancedFishing","Clicked")
    elseif Method == "Fishing" then
        if require(game.ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") < 30 then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","RequestCast",Vector3.new(1139, 75, -3445))
        elseif require(ReplicatedStorage.Library.Client.MasteryCmds).GetLevel("Fishing") >= 30 and CurrentActive().Interactable:FindFirstChild("DeepPool") then
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","RequestCast", CurrentActive().Interactable.DeepPool.Position)
        else
            RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","RequestCast",Vector3.new(1139, 75, -3445))
        end
        RE("Instancing_FireCustomFromClient"):FireServer("Fishing","RequestReel")
        RF("Instancing_InvokeCustomFromClient"):InvokeServer("Fishing","Clicked")
    end
end

----- Collecting Stuff
local Venders = function()
    local OldPos = Player.Character:GetModelCFrame()
    for i,v in next, VendingMachines do
        local Real = VG.FFD(Workspace[GetMap()], v)
        if Real and Real:FindFirstChild("VendingMachine") and not Real.VendingMachine.Screen.SurfaceGui.SoldOut.Visible then
            VG.Teleport(Real:GetModelCFrame().Position)
            repeat wait() RE("VendingMachines_Purchase"):InvokeServer(v, 1) until Real.VendingMachine.Screen.SurfaceGui.SoldOut.Visible
        end
    end
    Player.Character:SetPrimaryPartCFrame(OldPos)
end

local Rebirth = function()
    local yes = require(game:GetService("ReplicatedStorage").Library.Client.RebirthCmds)
    if yes.GetNextRebirth() and yes.GetNextRebirth().RebirthNumber then
        RF("Rebirth_Request"):InvokeServer(tostring(yes.GetNextRebirth().RebirthNumber))
    end
end

local AutoFarmZones = function()
    local Owned = ZoneCMDS.GetMaxOwnedZone()
    if Owned then
        local Zone = ZonesUtil.GetInteractFolder(Owned)
        if not Zone then
            RF("Teleports_RequestTeleport"):InvokeServer(Owned)
        end
        if Zone then
            if Zone:FindFirstChild("Buy Signs") then
                VG.Teleport(Zone.BREAKABLE_SPAWNS.Main.Position + Vector3.new(0,1,0))
            elseif Zone:FindFirstChild("BREAKABLE_SPAWNS") and Zone.BREAKABLE_SPAWNS:FindFirstChild("Boss") then
                VG.Teleport(Zone.BREAKABLE_SPAWNS.Main.Position + Vector3.new(0,1,0))
            
            else
                VG.Teleport(Zone.BREAK_ZONES.BREAK_ZONE.Position + Vector3.new(0,1,0))
            end
        end
        local NotOwned = ZoneCMDS.GetNextZone()
        RF("Zones_RequestPurchase"):InvokeServer(NotOwned)
    end
end

local TargetFarm = function()
    local MaxMag = math.huge
    local Target = nil
    for _,v in Things.Breakables:GetChildren() do
        local Hitbox  = v:FindFirstChild("Hitbox", true)
        if Hitbox then
            local Mag = VG.Mag(Player.Character.HumanoidRootPart, Hitbox)
            if  Mag <= MaxMag then
                MaxMag = Mag
                Target = v
            end
        end
    end
    if Target then
        local CurrentPets = Client.PlayerPet.GetAll()
        for _,v in CurrentPets do
            Client.PlayerPet.SetTarget(v, Target)
        end
        RE("Breakables_PlayerDealDamage"):FireServer(tostring(Target.Name))
    end
end
local Collect = function()
    local FuckYou = workspace.__THINGS.Orbs:GetChildren()
    local KYS = workspace.__THINGS.Lootbags:GetChildren()
    local MyOrbs = {}
    local MyBags = {}

    if #FuckYou > 0 then
        for i,v in next, FuckYou do
            MyOrbs[i] = tonumber(v.Name)
            v:Destroy()
        end
    end
    if #KYS > 0 then
        for i,v in next, KYS do            
            MyBags[v.Name] = v.Name
            v:Destroy()
        end
    end
    RE("Orbs: Collect"):FireServer(MyOrbs)
    RE("Lootbags_Claim"):FireServer(MyBags)
end
local GetLastEgg = function()
    return require(ReplicatedStorage.Library.Client.EggCmds).GetHighestEggNumberAvailable()
end
local GetMaxEggsAbleToOpen = function()
    return require(ReplicatedStorage.Library.Client.EggCmds).GetMaxHatch()
end
local GetLastEggName = function()
    for i, v in next, ReplicatedStorage.__DIRECTORY.Eggs["Zone Eggs"]:GetChildren() do
        for i, v in next, v:GetChildren() do
            for i, v in next, v:GetChildren() do
                if v:IsA("ModuleScript") then
                    local String = string.split(v.Name, " | ")[1]
                    if GetLastEgg() == tonumber(String) then
                        return string.split(v.Name, " | ")[2]
                    end
                end
            end
        end
    end
end

local BuyLastEgg = function()
    local String = require(game:GetService("ReplicatedStorage").Library.Util.WorldsUtil).GetWorld()._id
    local String2 = string.gsub(String, " ", "")
    local OldCFrame = Player.Character.HumanoidRootPart.CFrame
    local Lol = Workspace.__THINGS.Eggs:FindFirstChild(String2)
    if Lol then
        Lol = Workspace.__THINGS.Eggs[String2]:GetChildren() 
    else
        Lol = Workspace.__THINGS.Eggs.Main:GetChildren()
    end
    for i, v in next, Lol do
        local String = string.split(v.Name, " -")[1]
        if GetLastEgg() == tonumber(String) then
            VG.Teleport(v:GetModelCFrame().Position)
            wait(.1)
            RF("Eggs_RequestPurchase"):InvokeServer(GetLastEggName(), tonumber(GetMaxEggsAbleToOpen()))
            break
        end
    end
    Player.Character:SetPrimaryPartCFrame(OldCFrame)
end

local BuyEgg = function(Egg, Amount)
    RF("Eggs_RequestPurchase"):InvokeServer(Egg, GetMaxEggsAbleToOpen())
end
---------------BackRooms

local GetCustomEggByName = function(Toggle, String)
    local Egg = nil
    for i,v in next, getupvalue(require(game:GetService("ReplicatedStorage").Library.Client.CustomEggsCmds).All, 1) do
        if v._id == String and Toggle then
            Egg = v._model
        elseif v._id == String and not Toggle then
            Egg = v._hatchable
        end
    end
    return Egg
end


local HatchBestBackRoomsEgg = function()
end

--- Digsite Stuff
local GetBlock = function()
    local IHateMakingNamesFortables = CurrentActive()
    local Distance = math.huge
    local Block = nil
    for i,v in next, IHateMakingNamesFortables.Important.ActiveBlocks:GetChildren() do
        if v:IsA("BasePart") then
            local Mag = VG.Mag(Player.Character.HumanoidRootPart, v)
            if Mag <=  Distance then
                Distance = Mag
                Block = v
            end
        end
    end
    return Block -- I Hate this part
end

local GetChest = function()
    local Table = CurrentActive()
    local Distance = math.huge -- KYS
    local Chest = nil
    for i,v in next, Table.Important.ActiveChests:GetChildren() do
        if v:IsA("Model") then
            local NewMag = VG.Mag(Player.Character.HumanoidRootPart, v:GetModelCFrame())
            if NewMag <= Distance then
                Distance = NewMag
                Chest = v
            end
        end
    end
    return Chest
end

local Dig = function()
    if Method2 == "Digsite" and not Active:FindFirstChild("Digsite") then
        VG.Teleport(Things.Instances.Digsite.Teleports.Enter.Position)
    elseif Method2 == "AdvancedDigsite" and not Active:FindFirstChild("AdvancedDigsite") then
        VG.Teleport(Things.Instances.AdvancedDigsite.Teleports.Enter.Position)
    end
    if (GetBlock() == nil or GetChest() == nil) then
        if Method2 == "Digsite" and not Active:FindFirstChild("Digsite") then
            VG.Teleport(Workspace.__THINGS.Instances["Digsite"].Teleports.Leave.Position)
            wait(5)
            VG.Teleport(Workspace.__THINGS.Instances["Digsite"].Teleports.Enter.Position)
        end
        if Method2 == "AdvancedDigsite" and not Active:FindFirstChild("AdvancedDigsite") then
            VG.Teleport(Workspace.__THINGS.Instances["AdvancedDigsite"].Teleports.Leave.Position)
            wait(5)
            VG.Teleport(Workspace.__THINGS.Instances["AdvancedDigsite"].Teleports.Enter.Position)
        end
    end
    if CurrentActive() and CurrentActive().Name == "Digsite" then
        if Player.Character.HumanoidRootPart.Position.Y <= -1991 then
            VG.FireConnection(Player.PlayerGui._INSTANCES.Digsite.Return.Activated)
        end
    end
    if GetChest() then
        VG.Teleport(GetChest():FindFirstChildWhichIsA("BasePart").Position)
        RE("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigChest", GetChest():GetAttribute('Coord'))
    else
        VG.Teleport(GetBlock().Position)
        RE("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigBlock", GetBlock():GetAttribute('Coord'))
    end
end
local DigAura = function() -- just Dig() without tweening
    if GetChest() then
        RE("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigChest", GetChest():GetAttribute('Coord'))
    else
        RE("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigBlock", GetBlock():GetAttribute('Coord'))
    end
end

---- Obby Stuff

local TeleportObby = function()
    for i,v in next, Workspace.__THINGS.Instances:GetChildren() do
        if v.Name == WantedObby then
            VG.Teleport(v.Teleports.Enter.Position)
        end
    end
end
local Doobbystuff = function(Obby)
    local New = Workspace.__THINGS.__INSTANCE_CONTAINER.Active:GetChildren()[1]
    local Model = VG.FFD(New, "StartLine")
    local Model2 = VG.FFD(New, "Goal")
    if Model then
        if Model:IsA("Model") then
            VG.Teleport(VG.FFD(New, "StartLine"):GetModelCFrame().Position + Vector3.new(0,5,-5))
        elseif Model:IsA("BasePart") then
            VG.Teleport(VG.FFD(New, "StartLine").Position + Vector3.new(-5,5,0))
        end
    end
    wait(5)
    if Model2 then
        VG.Teleport(VG.FFD(New, "Goal").Pad.Position)
    end
end

---- Table insert shit
for i,v in next, ReplicatedStorage.__DIRECTORY.Zones:GetChildren() do
    for i,v in next, v:GetChildren() do
        if v:IsA("ModuleScript") then
            local String = string.split(v.Name, "| ", "")[2]
            table.insert(Zones, String)
        end
    end
end

for i,v in next, ReplicatedStorage.__DIRECTORY.VendingMachines:GetChildren() do
    local String = string.split(v.Name, " | ")[2]
    table.insert(VendingMachines, String)
end

for i,v in next, ReplicatedStorage.Assets.Instancing:GetChildren() do
    table.insert(Hehe, v.Name)
end

for i,v in next, ReplicatedStorage.__DIRECTORY.Fruits:GetChildren() do
	local Name = string.split(v.Name, " | ")[2]
	table.insert(Fruits, Name)
end

for i,v in ReplicatedStorage.__DIRECTORY.Eggs["Zone Eggs"]:GetDescendants() do
    if v:IsA("ModuleScript") then
        local EggName = string.split(v.Name, " | ")[2]
        table.insert(EggTable, EggName)
    end
end

for i,v in next, ReplicatedStorage.__DIRECTORY.ZoneFlags:GetChildren() do
	local NewName = string.split(v.Name, "ZoneFlag | ")[2]
	table.insert(Flags, NewName)
end

for i,v in next, workspace.__THINGS.Instances:GetChildren() do
    if not table.find(Instances, v.Name) then
        table.insert(Instances, v.Name)
    end
end

local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
   local Self, Args = ..., {...}
   if Self.Name == "Is Real Player" and getnamecallmethod() == "InvokeServer" then
      return
   end
   return OldNameCall(...)
end)


Client.PlayerPet.CalculateSpeedMultiplier = function(...)
	if PetSpeed then
		return 9e9
	else
		return CalculateSpeedMultiplier(...)
	end
end
Hatching.PlayEggAnimation = function(...)
    if NoHatch then
        return
    else
        return HatchingAnimation(...)
    end
end
spawn(function()
    while wait(.1) do
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled = false
            if AutoFarm or YesLol then
                TargetFarm()
            end
            if UltimateButtons then
                local Equipped = Client.UltimateCmds.GetEquippedItem()
                local IsCharged = Client.UltimateCmds.IsCharged(Equipped._data.id)
                if IsCharged then
                    Client.UltimateCmds.Activate(Equipped._data.id)
                end
            end
            if Hey3y then
                BuyLastEgg()
            end
            if Heyy then
                BuyEgg(WantedEgg, GetMaxEggsAbleToOpen())
            end
            if Frut then
                GetFruits()
            end
            if Fag then
                GetFlags()
            end
            if Fag2 then
                RF("Spinny Wheel: Request Spin"):InvokeServer("DiamondWheel")
            end
            if vut then
                Venders()
            end
            if gg or YesLol then
                Collect()
            end
            if ToHateYou then
                OpenAllGifts()
            end
            if YesLol then
                AutoFarmZones()
            end
            if Rebi or YesLol then
                Rebirth()
            end
            if ClaimRank then
                ClaimRanks()
            end
        end)
    end
end)
spawn(function ()
    while wait() do
        if BackRooms then
            Time = Time + 1
            wait(1)
            print(Time)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Yes then
                local OldPos = Player.Character:GetModelCFrame()
                for i,v in next, workspace.__THINGS.HiddenPresents:GetChildren() do
                    if v:IsA("BasePart") and v.Transparency == 0 then
                        Player.Character:SetPrimaryPartCFrame(v.CFrame)
                        wait(.1)
                        Clicked(GetPresentTable(v))
                        break
                    end
                end
                Player.Character:SetPrimaryPartCFrame(OldPos)
                wait(10)
            end
        end)
    end
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
 
local Window = Fluent:CreateWindow({
    Title = "V.G Hub: Game " .. MarketplaceService:GetProductInfo(game.PlaceId).Name,
    SubTitle = "by DekuDimz",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.Delete -- Used when theres no MinimizeKeybind
})
 
 
local Tabs = {
    AutoFarm = Window:AddTab({ Title = "AutoFarm", Icon = "" }),
    Obbys = Window:AddTab({ Title = "Obbys etc", Icon = "" }),
    AutoMinigame = Window:AddTab({ Title = "AutoMinigames", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
 
}
 
local Options = Fluent.Options
 
do
    Fluent:Notify({
        Title = "V.G Hub Loaded",
        Content = "Congrats your using V.G Hub " .. Verison,
        SubContent = "", -- Optional
        Duration = 10 -- Set to nil to make the notification not disappear
    })
    local Toggle = Tabs.AutoFarm:AddToggle("Rend", {Title = "Disable 3D Rendering", Default = false})
    Toggle:OnChanged(function()
        Norender = Options.Rend.Value
        if Norender then
            RunService:Set3dRenderingEnabled(false)
        else
            RunService:Set3dRenderingEnabled(true)
        end
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("YesLol", {Title = "Automatic Farm Zones", Default = false})
    Toggle:OnChanged(function()
        YesLol = Options.YesLol.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("PetCoin", {Title = "Auto Break Nearest Coin", Default = false})
    Toggle:OnChanged(function()
        AutoFarm = Options.PetCoin.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("Lols", {Title = "Auto Ultimate", Default = false})
    Toggle:OnChanged(function()
        UltimateButtons = Options.Lols.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("f93", {Title = "Infinite Pet Speed", Default = false})
    Toggle:OnChanged(function()
        PetSpeed = Options.f93.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("f933", {Title = "Skip Egg HatchingAnimation", Default = false})
    Toggle:OnChanged(function()
        NoHatch = Options.f933.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("Egg2d", {Title = "Auto Open Last Egg", Default = false})
    Toggle:OnChanged(function()
        Hey3y = Options.Egg2d.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("Eggd", {Title = "Auto Open Egg", Default = false})
    Toggle:OnChanged(function()
        Heyy = Options.Eggd.Value
    end)
    local Dropdown = Tabs.AutoFarm:AddDropdown("Ds", {Title = "Eggs",Values = EggTable,Multi = false,Default = 1})
    Dropdown:OnChanged(function(Value)
        WantedEgg = Value
    end)

    local Toggle = Tabs.AutoFarm:AddToggle("Toyou", {Title = "Auto Eat Fruits", Default = false})
    Toggle:OnChanged(function()
        Frut = Options.Toyou.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("Toyo24u", {Title = "Auto Place Flags", Default = false})
    Toggle:OnChanged(function()
        Fag = Options.Toyo24u.Value
    end)

    local Toggle = Tabs.AutoFarm:AddToggle("Toyo224u", {Title = "Auto DiamondWheel", Default = false})
    Toggle:OnChanged(function()
        Fag2 = Options.Toyo224u.Value
    end)
    local Dropdown = Tabs.AutoFarm:AddDropdown("Ds", {Title = "Flags",Values = Flags,Multi = false,Default = 1})
    Dropdown:OnChanged(function(Value)
        WantedFlag = Value
    end)
    local Dropdown = Tabs.AutoMinigame:AddDropdown("e34", {Title = "Fishing Areas",Values = {"AdvancedFishing", "Fishing"},Multi = false,Default = 1,})
    Dropdown:OnChanged(function(Value)
        Method = Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("Toyou2", {Title = "Auto Buy Venders", Default = false})
    Toggle:OnChanged(function()
        vut = Options.Toyou2.Value
    end)
    local Toggle = Tabs.AutoFarm:AddToggle("Orbs", {Title = "Auto Collect Orbs", Default = false})
    Toggle:OnChanged(function()
        gg = Options.Orbs.Value
    end)

    local Toggle = Tabs.AutoFarm:AddToggle("Gifts", {Title = "Auto Find Hidden Presents", Default = false})
    Toggle:OnChanged(function()
        Yes = Options.Gifts.Value
    end)

    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Tabs.Obbys:AddButton({Title = "Auto Grab All ShinyRelics",Description = "Grabs all relics Working",Callback = function()
        for i,v in next, Workspace.__THINGS.ShinyRelics:GetChildren() do
            if v:IsA("BasePart") and v.Transparency == 0 then
                RelicClicked(getShiny(v))
            end
        end
    end})

    Tabs.Obbys:AddButton({Title = "Open All Gifts",Description = "Opens All Gifts in Inventory",Callback = function()
        OpenAllGifts()
    end})
    local Toggle = Tabs.Obbys:AddToggle("HateNig", {Title = "Auto Open All Gifts", Default = false})
    Toggle:OnChanged(function()
        ToHateYou = Options.HateNig.Value
    end)
    local Toggle = Tabs.Obbys:AddToggle("Ranked", {Title = "Auto Claim Ranks Rewards", Default = false})
    Toggle:OnChanged(function()
        g = Options.Ranked.Value
    end)
    Tabs.Obbys:AddButton({Title = "Auto Selected Obby",Description = "Automaticly does obby must be in obby to work",Callback = function()
        Doobbystuff()
    end})
    Tabs.Obbys:AddButton({Title = "Auto Teleport Obby",Description = "Teleports so Obby",Callback = function()
        TeleportObby()
    end})
    local Dropdown = Tabs.Obbys:AddDropdown("idkanymore", {Title = "Obbys",Values = Instances,Multi = false,Default = 1,})
    Dropdown:OnChanged(function(Value)
        WantedObby = Value
    end)

    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local Toggle = Tabs.AutoMinigame:AddToggle("DigSite", {Title = "Auto DigSites", Default = false})
    Toggle:OnChanged(function()
        Toggle = Options.DigSite.Value
        Stepped:Connect(function()
            if Toggle then
                VG.NoClip()
            end
        end)
        spawn(function()
            while Toggle and wait() do
                pcall(function()
                    Dig()
                end)
            end
        end)
    end)
    local Dropdown = Tabs.AutoMinigame:AddDropdown("e234", {Title = "Dig Areas",Values = {"AdvancedDigsite", "Digsite"},Multi = false,Default = 2})
    Dropdown:SetValue("")
    Dropdown:OnChanged(function(Value)
        Method2 = Value
    end)

    local Toggle = Tabs.AutoMinigame:AddToggle("DigSiteAura", {Title = "Dig Aura", Default = false})
    Toggle:OnChanged(function()
        Digaura = Options.DigSiteAura.Value
        spawn(function()
            while wait(.2) and Digaura do
                pcall(function()
                    DigAura()
                end)
            end
        end)
    end)
    local Toggle = Tabs.AutoMinigame:AddToggle("Fih", {Title = "Auto Fishing", Default = false})
    Toggle:OnChanged(function()
        Fishe = Options.Fih.Value
        spawn(function()
            while wait() and Fishe do
                pcall(function()
                    Activated()
                end)
            end
        end)
        spawn(function()
            while Fishe and wait(300) do
                pcall(function()
                    User:SendMouseButtonEvent(0,0, 0, true, game, 0)
                    User:SendMouseButtonEvent(0,0, 1, true, game, 0)
                    wait(1)
                    User:SendMouseButtonEvent(0,0, 0, false, game, 0)
                    User:SendMouseButtonEvent(0,0, 1, false, game, 0)
                end)
            end
        end)
    end)

    local Dropdown = Tabs.AutoMinigame:AddDropdown("e34", {Title = "Fishing Areas",Values = {"AdvancedFishing", "Fishing"},Multi = false,Default = 1,})
    Dropdown:OnChanged(function(Value)
        Method = Value
    end)
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
 
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.AutoFarm)
 
Window:SelectTab(1)
 
Fluent:Notify({
    Title = "V.G Hub",
    Content = "The script has been loaded.",
    Duration = 8
})
 
SaveManager:LoadAutoloadConfig()
