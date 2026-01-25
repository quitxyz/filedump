-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:53:36
-- Luau version 6, Types version 3
-- Time taken: 0.016339 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local CurrentCamera_upvw = workspace.CurrentCamera
local Parent = script.Parent
local Parent_2_upvr = script.Parent.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = 70
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 31, Named "updateSliderPositionFromFov"
    --[[ Upvalues[4]:
        [1]: var9_upvw (read and write)
        [2]: Parent_2_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: CurrentCamera_upvw (read and write)
    ]]
    local var10 = math.floor(math.clamp(arg1, 1, 121) * 10 + 0.5) / 10
    var9_upvw = var10
    Parent_2_upvr.Position = UDim2.new((var10 - 1) / 120 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(var10)
    if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
        CurrentCamera_upvw.FieldOfView = var10
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("Fovchanger", var10)
    end
end
local function _() -- Line 54, Named "applyFovToCamera"
    --[[ Upvalues[2]:
        [1]: CurrentCamera_upvw (read and write)
        [2]: var9_upvw (read and write)
    ]]
    if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
        CurrentCamera_upvw.FieldOfView = var9_upvw
    end
end
local Parent_3_upvr = Parent_2_upvr.Parent
local function updateSliderFromMouse_upvr() -- Line 61, Named "updateSliderFromMouse"
    --[[ Upvalues[8]:
        [1]: Parent_3_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_2_upvr (readonly)
        [5]: var9_upvw (read and write)
        [6]: CurrentCamera_upvw (read and write)
        [7]: TextBox_upvr (readonly)
        [8]: var7_upvw (read and write)
    ]]
    local X_2 = Parent_3_upvr.AbsoluteSize.X
    local var13
    if X_2 <= 0 then
    else
        var13 = Parent_3_upvr.AbsolutePosition
        local X = var13.X
        var13 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var15 = X + 0 * X_2
        local var16 = X + 0.803 * X_2
        if var13 < var15 then
            var13 = var15
        end
        if var16 < var13 then
        end
        local clamped = math.clamp((var16 - X) / X_2, 0, 0.803)
        Parent_2_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        local var18 = math.floor((clamped / 0.803 * 120 + 1) * 10 + 0.5) / 10
        var9_upvw = var18
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var18
        end
        TextBox_upvr.Text = tostring(var18)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("Fovchanger", var18)
        end
    end
end
local function setupCameraWatcher_upvr() -- Line 97, Named "setupCameraWatcher"
    --[[ Upvalues[3]:
        [1]: CurrentCamera_upvw (read and write)
        [2]: var7_upvw (read and write)
        [3]: var9_upvw (read and write)
    ]]
    if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
        local any_Connect_result1_upvw = CurrentCamera_upvw:GetPropertyChangedSignal("FieldOfView"):Connect(function() -- Line 100
            --[[ Upvalues[3]:
                [1]: var7_upvw (copied, read and write)
                [2]: CurrentCamera_upvw (copied, read and write)
                [3]: var9_upvw (copied, read and write)
            ]]
            if not var7_upvw and 0.1 < math.abs(CurrentCamera_upvw.FieldOfView - var9_upvw) then
                task.wait(0.1)
                if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                    CurrentCamera_upvw.FieldOfView = var9_upvw
                end
            end
        end)
        CurrentCamera_upvw.AncestryChanged:Connect(function() -- Line 111
            --[[ Upvalues[2]:
                [1]: CurrentCamera_upvw (copied, read and write)
                [2]: any_Connect_result1_upvw (read and write)
            ]]
            if not CurrentCamera_upvw.Parent and any_Connect_result1_upvw then
                any_Connect_result1_upvw:Disconnect()
            end
        end)
    end
end
local function _() -- Line 120, Named "setupRespawnWatcher"
    --[[ Upvalues[4]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: CurrentCamera_upvw (read and write)
        [3]: var9_upvw (read and write)
        [4]: setupCameraWatcher_upvr (readonly)
    ]]
    LocalPlayer_upvr.CharacterAdded:Connect(function() -- Line 121
        --[[ Upvalues[3]:
            [1]: CurrentCamera_upvw (copied, read and write)
            [2]: var9_upvw (copied, read and write)
            [3]: setupCameraWatcher_upvr (copied, readonly)
        ]]
        task.wait(0.5)
        CurrentCamera_upvw = workspace.CurrentCamera
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var9_upvw
        end
        setupCameraWatcher_upvr()
    end)
end
;(function() -- Line 130, Named "initializeWithConfig"
    --[[ Upvalues[6]:
        [1]: var9_upvw (read and write)
        [2]: Parent_2_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: CurrentCamera_upvw (read and write)
        [5]: setupCameraWatcher_upvr (readonly)
        [6]: LocalPlayer_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.Fovchanger = 70
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 137
            --[[ Upvalues[5]:
                [1]: var9_upvw (copied, read and write)
                [2]: Parent_2_upvr (copied, readonly)
                [3]: TextBox_upvr (copied, readonly)
                [4]: CurrentCamera_upvw (copied, read and write)
                [5]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "Fovchanger" then
                local var26 = math.floor(math.clamp(arg2, 1, 121) * 10 + 0.5) / 10
                var9_upvw = var26
                Parent_2_upvr.Position = UDim2.new((var26 - 1) / 120 * 0.803, 0, -0.192, 0)
                TextBox_upvr.Text = tostring(var26)
                if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                    CurrentCamera_upvw.FieldOfView = var26
                end
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.Fovchanger then
            local var27 = math.floor(math.clamp(_G.ConfigSystem.settings.Fovchanger, 1, 121) * 10 + 0.5) / 10
            var9_upvw = var27
            Parent_2_upvr.Position = UDim2.new((var27 - 1) / 120 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(var27)
            if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                CurrentCamera_upvw.FieldOfView = var27
                -- KONSTANTWARNING: GOTO [199] #152
            end
        else
            local var28 = math.floor(math.clamp(70, 1, 121) * 10 + 0.5) / 10
            var9_upvw = var28
            Parent_2_upvr.Position = UDim2.new((var28 - 1) / 120 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(var28)
            if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                CurrentCamera_upvw.FieldOfView = var28
                -- KONSTANTWARNING: GOTO [199] #152
            end
        end
    else
        onConfigLoad_upvr = 70
        onConfigLoad_upvr = math.clamp(onConfigLoad_upvr, 1, 121)
        onConfigLoad_upvr = math.floor(onConfigLoad_upvr * 10 + 0.5) / 10
        local var29 = onConfigLoad_upvr
        var9_upvw = var29
        Parent_2_upvr.Position = UDim2.new((var29 - 1) / 120 * 0.803, 0, -0.192, 0)
        TextBox_upvr.Text = tostring(var29)
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var29
        end
    end
    -- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [199] 152. Error Block 14 start (CF ANALYSIS FAILED)
    var29 = setupCameraWatcher_upvr
    var29()
    var29 = LocalPlayer_upvr.CharacterAdded
    var29 = var29:Connect
    var29(function() -- Line 121
        --[[ Upvalues[3]:
            [1]: CurrentCamera_upvw (copied, read and write)
            [2]: var9_upvw (copied, read and write)
            [3]: setupCameraWatcher_upvr (copied, readonly)
        ]]
        task.wait(0.5)
        CurrentCamera_upvw = workspace.CurrentCamera
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var9_upvw
        end
        setupCameraWatcher_upvr()
    end)
    -- KONSTANTERROR: [199] 152. Error Block 14 end (CF ANALYSIS FAILED)
end)()
local function _() -- Line 164, Named "saveOnMouseRelease"
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1_4 = tonumber(TextBox_upvr.Text)
        if tonumber_result1_4 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("Fovchanger", tonumber_result1_4)
        end
    end
end
local var34_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 173
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_2_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var34_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_2_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var34_upvw then
            var34_upvw = RunService_upvr.Stepped:Connect(function() -- Line 182
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var34_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var34_upvw then
                    var34_upvw:Disconnect()
                    var34_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 196
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_2 then
                if _G.ConfigSystem then
                    _G.ConfigSystem.onSettingChanged("Fovchanger", tonumber_result1_2)
                end
            end
        end
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 203
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: var9_upvw (read and write)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(tonumber_result1, true)
    else
        TextBox_upvr.Text = tostring(var9_upvw)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = tostring

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
        12 [string] = Fovchanger

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
        8 [string] = Stepped
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
        8 [string] = Fovchanger

====================================================================================================

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [string] = Fovchanger
        9 [string] = onConfigLoad
        10 [string] = math
        11 [string] = clamp
        13 [number] = 10
        14 [number] = 0.5
        15 [string] = floor
        17 [number] = 120
        18 [number] = 1
        19 [number] = 0.803
        20 [string] = UDim2
        21 [string] = new
        23 [number] = -0.192
        24 [string] = Position
        25 [string] = tostring
        27 [string] = Text
        28 [string] = Parent
        29 [string] = FieldOfView
        30 [string] = CharacterAdded
        31 [string] = Connect

====================================================================================================

Function Dump: setupRespawnWatcher

Function Upvalues: setupRespawnWatcher

Function Constants: setupRespawnWatcher
        1 [string] = CharacterAdded
        2 [string] = Connect

====================================================================================================

Function Dump: setupCameraWatcher

Function Upvalues: setupCameraWatcher

Function Constants: setupCameraWatcher
        1 [string] = Parent
        2 [string] = FieldOfView
        3 [string] = GetPropertyChangedSignal
        4 [string] = Connect
        5 [string] = AncestryChanged

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
        14 [number] = 1
        15 [number] = 120
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Parent
        21 [string] = FieldOfView
        22 [string] = tostring
        24 [string] = Text
        25 [string] = _G
        27 [string] = ConfigSystem
        28 [string] = onSettingChanged
        29 [string] = Fovchanger

====================================================================================================

Function Dump: applyFovToCamera

Function Upvalues: applyFovToCamera

Function Constants: applyFovToCamera
        1 [string] = Parent
        2 [string] = FieldOfView

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 10
        5 [number] = 0.5
        6 [string] = floor
        8 [number] = 120
        9 [number] = 1
        10 [number] = 0.803
        11 [string] = UDim2
        12 [string] = new
        14 [number] = -0.192
        15 [string] = Position
        16 [string] = tostring
        18 [string] = Text
        19 [string] = Parent
        20 [string] = FieldOfView
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = Fovchanger

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
        12 [string] = Fovchanger

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [number] = 70
        3 [function] = setupCameraWatcher

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = workspace
        6 [Instance] = Workspace
        7 [string] = CurrentCamera
        8 [string] = Parent
        9 [string] = FieldOfView

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

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
        8 [string] = Stepped
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 70
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = Camera
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = Fovchanger
        2 [string] = math
        3 [string] = clamp
        5 [number] = 10
        6 [number] = 0.5
        7 [string] = floor
        9 [number] = 120
        10 [number] = 1
        11 [number] = 0.803
        12 [string] = UDim2
        13 [string] = new
        15 [number] = -0.192
        16 [string] = Position
        17 [string] = tostring
        19 [string] = Text
        20 [string] = Parent
        21 [string] = FieldOfView

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = 70
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = Camera

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 10
        5 [number] = 0.5
        6 [string] = floor
        8 [number] = 120
        9 [number] = 1
        10 [number] = 0.803
        11 [string] = UDim2
        12 [string] = new
        14 [number] = -0.192
        15 [string] = Position
        16 [string] = tostring
        18 [string] = Text
        19 [string] = Parent
        20 [string] = FieldOfView
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = Fovchanger

====================================================================================================

Function Dump: setupCameraWatcher

Function Upvalues: setupCameraWatcher
        1 [Instance] = Camera
        2 [boolean] = false
        3 [number] = 70

Function Constants: setupCameraWatcher
        1 [string] = Parent
        2 [string] = FieldOfView
        3 [string] = GetPropertyChangedSignal
        4 [string] = Connect
        5 [string] = AncestryChanged

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = 70
        6 [Instance] = Camera
        7 [Instance] = TextBox
        8 [boolean] = false

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
        14 [number] = 1
        15 [number] = 120
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Parent
        21 [string] = FieldOfView
        22 [string] = tostring
        24 [string] = Text
        25 [string] = _G
        27 [string] = ConfigSystem
        28 [string] = onSettingChanged
        29 [string] = Fovchanger

====================================================================================================
]]
