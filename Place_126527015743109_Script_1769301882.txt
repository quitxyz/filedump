-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle3.LocalScript
-- Took 0.29s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:44:18
-- Luau version 6, Types version 3
-- Time taken: 0.004398 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local DT_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("DT")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function updateVisuals_upvr(arg1, arg2) -- Line 15, Named "updateVisuals"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: DT_upvr (readonly)
        [3]: udim2_upvr (readonly)
        [4]: udim2_upvr_2 (readonly)
        [5]: TweenService_upvr (readonly)
        [6]: Frame2_upvr (readonly)
        [7]: TweenInfo_new_result1_upvr (readonly)
    ]]
    local var8
    if var8 then
    else
        var8 = true
        var7_upvw = var8
        var8 = DT_upvr.Value
        if var8 ~= arg1 then
            var8 = DT_upvr
            var8.Value = arg1
        end
        local function INLINED() -- Internal function, doesn't exist in bytecode
            var8 = udim2_upvr
            return var8
        end
        if not arg1 or not INLINED() then
            var8 = udim2_upvr_2
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var8;
        }):Play()
        if arg2 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("doubletap", arg1)
        end
        var7_upvw = false
    end
end
DT_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 35
    --[[ Upvalues[2]:
        [1]: updateVisuals_upvr (readonly)
        [2]: DT_upvr (readonly)
    ]]
    updateVisuals_upvr(DT_upvr.Value, true)
end)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 40
    --[[ Upvalues[1]:
        [1]: DT_upvr (readonly)
    ]]
    DT_upvr.Value = not DT_upvr.Value
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.doubletap = DT_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 50
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: DT_upvr (readonly)
            [3]: udim2_upvr (readonly)
            [4]: udim2_upvr_2 (readonly)
            [5]: TweenService_upvr (readonly)
            [6]: Frame2_upvr (readonly)
            [7]: TweenInfo_new_result1_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "doubletap" then
            var7_upvw = true
            DT_upvr.Value = arg2
            if not arg2 or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            var7_upvw = false
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
else
    onConfigLoad_upvr = warn
    onConfigLoad_upvr("ConfigSystem не найдена! Настройка BAim не будет сохраняться.")
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle3.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = doubletap
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: updateVisuals

Function Upvalues: updateVisuals

Function Constants: updateVisuals
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = doubletap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = DT
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = doubletap
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: updateVisuals

Function Upvalues: updateVisuals
        1 [boolean] = false
        2 [Instance] = DT
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: updateVisuals
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = doubletap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = DT

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = updateVisuals
        2 [Instance] = DT

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================
]]
