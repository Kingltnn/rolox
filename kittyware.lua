getgenv().RngEvent = {
    Selected_RngEgg = "First",
    Rolling_Enabled = true,
    Rolling_Delay = 0.1,
    Visible_Rolling = false, -- Visible Rolling is Slower by ~1s; but you can see it if you don't have gui enabled :P
 Selected_Upgrades = {"RNGHugeLuck", "RNGEggLuck", "RNGHatchSpeed", "RNGBonusLuck", "RNGExtraEgg"},
    AutoUpgrades_Enabled = false,
    AutoMerchant_Enabled = true,
    AutoSellPets_Enabled = false,
    AutoSell_OnlyEventPets = false,
    AutoBreakChests_Enabled = true,
    Lucky_Dice_Enabled = true,
    Lucky_Dice_Config = {
        ["Fire Dice"] = {Craft = false, Use = false, Only_Use_If_Not_Active = false, Only_Use_If_Rolls_Ends_In = nil},
        ["Lucky Dice"] = {Craft = true, Use = false, Only_Use_If_Not_Active = false, Only_Use_If_Rolls_Ends_In = nil},
        ["Lucky Dice II"] = {Craft = true, Use = false, Only_Use_If_Not_Active = false, Only_Use_If_Rolls_Ends_In = nil},
        ["Lucky Dice III"] = {Craft = true, Use = false, Only_Use_If_Not_Active = false, Only_Use_If_Rolls_Ends_In = nil},
        ["Mega Lucky Dice"] = {Craft = true, Use = false, Only_Use_If_Not_Active = false, Only_Use_If_Rolls_Ends_In = nil},
        ["Mega Lucky Dice II"] = {Craft = true, Use = true, Only_Use_If_Not_Active = true, Only_Use_If_Rolls_Ends_In = 9},
    },

    Webhook_Url = "https://discord.com/api/webhooks/1274649544230961276/CT78psRvkwcdbirrHTbGN_6R3xZIPHvLOAmMr183udSixP0OTu8w40nLXk0zI9F-dEjn",
    Discord_UserID = "",
    Huge_Mail_User = "",
    Huge_Mail_Enabled = false, 

    fps_boost = true, -- makes game shtuff invisible
    fps_boost2 = false,
    gui_stats_enabled = true,
    print_all_info = false,
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/661ba97429a1d20f02880d1e9eeced08.lua"))()
