-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:39:03
-- Luau version 6, Types version 3
-- Time taken: 0.012483 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local Fov_upvr = Parent_2_upvr.Parent.Parent.Frame.Fov
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 23, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: Fov_upvr (readonly)
    ]]
    local clamped_2 = math.clamp(arg1, 0, 361)
    Parent_upvr.Position = UDim2.new((clamped_2 - 0) / 361 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_2)
    Fov_upvr.Value = clamped_2
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("FOV", clamped_2)
    end
end
local function updateSliderFromMouse_upvr() -- Line 38, Named "updateSliderFromMouse"
    --[[ Upvalues[6]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: Fov_upvr (readonly)
        [6]: TextBox_upvr (readonly)
    ]]
    local X_2 = Parent_2_upvr.AbsoluteSize.X
    local var11
    if X_2 <= 0 then
    else
        var11 = Parent_2_upvr.AbsolutePosition
        local X = var11.X
        var11 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var13 = X + 0 * X_2
        local var14 = X + 0.803 * X_2
        if var11 < var13 then
            var11 = var13
        end
        if var14 < var11 then
        end
        local clamped_4 = math.clamp((var14 - X) / X_2, 0, 0.803)
        Parent_upvr.Position = UDim2.new(clamped_4, 0, -0.192, 0)
        local floored = math.floor(clamped_4 / 0.803 * 361 + 0)
        Fov_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
        if _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("FOV", floored)
        end
    end
end
local clamped_3 = math.clamp(0, 0, 361)
Parent_upvr.Position = UDim2.new((clamped_3 - 0) / 361 * 0.803, 0, -0.192, 0)
TextBox_upvr.Text = tostring(clamped_3)
Fov_upvr.Value = clamped_3
local var19_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 73
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var19_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var19_upvw then
            var19_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 81
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var19_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var19_upvw then
                    var19_upvw:Disconnect()
                    var19_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 96
    --[[ Upvalues[1]:
        [1]: var7_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 103
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: Fov_upvr (readonly)
    ]]
    local tonumber_result1_3 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_3 then
        updateSliderPositionFromFov_upvr(tonumber_result1_3, true)
    else
        TextBox_upvr.Text = tostring(Fov_upvr.Value)
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.FOV = Fov_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 123
        --[[ Upvalues[4]:
            [1]: Parent_upvr (readonly)
            [2]: TextBox_upvr (readonly)
            [3]: Fov_upvr (readonly)
            [4]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "FOV" then
            local tonumber_result1 = tonumber(arg2)
            if tonumber_result1 then
                local clamped_5 = math.clamp(tonumber_result1, 0, 361)
                Parent_upvr.Position = UDim2.new((clamped_5 - 0) / 361 * 0.803, 0, -0.192, 0)
                TextBox_upvr.Text = tostring(clamped_5)
                Fov_upvr.Value = clamped_5
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
else
    onConfigLoad_upvr = warn
    onConfigLoad_upvr("ConfigSystem не найдена! Настройка FOV не будет сохраняться.")
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FOV
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [number] = 361
        8 [number] = 0
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value

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
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOV

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
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
        20 [string] = FOV

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

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = Fov
        6 [Instance] = TextBox

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
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOV

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
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = Fov

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
        3 [Instance] = Fov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
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
        20 [string] = FOV

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = Fov
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FOV
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [number] = 361
        8 [number] = 0
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value

====================================================================================================
]]
