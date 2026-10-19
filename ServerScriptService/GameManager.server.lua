-- GameManager.server.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameModule = require(ReplicatedStorage.Modules.GameModule)

local function startGame()
    GameModule.startGame()
end

local function endGame()
    GameModule.endGame()
end

game:GetService("RunService").Heartbeat:Connect(function()
    GameModule.updateGame()
end)

print("GameManager initialized")