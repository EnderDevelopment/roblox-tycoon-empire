-- ShopUI.client.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function purchaseItem(itemId)
    ReplicatedStorage.Remotes.PurchaseItem:FireServer(itemId)
end

-- Example: Connect UI buttons to purchaseItem function

print("ShopUI initialized")