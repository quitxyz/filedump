-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.Frame.slidebar3.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:49:23
-- Luau version 6, Types version 3
-- Time taken: 0.007543 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local spinbotangle_upvr = Parent_2_upvr.Parent.Parent.Frame.spinbotangle
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = -180
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[4]:
        [1]: var9_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: spinbotangle_upvr (readonly)
    ]]
    local clamped_4 = math.clamp(arg1, -180, 181)
    var9_upvw = clamped_4
    Parent_upvr.Position = UDim2.new((clamped_4 - -180) / 361 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_4)
    spinbotangle_upvr.Value = clamped_4
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("SpinbotAngleok", clamped_4)
    end
end
local function updateSliderFromMouse_upvr() -- Line 42, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: var9_upvw (read and write)
        [6]: spinbotangle_upvr (readonly)
        [7]: TextBox_upvr (readonly)
    ]]
    local X = Parent_2_upvr.AbsoluteSize.X
    local var12
    if X <= 0 then
    else
        var12 = Parent_2_upvr.AbsolutePosition
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
        Parent_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        local floored = math.floor(clamped / 0.803 * 361 + -180)
        var9_upvw = floored
        spinbotangle_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
    end
end
local clamped_3 = math.clamp(-180, -180, 181)
var9_upvw = clamped_3
local var19_upvw = var9_upvw
Parent_upvr.Position = UDim2.new((clamped_3 - -180) / 361 * 0.803, 0, -0.192, 0)
TextBox_upvr.Text = tostring(clamped_3)
spinbotangle_upvr.Value = clamped_3
local var21_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 71
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var21_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var21_upvw then
            var21_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 79
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var21_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var21_upvw then
                    var21_upvw:Disconnect()
                    var21_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 94
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: var19_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            var7_upvw = false
            if _G.ConfigSystem then
                _G.ConfigSystem.onSettingChanged("SpinbotAngleok", var19_upvw)
            end
        end
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 107
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: spinbotangle_upvr (readonly)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(tonumber_result1, true)
    else
        TextBox_upvr.Text = tostring(spinbotangle_upvr.Value)
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.SpinbotAngleok = var19_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 123
        --[[ Upvalues[5]:
            [1]: var19_upvw (read and write)
            [2]: Parent_upvr (readonly)
            [3]: TextBox_upvr (readonly)
            [4]: spinbotangle_upvr (readonly)
            [5]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "SpinbotAngleok" then
            local clamped_2 = math.clamp(arg2, -180, 181)
            var19_upvw = clamped_2
            Parent_upvr.Position = UDim2.new((clamped_2 - -180) / 361 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_2)
            spinbotangle_upvr.Value = clamped_2
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.Frame.slidebar3.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = SpinbotAngleok
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

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
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = SpinbotAngleok

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
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
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
        20 [string] = SpinbotAngleok

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = spinbotangle
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = SpinbotAngleok
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = -180

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = SpinbotAngleok

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

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar3
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = -180
        6 [Instance] = spinbotangle
        7 [Instance] = TextBox

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
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = spinbotangle

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = spinbotangle

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
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
        20 [string] = SpinbotAngleok

====================================================================================================
]]
