-- PlayerManager.server.lua

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local PlayerModule = require(ReplicatedStorage.Modules.PlayerModule)

local function onPlayerAdded(player)
    PlayerModule.initializePlayer(player)
end

local function onPlayerRemoving(player)
    PlayerModule.cleanupPlayer(player)
end

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)

print("PlayerManager initialized")