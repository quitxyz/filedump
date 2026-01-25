-- Script Path: game:GetService("Workspace").FATTg00s3["SSG-08"].GunClient
-- Took 0.65s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:36:24
-- Luau version 6, Types version 3
-- Time taken: 0.169179 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Debris_upvr = game:GetService("Debris")
local Parent_4_upvr = script.Parent
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Configuration_upvr = Parent_4_upvr:WaitForChild("Configuration")
local Remotes = Parent_4_upvr:WaitForChild("Remotes")
local FireShot_upvr = Remotes:WaitForChild("FireShot")
local GunGui_upvr = script:WaitForChild("GunGui")
local var10_upvw = true
local var11_upvw = false
local var12_upvw = false
local var13_upvw
local var14_upvw
local var15_upvw = false
local var16_upvw = Vector3.new(0, 0, 0)
local CurrentCamera_upvr = workspace.CurrentCamera
local var18_upvw
local var19_upvw
local var20_upvw
local var21_upvw = false
local var22_upvw = true
local var23_upvw
local function _() -- Line 42, Named "checkScopeConfig"
    --[[ Upvalues[2]:
        [1]: ReplicatedStorage_upvr (readonly)
        [2]: var22_upvw (read and write)
    ]]
    local cfgg = ReplicatedStorage_upvr:FindFirstChild("cfgg")
    if cfgg then
        local scope_4 = cfgg:FindFirstChild("scope")
        if scope_4 then
            var22_upvw = scope_4.Value
            return var22_upvw
        end
    end
    return true
end
