-- Script Path: game:GetService("Workspace").Komarhvh.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:52
-- Luau version 6, Types version 3
-- Time taken: 0.016362 seconds

local Parent_upvr = script.Parent
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local HumanoidRootPart_upvr = Parent_upvr:WaitForChild("HumanoidRootPart")
local CurrentCamera_upvr = workspace.CurrentCamera
Humanoid_upvr.JumpPower = 30
local var5_upvw = 80
local var6_upvw = var5_upvw
if not HumanoidRootPart_upvr:FindFirstChild("LandSound") then
    local Sound_upvw = Instance.new("Sound")
    Sound_upvw.Name = "LandSound"
    Sound_upvw.SoundId = "rbxassetid://109962379271807"
    Sound_upvw.Volume = 0.1
    Sound_upvw.RollOffMode = Enum.RollOffMode.InverseTapered
    Sound_upvw.RollOffMinDistance = 8
    Sound_upvw.RollOffMaxDistance = 60
    Sound_upvw.Parent = HumanoidRootPart_upvr
end
