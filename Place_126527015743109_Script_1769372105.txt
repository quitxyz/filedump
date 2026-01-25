-- Script Path: game:GetService("StarterPlayer").StarterCharacterScripts.LocalScript1
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:15:01
-- Luau version 6, Types version 3
-- Time taken: 0.001157 seconds

local SoundService_upvr = game:GetService("SoundService")
local Debris_upvr = game:GetService("Debris")
script.Parent:WaitForChild("Humanoid").Died:Connect(function() -- Line 12
    --[[ Upvalues[2]:
        [1]: SoundService_upvr (readonly)
        [2]: Debris_upvr (readonly)
    ]]
    local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://128306955968079"
    Sound.Volume = 0.3
    Sound.Parent = SoundService_upvr
    Sound:Play()
    Debris_upvr:AddItem(Sound, 10)
end)
