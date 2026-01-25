-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:42:42
-- Luau version 6, Types version 3
-- Time taken: 0.010139 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = Parent_upvr_2.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local HitChance_upvr = Parent_upvr.Parent.Parent.Frame.Parent.Frame.HitChance
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: HitChance_upvr (readonly)
    ]]
    local clamped = math.clamp(arg1, 0, 100)
    Parent_upvr_2.Position = UDim2.new((clamped - 0) / 100 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped)
    HitChance_upvr.Value = clamped
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("HitChanceSetting", clamped)
    end
end
local function updateSliderFromMouse_upvr() -- Line 44, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr_2 (readonly)
        [5]: HitChance_upvr (readonly)
        [6]: TextBox_upvr (readonly)
        [7]: var7_upvw (read and write)
    ]]
    local X = Parent_upvr.AbsoluteSize.X
    local var11
    if X <= 0 then
    else
        var11 = Parent_upvr.AbsolutePosition
        local X_2 = var11.X
        var11 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var13 = X_2 + 0 * X
        local var14 = X_2 + 0.803 * X
        if var11 < var13 then
            var11 = var13
        end
        if var14 < var11 then
        end
        local clamped_2 = math.clamp((var14 - X_2) / X, 0, 0.803)
        Parent_upvr_2.Position = UDim2.new(clamped_2, 0, -0.192, 0)
        local floored = math.floor(clamped_2 / 0.803 * 100 + 0)
        HitChance_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("HitChanceSetting", floored)
        end
    end
end
;(function() -- Line 76, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: HitChance_upvr (readonly)
        [2]: Parent_upvr_2 (readonly)
        [3]: TextBox_upvr (readonly)
    ]]
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.HitChanceSetting = HitChance_upvr.Value or 0
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 85
            --[[ Upvalues[4]:
                [1]: Parent_upvr_2 (copied, readonly)
                [2]: TextBox_upvr (copied, readonly)
                [3]: HitChance_upvr (copied, readonly)
                [4]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "HitChanceSetting" then
                local clamped_3 = math.clamp(arg2, 0, 100)
                Parent_upvr_2.Position = UDim2.new((clamped_3 - 0) / 100 * 0.803, 0, -0.192, 0)
                TextBox_upvr.Text = tostring(clamped_3)
                HitChance_upvr.Value = clamped_3
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.HitChanceSetting then
            local clamped_5 = math.clamp(_G.ConfigSystem.settings.HitChanceSetting, 0, 100)
            Parent_upvr_2.Position = UDim2.new((clamped_5 - 0) / 100 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_5)
            HitChance_upvr.Value = clamped_5
        else
            local clamped_4 = math.clamp(0, 0, 100)
            Parent_upvr_2.Position = UDim2.new((clamped_4 - 0) / 100 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_4)
            HitChance_upvr.Value = clamped_4
        end
    end
    onConfigLoad_upvr = 0
    onConfigLoad_upvr = math.clamp(onConfigLoad_upvr, 0, 100)
    local var22 = onConfigLoad_upvr
    Parent_upvr_2.Position = UDim2.new((var22 - 0) / 100 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(var22)
    HitChance_upvr.Value = var22
end)()
local var24_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 113
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr_2 (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var24_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr_2.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var24_upvw then
            var24_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 122
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var24_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var24_upvw then
                    var24_upvw:Disconnect()
                    var24_upvw = nil
                end
            end)
        end
    end
end)
local function _() -- Line 137, Named "saveOnMouseRelease"
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1 = tonumber(TextBox_upvr.Text)
        if tonumber_result1 then
            _G.ConfigSystem.onSettingChanged("HitChanceSetting", tonumber_result1)
        end
    end
end
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 148
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_5 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_5 then
                _G.ConfigSystem.onSettingChanged("HitChanceSetting", tonumber_result1_5)
            end
        end
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 156
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: HitChance_upvr (readonly)
    ]]
    local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_2 then
        updateSliderPositionFromFov_upvr(tonumber_result1_2, true)
    else
        TextBox_upvr.Text = tostring(HitChance_upvr.Value)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = HitChanceSetting

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = onSettingChanged
        8 [string] = HitChanceSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [number] = 0
        9 [string] = Value
        10 [string] = HitChanceSetting
        11 [string] = onConfigLoad
        12 [string] = math
        13 [string] = clamp
        15 [number] = 100
        16 [number] = 0.803
        17 [string] = UDim2
        18 [string] = new
        20 [number] = -0.192
        21 [string] = Position
        22 [string] = tostring
        24 [string] = Text

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = 0
        15 [number] = 100
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = HitChanceSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 100
        5 [number] = 0
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = HitChanceSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = HitChanceSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = UserInputService
        2 [number] = 0
        3 [Instance] = Frame2
        4 [boolean] = false
        5 [function] = updateSliderFromMouse
        7 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = HitChance
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = HitChanceSetting
        2 [string] = math
        3 [string] = clamp
        5 [number] = 100
        6 [number] = 0
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = HitChance
        6 [Instance] = TextBox
        7 [boolean] = false

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = 0
        15 [number] = 100
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = HitChanceSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = HitChance

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = HitChance

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 100
        5 [number] = 0
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = HitChanceSetting

====================================================================================================
]]
