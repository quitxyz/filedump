-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle1.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:48:17
-- Luau version 6, Types version 3
-- Time taken: 0.007341 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local Parent = script.Parent.Parent
local jittera = Parent:FindFirstChild("jittera")
local jitters = Parent:FindFirstChild("jitters")
local Jitter_upvr = game:GetService("ReplicatedStorage"):FindFirstChild("Jitter")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local Value_upvw = jittera.Value
local Value_upvw_2 = jitters.Value
local var13_upvw = false
local var14_upvw
local var15_upvw = 1
jittera.Changed:Connect(function(arg1) -- Line 31
    --[[ Upvalues[4]:
        [1]: Value_upvw (read and write)
        [2]: var13_upvw (read and write)
        [3]: Jitter_upvr (readonly)
        [4]: Value_upvw_2 (read and write)
    ]]
    Value_upvw = arg1
    if var13_upvw then
        Jitter_upvr:FireServer(var13_upvw, Value_upvw_2, Value_upvw)
    end
end)
jitters.Changed:Connect(function(arg1) -- Line 38
    --[[ Upvalues[4]:
        [1]: Value_upvw_2 (read and write)
        [2]: var13_upvw (read and write)
        [3]: Jitter_upvr (readonly)
        [4]: Value_upvw (read and write)
    ]]
    Value_upvw_2 = arg1
    if var13_upvw then
        Jitter_upvr:FireServer(var13_upvw, Value_upvw_2, Value_upvw)
    end
end)
local function applyJitter_upvr(arg1) -- Line 46, Named "applyJitter"
    --[[ Upvalues[2]:
        [1]: Value_upvw (read and write)
        [2]: var15_upvw (read and write)
    ]]
    local HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
    else
        local _, any_ToOrientation_result2, any_ToOrientation_result3 = HumanoidRootPart.CFrame:ToOrientation()
        HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position) * CFrame.Angles(0, any_ToOrientation_result2 + math.rad(Value_upvw * var15_upvw), 0)
    end
end
local var22_upvw = 0
local RunService_upvr = game:GetService("RunService")
local function toggleJitter_upvr(arg1) -- Line 56, Named "toggleJitter"
    --[[ Upvalues[9]:
        [1]: var14_upvw (read and write)
        [2]: Jitter_upvr (readonly)
        [3]: Value_upvw_2 (read and write)
        [4]: Value_upvw (read and write)
        [5]: LocalPlayer_upvr (readonly)
        [6]: var22_upvw (read and write)
        [7]: var15_upvw (read and write)
        [8]: RunService_upvr (readonly)
        [9]: applyJitter_upvr (readonly)
    ]]
    if var14_upvw then
        var14_upvw:Disconnect()
        var14_upvw = nil
    end
    Jitter_upvr:FireServer(arg1, Value_upvw_2, Value_upvw)
    if arg1 and LocalPlayer_upvr.Character then
        var22_upvw = 0
        var15_upvw = 1
        var14_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 70
            --[[ Upvalues[5]:
                [1]: LocalPlayer_upvr (copied, readonly)
                [2]: var22_upvw (copied, read and write)
                [3]: Value_upvw_2 (copied, read and write)
                [4]: var15_upvw (copied, read and write)
                [5]: applyJitter_upvr (copied, readonly)
            ]]
            if not LocalPlayer_upvr.Character then
            else
                var22_upvw += arg1_2
                if Value_upvw_2 <= var22_upvw then
                    var22_upvw = 0
                    var15_upvw = -var15_upvw
                    applyJitter_upvr(LocalPlayer_upvr.Character)
                end
            end
        end)
    end
end
local function setJitterEnabled_upvr(arg1, arg2) -- Line 84, Named "setJitterEnabled"
    --[[ Upvalues[7]:
        [1]: var13_upvw (read and write)
        [2]: toggleJitter_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: udim2_upvr (readonly)
        [5]: TweenService_upvr (readonly)
        [6]: Frame2_upvr (readonly)
        [7]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var13_upvw = arg1
    toggleJitter_upvr(var13_upvw)
    local var25
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var25 = udim2_upvr_2
        return var25
    end
    if not var13_upvw or not INLINED() then
        var25 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var25;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("Jitter", var13_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 99
    --[[ Upvalues[2]:
        [1]: setJitterEnabled_upvr (readonly)
        [2]: var13_upvw (read and write)
    ]]
    setJitterEnabled_upvr(not var13_upvw, true)
end)
LocalPlayer_upvr.CharacterAdded:Connect(function() -- Line 104
    --[[ Upvalues[2]:
        [1]: var13_upvw (read and write)
        [2]: toggleJitter_upvr (readonly)
    ]]
    task.wait(5)
    if var13_upvw then
        toggleJitter_upvr(true)
    end
end)
script.Destroying:Connect(function() -- Line 112
    --[[ Upvalues[1]:
        [1]: var14_upvw (read and write)
    ]]
    if var14_upvw then
        var14_upvw:Disconnect()
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.Jitter = var13_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 126
        --[[ Upvalues[8]:
            [1]: var13_upvw (read and write)
            [2]: toggleJitter_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: udim2_upvr (readonly)
            [5]: TweenService_upvr (readonly)
            [6]: Frame2_upvr (readonly)
            [7]: TweenInfo_new_result1_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "Jitter" then
            var13_upvw = arg2
            toggleJitter_upvr(var13_upvw)
            if not var13_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
else
    onConfigLoad_upvr = warn
    onConfigLoad_upvr("ConfigSystem не найдена! Настройка Jitter не будет сохраняться.")
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Jitter
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setJitterEnabled

Function Upvalues: setJitterEnabled

Function Constants: setJitterEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = Jitter

====================================================================================================

Function Dump: toggleJitter

Function Upvalues: toggleJitter

Function Constants: toggleJitter
        1 [string] = Disconnect
        2 [string] = FireServer
        3 [string] = Character
        4 [string] = Heartbeat
        5 [string] = Connect

====================================================================================================

Function Dump: applyJitter

Function Upvalues: applyJitter

Function Constants: applyJitter
        1 [string] = HumanoidRootPart
        2 [string] = FindFirstChild
        3 [string] = Position
        4 [string] = CFrame
        5 [string] = ToOrientation
        6 [string] = math
        7 [string] = rad
        9 [string] = new
        11 [string] = Angles

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = toggleJitter

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setJitterEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: applyJitter

Function Upvalues: applyJitter
        1 [number] = -180
        2 [number] = 1

Function Constants: applyJitter
        1 [string] = HumanoidRootPart
        2 [string] = FindFirstChild
        3 [string] = Position
        4 [string] = CFrame
        5 [string] = ToOrientation
        6 [string] = math
        7 [string] = rad
        9 [string] = new
        11 [string] = Angles

====================================================================================================

Function Dump: toggleJitter

Function Upvalues: toggleJitter
        2 [Instance] = Jitter
        3 [number] = -20
        4 [number] = -180
        5 [Instance] = quit_xyz
        6 [number] = 0
        7 [number] = 1
        8 [Instance] = Run Service
        9 [function] = applyJitter

Function Constants: toggleJitter
        1 [string] = Disconnect
        2 [string] = FireServer
        3 [string] = Character
        4 [string] = Heartbeat
        5 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = toggleJitter
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = Jitter
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: setJitterEnabled

Function Upvalues: setJitterEnabled
        1 [boolean] = false
        2 [function] = toggleJitter
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setJitterEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = Jitter

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20
        2 [boolean] = false
        3 [Instance] = Jitter
        4 [number] = -180

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -180
        2 [boolean] = false
        3 [Instance] = Jitter
        4 [number] = -20

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================
]]
