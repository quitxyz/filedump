-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle2.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:40:42
-- Luau version 6, Types version 3
-- Time taken: 0.003661 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local AntiF_upvr = script.Parent.Parent:FindFirstChild("AntiF")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function setToggle_upvr(arg1, arg2) -- Line 14, Named "setToggle"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: AntiF_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var8
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var8 = udim2_upvr
        return var8
    end
    if not var7_upvw or not INLINED() then
        var8 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var8;
    }):Play()
    if AntiF_upvr then
        AntiF_upvr.Value = var7_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AntiFToggle", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 31
    --[[ Upvalues[2]:
        [1]: setToggle_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setToggle_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AntiFToggle = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 41
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: AntiF_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AntiFToggle" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if AntiF_upvr then
                AntiF_upvr.Value = var7_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AntiFToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggle

Function Upvalues: setToggle

Function Constants: setToggle
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = AntiFToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggle
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = AntiF
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AntiFToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: setToggle

Function Upvalues: setToggle
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = AntiF

Function Constants: setToggle
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = AntiFToggle

====================================================================================================
]]
