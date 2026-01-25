-- Script Path: game:GetService("Workspace").Komarhvh.Animate
-- Took 0.55s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:25
-- Luau version 6, Types version 3
-- Time taken: 0.066486 seconds

local Parent_upvr = script.Parent
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local var11_upvw = "Standing"
local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 7
    return UserSettings():IsUserFeatureEnabled("UserNoUpdateOnLoop")
end)
local var15_upvr = pcall_result1_3 and pcall_result2_2
local pcall_result1_2, pcall_result2 = pcall(function() -- Line 10
    return UserSettings():IsUserFeatureEnabled("UserAnimateScaleRun")
end)
local var19_upvr = pcall_result1_2 and pcall_result2
local function getRigScale_upvr() -- Line 13, Named "getRigScale"
    --[[ Upvalues[2]:
        [1]: var19_upvr (readonly)
        [2]: Parent_upvr (readonly)
    ]]
    if var19_upvr then
        return Parent_upvr:GetScale()
    end
    return 1
end
