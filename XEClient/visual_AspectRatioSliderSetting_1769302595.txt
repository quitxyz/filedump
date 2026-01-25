-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:56:34
-- Luau version 6, Types version 3
-- Time taken: 0.012239 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = Parent_upvr_2.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local AspectRatio_upvr = Parent_upvr.Parent.AspectRatio
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: AspectRatio_upvr (readonly)
    ]]
    local clamped_4 = math.clamp(arg1, 0.1, 1.2)
    Parent_upvr_2.Position = UDim2.new((clamped_4 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
    local var10 = math.floor(clamped_4 * 10 + 0.5) / 10
    TextBox_upvr.Text = tostring(var10)
    AspectRatio_upvr.Value = var10
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", var10)
    end
end
local function updateSliderFromMouse_upvr() -- Line 46, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr_2 (readonly)
        [5]: AspectRatio_upvr (readonly)
        [6]: TextBox_upvr (readonly)
        [7]: var7_upvw (read and write)
    ]]
    local X = Parent_upvr.AbsoluteSize.X
    local var12
    if X <= 0 then
    else
        var12 = Parent_upvr.AbsolutePosition
        local X_2 = var12.X
        var12 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var14 = X_2 + 0 * X
        local var15 = X_2 + 0.803 * X
        if var12 < var14 then
            var12 = var14
        end
        if var15 < var12 then
        end
        local clamped = math.clamp((var15 - X_2) / X, 0, 0.803)
        Parent_upvr_2.Position = UDim2.new(clamped, 0, -0.192, 0)
        local var17 = math.floor((clamped / 0.803 * 1.0999999999999999 + 0.1) * 10 + 0.5) / 10
        AspectRatio_upvr.Value = var17
        TextBox_upvr.Text = tostring(var17)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", var17)
        end
    end
end
;(function() -- Line 81, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: AspectRatio_upvr (readonly)
        [2]: Parent_upvr_2 (readonly)
        [3]: TextBox_upvr (readonly)
    ]]
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.AspectRatioSliderSetting = AspectRatio_upvr.Value or 0.1
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 90
            --[[ Upvalues[4]:
                [1]: Parent_upvr_2 (copied, readonly)
                [2]: TextBox_upvr (copied, readonly)
                [3]: AspectRatio_upvr (copied, readonly)
                [4]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "AspectRatioSliderSetting" then
                local clamped_5 = math.clamp(arg2, 0.1, 1.2)
                Parent_upvr_2.Position = UDim2.new((clamped_5 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
                local var21 = math.floor(clamped_5 * 10 + 0.5) / 10
                TextBox_upvr.Text = tostring(var21)
                AspectRatio_upvr.Value = var21
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.AspectRatioSliderSetting then
            local clamped_2 = math.clamp(_G.ConfigSystem.settings.AspectRatioSliderSetting, 0.1, 1.2)
            Parent_upvr_2.Position = UDim2.new((clamped_2 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
            local var23 = math.floor(clamped_2 * 10 + 0.5) / 10
            TextBox_upvr.Text = tostring(var23)
            AspectRatio_upvr.Value = var23
        else
            local clamped_3 = math.clamp(0.1, 0.1, 1.2)
            Parent_upvr_2.Position = UDim2.new((clamped_3 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
            local var25 = math.floor(clamped_3 * 10 + 0.5) / 10
            TextBox_upvr.Text = tostring(var25)
            AspectRatio_upvr.Value = var25
        end
    end
    onConfigLoad_upvr = 0.1
    onConfigLoad_upvr = math.clamp(onConfigLoad_upvr, 0.1, 1.2)
    local var26 = onConfigLoad_upvr
    Parent_upvr_2.Position = UDim2.new((var26 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
    var26 = math.floor(var26 * 10 + 0.5) / 10
    local var27 = var26
    TextBox_upvr.Text = tostring(var27)
    AspectRatio_upvr.Value = var27
end)()
local function _() -- Line 119, Named "saveOnMouseRelease"
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1 = tonumber(TextBox_upvr.Text)
        if tonumber_result1 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", tonumber_result1)
        end
    end
end
local var31_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 130
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr_2 (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var31_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr_2.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var31_upvw then
            var31_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 139
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var31_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var31_upvw then
                    var31_upvw:Disconnect()
                    var31_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 154
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_2 and _G.ConfigSystem then
                _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", tonumber_result1_2)
            end
        end
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 162
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: AspectRatio_upvr (readonly)
    ]]
    local tonumber_result1_3 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_3 then
        updateSliderPositionFromFov_upvr(tonumber_result1_3, true)
    else
        TextBox_upvr.Text = tostring(AspectRatio_upvr.Value)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript

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
        12 [string] = AspectRatioSliderSetting

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

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = onSettingChanged
        8 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [number] = 0.1
        9 [string] = Value
        10 [string] = AspectRatioSliderSetting
        11 [string] = onConfigLoad
        12 [number] = 1.2
        13 [string] = math
        14 [string] = clamp
        16 [number] = 1.0999999999999999
        17 [number] = 0.803
        18 [string] = UDim2
        19 [string] = new
        21 [number] = -0.192
        22 [string] = Position
        23 [number] = 10
        24 [number] = 0.5
        25 [string] = floor
        27 [string] = tostring
        29 [string] = Text

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
        14 [number] = 0.1
        15 [number] = 1.0999999999999999
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Value
        21 [string] = tostring
        23 [string] = Text
        24 [string] = _G
        26 [string] = ConfigSystem
        27 [string] = onSettingChanged
        28 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [number] = 0.1
        2 [number] = 1.2
        3 [string] = math
        4 [string] = clamp
        6 [number] = 1.0999999999999999
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [number] = 10
        14 [number] = 0.5
        15 [string] = floor
        17 [string] = tostring
        19 [string] = Text
        20 [string] = Value
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = AspectRatioSliderSetting

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
        12 [string] = AspectRatioSliderSetting

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
        3 [Instance] = AspectRatio
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AspectRatioSliderSetting
        2 [number] = 0.1
        3 [number] = 1.2
        4 [string] = math
        5 [string] = clamp
        7 [number] = 1.0999999999999999
        8 [number] = 0.803
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = 10
        15 [number] = 0.5
        16 [string] = floor
        18 [string] = tostring
        20 [string] = Text
        21 [string] = Value

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = AspectRatio
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
        14 [number] = 0.1
        15 [number] = 1.0999999999999999
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Value
        21 [string] = tostring
        23 [string] = Text
        24 [string] = _G
        26 [string] = ConfigSystem
        27 [string] = onSettingChanged
        28 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = AspectRatio

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
        3 [Instance] = AspectRatio

Function Constants: updateSliderPositionFromFov
        1 [number] = 0.1
        2 [number] = 1.2
        3 [string] = math
        4 [string] = clamp
        6 [number] = 1.0999999999999999
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [number] = 10
        14 [number] = 0.5
        15 [string] = floor
        17 [string] = tostring
        19 [string] = Text
        20 [string] = Value
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = AspectRatioSliderSetting

====================================================================================================
]]
