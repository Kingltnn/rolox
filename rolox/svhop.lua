local S = {} do
    S.Minimum_Players = 1
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local LocalPlayer = Players.LocalPlayer
    local PlaceId = game.PlaceId
    local fileName = string.format("%s_servers.json", tostring(PlaceId))
    local ServerHopData = { 
        CheckedServers = {},
        LastTimeHop = nil,
        CreatedAt = os.time()
    }
    if isfile(fileName) then
        local fileContent = readfile(fileName)
        ServerHopData = HttpService:JSONDecode(fileContent)
    end
    if ServerHopData.LastTimeHop then
        print("Took", os.time() - ServerHopData.LastTimeHop, "seconds to server hop")
    end
    local ServerTypes = { ["Normal"] = "desc", ["Low"] = "asc" }
    S.Jump = function (serverType)
        serverType = serverType or "Normal"
        if not ServerTypes[serverType] then serverType = "Normal" end
        local function GetServerList(cursor)
            cursor = cursor and "&cursor=" .. cursor or ""
            local API_URL = string.format('https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=100', tostring(PlaceId), ServerTypes[serverType])
            return HttpService:JSONDecode(game:HttpGet(API_URL .. cursor))
        end
        local currentPageCursor = nil
        while true do 
            local serverList = GetServerList(currentPageCursor)
            currentPageCursor = serverList.nextPageCursor
            for _, server in ipairs(serverList.data) do
                if server.playing and tonumber(server.playing) >= S.Minimum_Players and tonumber(server.playing) < Players.MaxPlayers and not table.find(ServerHopData.CheckedServers, tostring(server.id)) then     
                    ServerHopData.LastTimeHop = os.time()
                    table.insert(ServerHopData.CheckedServers, server.id)
                    writefile(fileName, HttpService:JSONEncode(ServerHopData))
                    TeleportService:TeleportToPlaceInstance(PlaceId, server.id, LocalPlayer) 
                    wait(0.25)
                end
            end
            if not currentPageCursor then break else wait(0.25) end
        end  
    end
end

return S
