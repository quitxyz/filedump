-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.LocalScript4
-- Took 0.36s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:52:14
-- Luau version 6, Types version 3
-- Time taken: 0.001651 seconds

local LocalPlayer = game:GetService("Players").LocalPlayer
local var2_upvw
local function bindHumanoid(arg1) -- Line 7
    --[[ Upvalues[1]:
        [1]: var2_upvw (read and write)
    ]]
    if var2_upvw then
        var2_upvw:Disconnect()
        var2_upvw = nil
    end
    local Humanoid_upvr = arg1:WaitForChild("Humanoid", 5)
    if not Humanoid_upvr then
    else
        Humanoid_upvr.JumpPower = 30
        Humanoid_upvr.UseJumpPower = true
        var2_upvw = Humanoid_upvr:GetPropertyChangedSignal("JumpPower"):Connect(function() -- Line 19
            --[[ Upvalues[1]:
                [1]: Humanoid_upvr (readonly)
            ]]
            if Humanoid_upvr.JumpPower ~= 30 then
                Humanoid_upvr.JumpPower = 30
            end
        end)
    end
end
if LocalPlayer.Character then
    bindHumanoid(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(bindHumanoid)
