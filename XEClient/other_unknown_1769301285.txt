-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.storage.wt.container.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:34:43
-- Luau version 6, Types version 3
-- Time taken: 0.002532 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Parent_upvr = script.Parent
Parent_upvr:WaitForChild("nick").Text = LocalPlayer_upvr.Name
local var4_upvw = 0
local var5_upvw = 0
local var6_upvw = 1
local UIGradient_upvr = Parent_upvr:WaitForChild("client"):WaitForChild("UIGradient")
local clientcolor_upvr = Parent_upvr.Parent.Parent:WaitForChild("clientcolor")
game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 29
    --[[ Upvalues[7]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var4_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var5_upvw (read and write)
        [5]: var6_upvw (read and write)
        [6]: UIGradient_upvr (readonly)
        [7]: clientcolor_upvr (readonly)
    ]]
    var4_upvw += (math.floor(LocalPlayer_upvr:GetNetworkPing() * 1000) - var4_upvw) * math.clamp(arg1 * 10, 0, 1)
    Parent_upvr.ping.Text = string.format("%dms", var4_upvw)
    var5_upvw = (var5_upvw + 30 * arg1) % 360
    if 360 <= var5_upvw then
        var5_upvw = 360
        var6_upvw = -1
    elseif var5_upvw <= 0 then
        var5_upvw = 0
        var6_upvw = 1
    end
    UIGradient_upvr.Rotation = var5_upvw
    local Value = clientcolor_upvr.Value
    UIGradient_upvr.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Value), ColorSequenceKeypoint.new(1, Value:Lerp(Color3.new(1, 1, 1), 0.3))})
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.storage.wt.container.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 1000
        2 [string] = GetNetworkPing
        3 [string] = math
        4 [string] = floor
        6 [number] = 10
        7 [string] = clamp
        9 [string] = ping
        10 [string] = string
        11 [string] = format
        13 [string] = %dms
        14 [string] = Text
        15 [number] = 360
        16 [string] = Rotation
        17 [string] = Value
        18 [string] = ColorSequence
        19 [string] = new
        21 [string] = ColorSequenceKeypoint
        23 [string] = Color3
        25 [number] = 0.3
        26 [string] = Lerp
        27 [string] = Color

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [number] = 375.0000000000001
        3 [Instance] = container
        4 [number] = 337.08951575215906
        5 [number] = 1
        6 [Instance] = UIGradient
        7 [Instance] = clientcolor

Function Constants: Unknown Name
        1 [number] = 1000
        2 [string] = GetNetworkPing
        3 [string] = math
        4 [string] = floor
        6 [number] = 10
        7 [string] = clamp
        9 [string] = ping
        10 [string] = string
        11 [string] = format
        13 [string] = %dms
        14 [string] = Text
        15 [number] = 360
        16 [string] = Rotation
        17 [string] = Value
        18 [string] = ColorSequence
        19 [string] = new
        21 [string] = ColorSequenceKeypoint
        23 [string] = Color3
        25 [number] = 0.3
        26 [string] = Lerp
        27 [string] = Color

====================================================================================================
]]
