Settings = {
    ["Performance"] = {
        ["Diable Orb Rendering"] = true,
        ["Disable Lootbags"] = true
    },
    ["Auto Collect"] = {
        ["Orbs"] = true,
        ["Lootbags"] = true
    }, 
    ["Boosts"] = {
        ["Triple Damage"] = true,
        ["Server Damage"] = true
    }
}
if Settings["Auto Collect"]["Lootbags"] then
	game.Workspace['__THINGS'].Lootbags.ChildAdded:Connect(function(v)
		Fire("Collect Lootbag", v.Name, v.Position)
	end)
end
if Settings["Auto Collect"]["Orbs"] then
	game.Workspace['__THINGS'].Orbs.ChildAdded:Connect(function(v)
		Fire("Claim Orbs", {v.Name})
	end)
end
if Settings["Performance"]["Disable Orb Rendering"] then
	game:GetService("Workspace")["__THINGS"].Orbs.ChildAdded:Connect(function(v)
		pcall(function()
			v.Orb.Enabled = false
		end)
	end)
end
if Settings["Performance"]["Disable Lootbags"] then
	game:GetService("Workspace")["__THINGS"].Lootbags.ChildAdded:Connect(function(v)
		pcall(function()
			v.Transparency = 1
			v.ParticleEmitter:Destroy()
		end)
	end)
end
boostco = coroutine.create(function()
    while 1 do
        wait(2)
	  if Settings["Boosts"]["Triple Damage"] then
        boostName = "Triple Damage"
        local Library = require(game.ReplicatedStorage.Framework.Library)
        local save = Library.Save.Get()
        found = false
        for i, v in pairs(save.Boosts) do
            if i == boostName then
                found = true
            end
        end
        if not found then
            Fire("Activate Boost", boostName)
        end
	  end
	  if Settings["Boosts"]["Server Damage"] then
            boostName = "Triple Damage"
            local Library = require(game.ReplicatedStorage.Library)
            Library.Load()
            found = false
            for i, v in pairs(Library.ServerBoosts.GetActiveBoosts()) do
                if i == boostName then
                    found = true
                end
            end
            if not found then
                Fire("Activate Server Boost", boostName)
            end
        end
    end
end)
coroutine.resume(boostco)
function GetMulti(B)
		if not B then return 0 end
		local totalMultiplier = 0	
		if B.l then
			for _, v in pairs(B.l) do
				pcall(function() 
					if v.m and tonumber(v.m) then
						totalMultiplier = totalMultiplier + v.m
					end
				end)
			end
			
		end
		return totalMultiplier
	end