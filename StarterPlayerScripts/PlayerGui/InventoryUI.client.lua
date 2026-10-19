-- InventoryUI.client.lua

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function updateInventory(data)
    -- Update inventory UI with player data
end

player:GetAttributeChangedSignal("InventoryData"):Connect(function()
    local data = player:GetAttribute("InventoryData")
    updateInventory(data)
end)

print("InventoryUI initialized")