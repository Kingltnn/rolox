getgenv().KiTTYWARE_ColorWar = {
    Farm_Zones = true,
    Farming_Misc = {
        Pets_Per_Breakable = 1,
        Auto_Pickups = true,
        Inf_Pet_Speed = true,

        Event_Specific = {
            Color_Gifts = {Enabled = false, Minimum_Buckets = 75},
            Clan_Points = {Enabled = false, Minimum_Buckets = 50},
            Stay_Teams = {Enabled = false, Only_Winning = true},
        },
    },
    Hatch_Eggs = false,
    Hatching_Misc = {
        discord_UserID = "",
        hugeNotif_Webhook = "https://discord.com/api/webhooks/1279722812931575851/G30w5whctavJ7ABeLBE0ZCFgxegLu-PHd9HMex-748vLqJ6tLK-QdicuAiY0Xqm8wRwo",
        hugeNotif_Enabled = true,
        autoMail_User = "kingltnsell",
        autoMail_Enabled = true,
    },
    StatsGui = false,
    Fps_Boost1 = true, -- world stuff invisible
    Fps_Boost2 = false, -- disable localscript 
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/38e4778402a1d51414b40ab60274c5ed.lua"))()
