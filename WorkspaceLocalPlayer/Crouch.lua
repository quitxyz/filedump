-- Script Path: Nil parented
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:37
-- Luau version 6, Types version 3
-- Time taken: 0.012507 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Humanoid_upvr = Parent:WaitForChild("Humanoid")
local HumanoidRootPart_upvr = Parent:WaitForChild("HumanoidRootPart")
local C_upvr = Enum.KeyCode.C
local LeftControl_upvr = Enum.KeyCode.LeftControl
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = 0
local WalkSpeed_upvw = Humanoid_upvr.WalkSpeed
local var11_upvw
local var12_upvw
local var13_upvw
local function _() -- Line 31, Named "getAnimator"
    --[[ Upvalues[2]:
        [1]: var13_upvw (read and write)
        [2]: Humanoid_upvr (readonly)
    ]]
    if not var13_upvw then
        var13_upvw = Humanoid_upvr:FindFirstChildOfClass("Animator")
        if not var13_upvw then
            var13_upvw = Instance.new("Animator")
            var13_upvw.Parent = Humanoid_upvr
        end
    end
    return var13_upvw
end
