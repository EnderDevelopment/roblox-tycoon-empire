-- PlayerUI.client.lua

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function updateUI(data)
    -- Update UI with player data
end

player:GetAttributeChangedSignal("PlayerData"):Connect(function()
    local data = player:GetAttribute("PlayerData")
    updateUI(data)
end)

print("PlayerUI initialized")