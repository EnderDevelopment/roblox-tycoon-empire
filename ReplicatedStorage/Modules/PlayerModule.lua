-- PlayerModule.lua

local Players = game:GetService("Players")

local PlayerModule = {}

function PlayerModule.initializePlayer(player)
    -- Initialize player data
    player:SetAttribute("PlayerData", {money = 1000, level = 1})
end

function PlayerModule.cleanupPlayer(player)
    -- Cleanup player data
end

return PlayerModule