-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle2.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:34
-- Luau version 6, Types version 3
-- Time taken: 0.001975 seconds

local Frame2_upvr = script.Parent.Frame2
local ShotTP_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("ShotTP")
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 10
    --[[ Upvalues[6]:
        [1]: ShotTP_upvr (readonly)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    local var8 = not ShotTP_upvr.Value
    ShotTP_upvr.Value = var8
    local var9
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var9 = udim2_upvr
        return var9
    end
    if not var8 or not INLINED() then
        var9 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var9;
    }):Play()
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = ShotTP
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: Unknown Name
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================
]]
