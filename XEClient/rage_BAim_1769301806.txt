-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle1.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:24
-- Luau version 6, Types version 3
-- Time taken: 0.003650 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local BAim_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("BAim")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local function setBAimEnabled_upvr(arg1, arg2) -- Line 11, Named "setBAimEnabled"
    --[[ Upvalues[6]:
        [1]: BAim_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    BAim_upvr.Value = arg1
    local var7
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var7 = udim2_upvr_2
        return var7
    end
    if not arg1 or not INLINED() then
        var7 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var7;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("BAim", arg1)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 23
    --[[ Upvalues[2]:
        [1]: setBAimEnabled_upvr (readonly)
        [2]: BAim_upvr (readonly)
    ]]
    setBAimEnabled_upvr(not BAim_upvr.Value, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.BAim = BAim_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 33
        --[[ Upvalues[7]:
            [1]: BAim_upvr (readonly)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "BAim" then
            BAim_upvr.Value = arg2
            if not arg2 or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = BAim
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

Function Dump: setBAimEnabled

Function Upvalues: setBAimEnabled

Function Constants: setBAimEnabled
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = BAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = BAim
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = BAim
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: setBAimEnabled

Function Upvalues: setBAimEnabled
        1 [Instance] = BAim
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setBAimEnabled
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = BAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setBAimEnabled
        2 [Instance] = BAim

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================
]]
