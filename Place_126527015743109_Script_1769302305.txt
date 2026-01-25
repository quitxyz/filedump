-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle4.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:51:43
-- Luau version 6, Types version 3
-- Time taken: 0.002494 seconds

local Frame2_upvr = script.Parent.Frame2
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 9
    --[[ Upvalues[5]:
        [1]: Frame2_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local var7
    if 0.1 >= Frame2_upvr.Position.X.Scale then
        var7 = false
    else
        var7 = true
    end
    if not var7 or not udim2_upvr_2 then
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = udim2_upvr;
    }):Play()
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle4.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = X
        3 [string] = Scale
        4 [number] = 0.1
        6 [string] = Create
        7 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [UDim2] = {0, 0}, {-0.191819623, 0}
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = X
        3 [string] = Scale
        4 [number] = 0.1
        6 [string] = Create
        7 [string] = Play

====================================================================================================
]]
