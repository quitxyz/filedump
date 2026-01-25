-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar1.Frame2.TextButton.LocalScript
-- Took 0.32s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:04
-- Luau version 6, Types version 3
-- Time taken: 0.009903 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = Parent_upvr_2.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local MinDamage_upvr = Parent_upvr.Parent.Parent.Frame.Parent.Frame.MinDamage
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: MinDamage_upvr (readonly)
    ]]
    local clamped = math.clamp(arg1, 0, 139)
    Parent_upvr_2.Position = UDim2.new((clamped - 0) / 139 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped)
    MinDamage_upvr.Value = clamped
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("FOVSetting", clamped)
    end
end
local function updateSliderFromMouse_upvr() -- Line 43, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr_2 (readonly)
        [5]: MinDamage_upvr (readonly)
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
        local clamped_3 = math.clamp((var14 - X_2) / X, 0, 0.803)
        Parent_upvr_2.Position = UDim2.new(clamped_3, 0, -0.192, 0)
        local floored = math.floor(clamped_3 / 0.803 * 139 + 0)
        MinDamage_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("FOVSetting", floored)
        end
    end
end
;(function() -- Line 75, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: MinDamage_upvr (readonly)
        [2]: Parent_upvr_2 (readonly)
        [3]: TextBox_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    task.wait(1)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [47] 30. Error Block 3 start (CF ANALYSIS FAILED)
    local clamped_2 = math.clamp(_G.ConfigSystem.settings.FOVSetting, 0, 139)
    Parent_upvr_2.Position = UDim2.new((clamped_2 - 0) / 139 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_2)
    MinDamage_upvr.Value = clamped_2
    do
        return
    end
    -- KONSTANTERROR: [47] 30. Error Block 3 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [90] 62. Error Block 4 start (CF ANALYSIS FAILED)
    local clamped_4 = math.clamp(0, 0, 139)
    Parent_upvr_2.Position = UDim2.new((clamped_4 - 0) / 139 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_4)
    MinDamage_upvr.Value = clamped_4
    -- KONSTANTERROR: [90] 62. Error Block 4 end (CF ANALYSIS FAILED)
end)()
local var20_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 110
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr_2 (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var20_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr_2.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var20_upvw then
            var20_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 119
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var20_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var20_upvw then
                    var20_upvw:Disconnect()
                    var20_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 134
    --[[ Upvalues[1]:
        [1]: var7_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 141
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: MinDamage_upvr (readonly)
    ]]
    local tonumber_result1_5 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_5 then
        updateSliderPositionFromFov_upvr(tonumber_result1_5, true)
    else
        TextBox_upvr.Text = tostring(MinDamage_upvr.Value)
    end
end)
local function _() -- Line 152, Named "saveOnMouseRelease"
    --[[ Upvalues[3]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
        [3]: updateSliderPositionFromFov_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1_4 = tonumber(TextBox_upvr.Text)
        if tonumber_result1_4 then
            updateSliderPositionFromFov_upvr(tonumber_result1_4, true)
        end
    end
end
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 163
    --[[ Upvalues[3]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
        [3]: updateSliderPositionFromFov_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_2 then
                updateSliderPositionFromFov_upvr(tonumber_result1_2, true)
            end
        end
        var7_upvw = false
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar1.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Text
        6 [string] = tonumber

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber

====================================================================================================

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
        10 [string] = FOVSetting
        11 [string] = onConfigLoad
        12 [string] = math
        13 [string] = clamp
        15 [number] = 139
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
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
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
        20 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox
        3 [function] = updateSliderPositionFromFov

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber

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
        3 [Instance] = MinDamage
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FOVSetting
        2 [string] = math
        3 [string] = clamp
        5 [number] = 139
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
        1 [Instance] = slidebar1
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = MinDamage
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
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = MinDamage

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
        3 [Instance] = MinDamage

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
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
        20 [string] = FOVSetting

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar1.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Text
        6 [string] = tonumber

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber

====================================================================================================

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
        10 [string] = FOVSetting
        11 [string] = onConfigLoad
        12 [string] = math
        13 [string] = clamp
        15 [number] = 139
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
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
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
        20 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox
        3 [function] = updateSliderPositionFromFov

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber

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
        3 [Instance] = MinDamage
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FOVSetting
        2 [string] = math
        3 [string] = clamp
        5 [number] = 139
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
        1 [Instance] = slidebar1
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = MinDamage
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
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = MinDamage

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
        3 [Instance] = MinDamage

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
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
        20 [string] = FOVSetting

====================================================================================================
]]
