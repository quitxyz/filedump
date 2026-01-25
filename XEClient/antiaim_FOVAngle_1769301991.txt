-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:46:29
-- Luau version 6, Types version 3
-- Time taken: 0.021045 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character_upvw = LocalPlayer.Character
if not Character_upvw then
    Character_upvw = LocalPlayer.CharacterAdded:Wait()
end
local HumanoidRootPart_upvw = Character_upvw:WaitForChild("HumanoidRootPart")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local Fov_upvr = Parent_2_upvr.Parent.Fov
local update_upvr = game.ReplicatedStorage:WaitForChild("update")
local var11_upvw = false
local var12_upvw = 0
local var13_upvw
local var14_upvw = -180
local var15_upvw = -180
local var16_upvw = 0
local function _(arg1) -- Line 38, Named "fireUpdate"
    --[[ Upvalues[2]:
        [1]: var16_upvw (read and write)
        [2]: update_upvr (readonly)
    ]]
    local tick_result1_2 = tick()
    if 0.05 <= tick_result1_2 - var16_upvw then
        var16_upvw = tick_result1_2
        pcall(function() -- Line 42
            --[[ Upvalues[2]:
                [1]: update_upvr (copied, readonly)
                [2]: arg1 (readonly)
            ]]
            update_upvr:FireServer(arg1)
        end)
    end
end
local function _(arg1) -- Line 48, Named "applyRotationToCharacter"
    --[[ Upvalues[2]:
        [1]: HumanoidRootPart_upvw (read and write)
        [2]: var15_upvw (read and write)
    ]]
    if not HumanoidRootPart_upvw or not HumanoidRootPart_upvw.Parent then
    else
        if var15_upvw == arg1 then return end
        var15_upvw = arg1
        HumanoidRootPart_upvw.CFrame = CFrame.new(HumanoidRootPart_upvw.CFrame.Position) * CFrame.Angles(0, math.rad(arg1), 0)
    end
end
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 62, Named "updateSliderPositionFromFov"
    --[[ Upvalues[8]:
        [1]: var14_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: Fov_upvr (readonly)
        [5]: HumanoidRootPart_upvw (read and write)
        [6]: var15_upvw (read and write)
        [7]: var16_upvw (read and write)
        [8]: update_upvr (readonly)
    ]]
    local rounded_upvr = math.floor(math.clamp(arg1, -180, 181) + 0.5)
    if var14_upvw == rounded_upvr and not arg2 then
    else
        var14_upvw = rounded_upvr
        Parent_upvr.Position = UDim2.new((rounded_upvr - -180) / 361 * 0.803, 0, -0.192, 0)
        TextBox_upvr.Text = tostring(rounded_upvr)
        Fov_upvr.Value = rounded_upvr
        local var20 = rounded_upvr
        if HumanoidRootPart_upvw then
            if not HumanoidRootPart_upvw.Parent then
            elseif var15_upvw == var20 then
            else
                var15_upvw = var20
                HumanoidRootPart_upvw.CFrame = CFrame.new(HumanoidRootPart_upvw.CFrame.Position) * CFrame.Angles(0, math.rad(var20), 0)
            end
        end
        local tick_result1_3 = tick()
        if 0.05 <= tick_result1_3 - var16_upvw then
            var16_upvw = tick_result1_3
            pcall(function() -- Line 42
                --[[ Upvalues[2]:
                    [1]: update_upvr (copied, readonly)
                    [2]: rounded_upvr (readonly)
                ]]
                update_upvr:FireServer(rounded_upvr)
            end)
        end
        if arg2 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("FOVAngle", rounded_upvr)
        end
    end
end
local function updateSliderFromMouse_upvr() -- Line 96, Named "updateSliderFromMouse"
    --[[ Upvalues[11]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var12_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: TextBox_upvr (readonly)
        [6]: Fov_upvr (readonly)
        [7]: var14_upvw (read and write)
        [8]: HumanoidRootPart_upvw (read and write)
        [9]: var15_upvw (read and write)
        [10]: var16_upvw (read and write)
        [11]: update_upvr (readonly)
    ]]
    local X = Parent_2_upvr.AbsoluteSize.X
    if X <= 0 then
    else
        local X_2 = Parent_2_upvr.AbsolutePosition.X
        local clamped = math.clamp((math.clamp(UserInputService_upvr:GetMouseLocation().X - var12_upvw, X_2 + 0 * X, X_2 + 0.803 * X) - X_2) / X, 0, 0.803)
        local rounded_upvr_2 = math.floor(clamped / 0.803 * 361 + -180 + 0.5)
        Parent_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        TextBox_upvr.Text = tostring(rounded_upvr_2)
        Fov_upvr.Value = rounded_upvr_2
        var14_upvw = rounded_upvr_2
        if HumanoidRootPart_upvw then
            if not HumanoidRootPart_upvw.Parent then
            elseif var15_upvw == rounded_upvr_2 then
            else
                var15_upvw = rounded_upvr_2
                HumanoidRootPart_upvw.CFrame = CFrame.new(HumanoidRootPart_upvw.CFrame.Position) * CFrame.Angles(0, math.rad(rounded_upvr_2), 0)
            end
        end
        local tick_result1 = tick()
        if 0.05 <= tick_result1 - var16_upvw then
            var16_upvw = tick_result1
            pcall(function() -- Line 42
                --[[ Upvalues[2]:
                    [1]: update_upvr (copied, readonly)
                    [2]: rounded_upvr_2 (readonly)
                ]]
                update_upvr:FireServer(rounded_upvr_2)
            end)
        end
    end
end
task.wait(0.1)
updateSliderPositionFromFov_upvr(-180, false)
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 132
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var12_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var11_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var13_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var12_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var11_upvw = true
        updateSliderFromMouse_upvr()
        if not var13_upvw then
            var13_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 140
                --[[ Upvalues[3]:
                    [1]: var11_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var13_upvw (copied, read and write)
                ]]
                if var11_upvw then
                    updateSliderFromMouse_upvr()
                elseif var13_upvw then
                    var13_upvw:Disconnect()
                    var13_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 155
    --[[ Upvalues[2]:
        [1]: var11_upvw (read and write)
        [2]: var14_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var11_upvw then
            var11_upvw = false
            if _G.ConfigSystem then
                task.wait(0.1)
                _G.ConfigSystem.onSettingChanged("FOVAngle", var14_upvw)
            end
        end
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 170
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: var14_upvw (read and write)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(math.clamp(tonumber_result1, -180, 181), true)
    else
        TextBox_upvr.Text = tostring(var14_upvw)
    end
end)
LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 182
    --[[ Upvalues[5]:
        [1]: Character_upvw (read and write)
        [2]: HumanoidRootPart_upvw (read and write)
        [3]: var15_upvw (read and write)
        [4]: updateSliderPositionFromFov_upvr (readonly)
        [5]: var14_upvw (read and write)
    ]]
    Character_upvw = arg1
    HumanoidRootPart_upvw = Character_upvw:WaitForChild("HumanoidRootPart")
    task.wait(0.3)
    var15_upvw = nil
    updateSliderPositionFromFov_upvr(var14_upvw, false)
end)
task.spawn(function() -- Line 197
    --[[ Upvalues[3]:
        [1]: var15_upvw (read and write)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: var14_upvw (read and write)
    ]]
    while not _G.ConfigSystem and 0 < 5 do
        task.wait(0.1)
    end
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.FOVAngle = _G.ConfigSystem.settings.FOVAngle or -180
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 213
            --[[ Upvalues[3]:
                [1]: var15_upvw (copied, read and write)
                [2]: updateSliderPositionFromFov_upvr (copied, readonly)
                [3]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "FOVAngle" then
                var15_upvw = nil
                updateSliderPositionFromFov_upvr(arg2, false)
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        local FOVAngle = _G.ConfigSystem.settings.FOVAngle
        if FOVAngle ~= nil and FOVAngle ~= var14_upvw then
            var15_upvw = nil
            updateSliderPositionFromFov_upvr(FOVAngle, false)
        end
    end
end)
script.Destroying:Connect(function() -- Line 234
    --[[ Upvalues[1]:
        [1]: var13_upvw (read and write)
    ]]
    if var13_upvw then
        var13_upvw:Disconnect()
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = _G
        3 [string] = ConfigSystem
        4 [string] = task
        5 [string] = wait
        7 [number] = 0.1
        8 [string] = settings
        9 [number] = -180
        10 [string] = FOVAngle
        11 [string] = onConfigLoad

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = HumanoidRootPart
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.3

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.1
        12 [string] = onSettingChanged
        13 [string] = FOVAngle

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
        9 [number] = 0.5
        10 [number] = -180
        11 [number] = 361
        12 [string] = floor
        14 [string] = UDim2
        15 [string] = new
        17 [number] = -0.192
        18 [string] = Position
        19 [string] = tostring
        21 [string] = Text
        22 [string] = Value
        23 [string] = Parent
        24 [string] = CFrame
        26 [string] = Angles
        28 [string] = rad
        30 [string] = tick
        32 [number] = 0.05
        33 [string] = pcall

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 0.5
        5 [string] = floor
        7 [number] = 361
        8 [number] = -180
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value
        19 [string] = Parent
        20 [string] = CFrame
        22 [string] = Angles
        24 [string] = rad
        26 [string] = tick
        28 [number] = 0.05
        29 [string] = pcall
        31 [string] = _G
        33 [string] = ConfigSystem
        34 [string] = onSettingChanged
        35 [string] = FOVAngle

====================================================================================================

Function Dump: applyRotationToCharacter

Function Upvalues: applyRotationToCharacter

Function Constants: applyRotationToCharacter
        1 [string] = Parent
        2 [string] = CFrame
        3 [string] = Position
        4 [string] = new
        6 [string] = Angles
        8 [string] = math
        9 [string] = rad

====================================================================================================

Function Dump: fireUpdate

Function Upvalues: fireUpdate

Function Constants: fireUpdate
        1 [string] = tick
        3 [number] = 0.05
        4 [string] = pcall

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = Fov
        5 [Instance] = HumanoidRootPart
        7 [number] = 0
        8 [Instance] = update

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 0.5
        5 [string] = floor
        7 [number] = 361
        8 [number] = -180
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value
        19 [string] = Parent
        20 [string] = CFrame
        22 [string] = Angles
        24 [string] = rad
        26 [string] = tick
        28 [number] = 0.05
        29 [string] = pcall
        31 [string] = _G
        33 [string] = ConfigSystem
        34 [string] = onSettingChanged
        35 [string] = FOVAngle

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
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = TextBox
        6 [Instance] = Fov
        7 [number] = -180
        8 [Instance] = HumanoidRootPart
        10 [number] = 0
        11 [Instance] = update

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [number] = 0.5
        10 [number] = -180
        11 [number] = 361
        12 [string] = floor
        14 [string] = UDim2
        15 [string] = new
        17 [number] = -0.192
        18 [string] = Position
        19 [string] = tostring
        21 [string] = Text
        22 [string] = Value
        23 [string] = Parent
        24 [string] = CFrame
        26 [string] = Angles
        28 [string] = rad
        30 [string] = tick
        32 [number] = 0.05
        33 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [Instance] = HumanoidRootPart
        4 [function] = updateSliderPositionFromFov
        5 [number] = -180

Function Constants: Unknown Name
        1 [string] = HumanoidRootPart
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.3

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        3 [function] = Unknown Name
        2 [function] = updateSliderPositionFromFov

Function Constants: Unknown Name
        1 [string] = FOVAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [number] = -180

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [string] = tostring

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
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.1
        12 [string] = onSettingChanged
        13 [string] = FOVAngle

====================================================================================================
]]
