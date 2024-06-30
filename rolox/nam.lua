-- Important Variables
local SCRIPT_NAME = "KingLTN"
local SCRIPT_VERSION = "v0.1"


-- Detect if the script has executed by AutoExec
local AutoExecuted = false
if not game:IsLoaded() then AutoExecuted = true end

repeat task.wait() until game.PlaceId ~= nil
if not game:IsLoaded() then game.Loaded:Wait() end

--//-------------- SERVICES ----------------//*
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local InputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local ContentProvider = game:GetService("ContentProvider")





if game.PlaceId == 6284583030 or game.PlaceId == 10321372166 or game.PlaceId == 7722306047 or game.PlaceId == 12610002282 or game.PlaceId == 8737899170 then
 
 
    for _, lootbag in pairs(Workspace.__THINGS:FindFirstChild("Lootbags"):GetChildren()) do
        if lootbag then
            ReplicatedStorage.Network:WaitForChild("Lootbags_Claim"):FireServer(unpack( { [1] = { [1] = lootbag.Name, }, } ))
            lootbag:Destroy()
            task.wait()
        end
        Library.ChatMsg.New(string.format("Lootbag => OK"), Color3.fromRGB(175, 70, 245))
    end
    
    Workspace.__THINGS:FindFirstChild("Lootbags").ChildAdded:Connect(function(lootbag)
        task.wait()
        if lootbag then
            ReplicatedStorage.Network:WaitForChild("Lootbags_Claim"):FireServer(unpack( { [1] = { [1] = lootbag.Name, }, } ))
            lootbag:Destroy()
        end
        Library.ChatMsg.New(string.format("Lootbags Claim => OK"), Color3.fromRGB(175, 70, 245))
    end)
    
    Workspace.__THINGS:FindFirstChild("Orbs").ChildAdded:Connect(function(orb)
        task.wait()
        if orb then
            ReplicatedStorage.Network:FindFirstChild("Orbs: Collect"):FireServer(unpack( { [1] = { [1] = tonumber(orb.Name), }, } ))
            orb:Destroy()
        end
        Library.ChatMsg.New(string.format("Orbs: Collect => OK"), Color3.fromRGB(175, 70, 245))
    end)
	
	function Antistaff()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fdvll/pet-simulator-99/main/antiStaff.lua"))()
        Library.ChatMsg.New(string.format("Anti Staff => OK"), Color3.fromRGB(175, 70, 245))
    end

    function eggslot()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fdvll/pet-simulator-99/main/auto-egg-slots.lua"))()
        Library.ChatMsg.New(string.format("egg slot => OK"), Color3.fromRGB(175, 70, 245))
    end

    function autotraicay()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fdvll/pet-simulator-99/main/autoFruits.lua"))()
        Library.ChatMsg.New(string.format("auto trái cây => OK"), Color3.fromRGB(175, 70, 245))
    end

    function autoWorld()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fdvll/pet-simulator-99/main/autoWorld.lua"))()
        Library.ChatMsg.New(string.format("auto trái cây => OK"), Color3.fromRGB(175, 70, 245))
    end
    
    
    
    getgenv().SecureMode = true
	getgenv().DisableArrayfieldAutoLoad = true
	
	local Rayfield = nil
	if isfile("UI/ArrayField.lua") then
		Rayfield = loadstring(readfile("UI/ArrayField.lua"))()
	else
		Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua"))()
	end
	
	-- local Rayfield = (isfile("UI/ArrayField.lua") and loadstring(readfile("UI/ArrayField.lua"))()) or loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua"))()
	assert(Rayfield, "Oopps! Rayfield has not been loaded. Maybe try re-joining?") 
	

	local Window = Rayfield:CreateWindow({
	   Name = "Pet Simulator X KingLTN | by KingLTN ",
	   LoadingTitle = SCRIPT_NAME .. " " .. SCRIPT_VERSION,
	   LoadingSubtitle = "by KingLTN",
	   ConfigurationSaving = {
		  Enabled = true,
		  FolderName = "KingLTN",
		  FileName = "PetSimulatorX_" .. tostring(LocalPlayer.UserId)
	   },
	   OldTabLayout = true
	})
	
	coroutine.wrap(function() 
		wait(0.5)
		if not isfile("Rafa/AcceptedTerms.txt") then 
			Window:Prompt({
				Title = 'Disclaimer',
				SubTitle = 'Misuse of this script may result in penalties!',
				Content = "I am not responsible for any harm caused by this tool, use at your own risk.",
				Actions = {
					
					Accept = {
						Name = "Ok",
						Callback = function()
							if not isfolder("Rafa") then makefolder("Rafa") end
							writefile("Rafa/AcceptedTerms.txt", "true")
						end,
						
					}
				}
			})
		end 
	
	end)()
	
	
	function AddCustomFlag(flagName, defaultValue, callback)
		if Rayfield and Rayfield.Flags and not Rayfield.Flags[flagName] then
			local newFlag = {
				CurrentValue = defaultValue
			}
			
			function newFlag:Set(newValue)
				Rayfield.Flags[flagName].CurrentValue = newValue
				
				callback(newValue)
			end
			
			Rayfield.Flags[flagName] = newFlag
		end
	end
	
	function SaveCustomFlag(flagName, value)
		if Rayfield and Rayfield.Flags and Rayfield.Flags[flagName] then
			pcall(function() 
				Rayfield.Flags[flagName]:Set(value)
				
				coroutine.wrap(function()
					Rayfield.SaveConfiguration()
				end)()
			end)
		end
	end
	
	Library.ChatMsg.New(string.format("Hello, %s! You're running %s %s | donate me: kenchuboy2k", LocalPlayer.DisplayName, SCRIPT_NAME, SCRIPT_VERSION), Color3.fromRGB(175, 70, 245))
	
    local Main = Window:CreateTab("Main", "13075651575", true)
	local stats = Main:CreateParagraph({Title = "Hello, <b><font color=\"#2B699F\">" .. LocalPlayer.DisplayName .. "</font></b>!", Content = "Thanks for using my script! - KingLTN\nMake sure to join us at <b><font color=\"#2B699F\">discord.gg/MilkUp</font></b>"})
	local autoFarmSection = Main:CreateSection("Main", false, false, "7785988164")
	local Antistaff = true
	Main:CreateToggle({
		Name = "ANTIstaff",
		Info = 'ANTI staff',
		Flag = "MANTIstaff",
		SectionParent = autoFarmSection,
		CurrentValue = false,
		Callback = function(Value) 
			Antistaff = Value
		end
	})
    
    Main:CreateToggle({
		Name = "eggslot",
		Info = 'buy egg slot',
		Flag = "egg slot",
		SectionParent = autoFarmSection,
		CurrentValue = false,
		Callback = function(Value) 
			eggslot = Value
		end
	})
     
    Main:CreateToggle({
		Name = "eautotraicay",
		Info = 'autotraicay',
		Flag = "autotraicay",
		SectionParent = autoFarmSection,
		CurrentValue = false,
		Callback = function(Value) 
			autotraicay = Value
		end
	})
     
    Main:CreateToggle({
		Name = "autoWorld",
		Info = 'autoWorld',
		Flag = "autoWorld",
		SectionParent = autoFarmSection,
		CurrentValue = false,
		Callback = function(Value) 
			autoWorld = Value
		end
	})

    Rayfield.LoadConfiguration()

	for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
		v:Disable()
	end

	InputService.WindowFocused:Connect(function()
		RunService:Set3dRenderingEnabled(true)
	end)

	InputService.WindowFocusReleased:Connect(function()
		if Settings_DisableRendering then
			RunService:Set3dRenderingEnabled(false)
		end
	end)
end
    
    
