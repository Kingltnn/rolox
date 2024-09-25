if not game:IsLoaded() then game.Loaded:Wait() end
-- Replace the "WEBHOOK_URL_HERE" with your actual webhook URL
local webhook = "https://discord.com/api/webhooks/1288429702293491775/ZbqmI34oqbEz1B8eUd22h8aORla__pAGrp4bedofLleUB-4vtmeQks-F_V6rlpm64iY9"

-- The name of the currency you want to track
local currencyName = "Diamonds"

-- The delay between updates (in seconds)
local updateDelay = 600 -- (20 minutes = 1200)

-- Get the player's user ID
local playerId = game.Players.LocalPlayer.UserId

-- Load the library
local Library = require(game.ReplicatedStorage.Library)
Library.Load()

-- Function to format a number with commas
local function formatNumber(number)
    return tostring(number):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

-- Function to get the current amount of the specified currency
local function getCurrentCurrencyAmount()
    local saveData = Library.Save.Get()
    if not saveData then
        return nil
    end
    return saveData[currencyName]
end

-- Function to send an update to the webhook
local function sendUpdate(currentAmount, totalAmount, deltaAmount, totalTime)
    local embed = {
        ["title"] = "Currency Update"..playerId,
        ["color"] = tonumber("0x00FF00", 16), -- Green
        ["fields"] = {
            {
                ["name"] = "Current "..currencyName,
                ["value"] = formatNumber(currentAmount),
                ["inline"] = true
            }
        },
        ["footer"] = {
            ["text"] = "Webhook by KingLTN"
        }
        }
        
    (syn and syn.request or http_request or http.request) {
        Url = webhook;
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService('HttpService'):JSONEncode({
            username = "Gem Tracker", 
            avatar_url = 'https://imgur.com/a/dWvyFdY',
            embeds = {embed} 
        })
    }
end

-- Initialize the current and total amounts
local currentAmount = getCurrentCurrencyAmount() or 0


-- Send the initial update
sendUpdate(currentAmount)
-- Start a loop to update the currency every 10 minutes
while true do
    wait(updateDelay)
    local newAmount = getCurrentCurrencyAmount() or 0
    currentAmount = newAmount
    totalTime = totalTime + (updateDelay / 60)
    sendUpdate(currentAmount)
end
