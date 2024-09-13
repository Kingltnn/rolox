repeat task.wait()
pcall(function()
    getgenv().KiTTYWARE_ColorWar = {
    Farm_Zones = true,
    Farming_Misc = {
        Pets_Per_Breakable = 1,
        Event_Specific = {
            Color_Gifts = {Enabled = true, Minimum_Buckets = 75},
            Clan_Points = {Enabled = false, Minimum_Buckets = 50},
            Stay_Teams = {Enabled = true, Only_Winning = true},
            Graffiti_Gifts = {Enabled = true},
        },
    },
    Hatch_Eggs = true,
    Hatching_Misc = {
        discord_UserID = "",
        hugeNotif_Webhook = "https://discord.com/api/webhooks/1274649544230961276/CT78psRvkwcdbirrHTbGN_6R3xZIPHvLOAmMr183udSixP0OTu8w40nLXk0zI9F-dEjn",
        hugeNotif_Enabled = true,
        autoMail_User = "kingltnsell",
        autoMail_Enabled = true,
    },
    Farm_Minigame = true,

    StatsGui =  false,
    Fps_Boost1 = false,
    Fps_Boost2 = true,
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/38e4778402a1d51414b40ab60274c5ed.lua"))()
            end)
    task.wait(5)
    a=0,
    b = a + 1
until b = 3
