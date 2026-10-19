-- ShopManager.server.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ShopModule = require(ReplicatedStorage.Modules.ShopModule)

local function onItemPurchased(player, itemId)
    ShopModule.purchaseItem(player, itemId)
end

ReplicatedStorage.Remotes.PurchaseItem.OnServerEvent:Connect(onItemPurchased)

print("ShopManager initialized")