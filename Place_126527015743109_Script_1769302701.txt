-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.misc.ScrollingFrame.Frame1.toggle1.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:58:19
-- Luau version 6, Types version 3
-- Time taken: 0.010147 seconds

local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local var5_upvw = false
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local function setAnimSpeed_upvr(arg1) -- Line 29, Named "setAnimSpeed"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character_2 = LocalPlayer_upvr.Character
    if Character_2 then
        local Humanoid_2 = Character_2:FindFirstChild("Humanoid")
        if Humanoid_2 then
            for _, v in pairs(Humanoid_2:GetPlayingAnimationTracks()) do
                v:AdjustSpeed(arg1)
            end
        end
    end
end
local function _() -- Line 43, Named "startLagLoop"
    --[[ Upvalues[3]:
        [1]: var5_upvw (read and write)
        [2]: setAnimSpeed_upvr (readonly)
        [3]: RunService_upvr (readonly)
    ]]
    task.spawn(function() -- Line 44
        --[[ Upvalues[3]:
            [1]: var5_upvw (copied, read and write)
            [2]: setAnimSpeed_upvr (copied, readonly)
            [3]: RunService_upvr (copied, readonly)
        ]]
        while var5_upvw do
            setAnimSpeed_upvr(1)
            task.wait(math.random(10, 30) / 100)
            if not var5_upvw then break end
            setAnimSpeed_upvr(0)
            while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                setAnimSpeed_upvr(0)
                RunService_upvr.Heartbeat:Wait()
            end
        end
        setAnimSpeed_upvr(1)
    end)
end
local function setFakelagEnabled_upvr(arg1, arg2) -- Line 76, Named "setFakelagEnabled"
    --[[ Upvalues[8]:
        [1]: var5_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: setAnimSpeed_upvr (readonly)
        [8]: RunService_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    var5_upvw = arg1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 19 start (CF ANALYSIS FAILED)
    local var24 = udim2_upvr_2
    if not var24 then
        -- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
        var24 = udim2_upvr
        -- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var24;
    }):Play()
    if var5_upvw then
        task.spawn(function() -- Line 44
            --[[ Upvalues[3]:
                [1]: var5_upvw (copied, read and write)
                [2]: setAnimSpeed_upvr (copied, readonly)
                [3]: RunService_upvr (copied, readonly)
            ]]
            while var5_upvw do
                setAnimSpeed_upvr(1)
                task.wait(math.random(10, 30) / 100)
                if not var5_upvw then break end
                setAnimSpeed_upvr(0)
                while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                    setAnimSpeed_upvr(0)
                    RunService_upvr.Heartbeat:Wait()
                end
            end
            setAnimSpeed_upvr(1)
        end)
    else
        setAnimSpeed_upvr(1)
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("fakelag", var5_upvw)
    end
    -- KONSTANTERROR: [3] 4. Error Block 19 end (CF ANALYSIS FAILED)
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 97
    --[[ Upvalues[2]:
        [1]: setFakelagEnabled_upvr (readonly)
        [2]: var5_upvw (read and write)
    ]]
    setFakelagEnabled_upvr(not var5_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.fakelag = var5_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 106
        --[[ Upvalues[9]:
            [1]: var5_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: setAnimSpeed_upvr (readonly)
            [8]: RunService_upvr (readonly)
            [9]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "fakelag" then
            var5_upvw = arg2
            if not var5_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if var5_upvw then
                task.spawn(function() -- Line 44
                    --[[ Upvalues[3]:
                        [1]: var5_upvw (copied, read and write)
                        [2]: setAnimSpeed_upvr (copied, readonly)
                        [3]: RunService_upvr (copied, readonly)
                    ]]
                    while var5_upvw do
                        setAnimSpeed_upvr(1)
                        task.wait(math.random(10, 30) / 100)
                        if not var5_upvw then break end
                        setAnimSpeed_upvr(0)
                        while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                            setAnimSpeed_upvr(0)
                            RunService_upvr.Heartbeat:Wait()
                        end
                    end
                    setAnimSpeed_upvr(1)
                end)
            else
                setAnimSpeed_upvr(1)
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
onConfigLoad_upvr = LocalPlayer_upvr.CharacterAdded
onConfigLoad_upvr = onConfigLoad_upvr:Connect
onConfigLoad_upvr(function() -- Line 117
    --[[ Upvalues[3]:
        [1]: var5_upvw (read and write)
        [2]: setAnimSpeed_upvr (readonly)
        [3]: RunService_upvr (readonly)
    ]]
    if var5_upvw then
        task.wait(0.5)
        task.spawn(function() -- Line 44
            --[[ Upvalues[3]:
                [1]: var5_upvw (copied, read and write)
                [2]: setAnimSpeed_upvr (copied, readonly)
                [3]: RunService_upvr (copied, readonly)
            ]]
            while var5_upvw do
                setAnimSpeed_upvr(1)
                task.wait(math.random(10, 30) / 100)
                if not var5_upvw then break end
                setAnimSpeed_upvr(0)
                while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                    setAnimSpeed_upvr(0)
                    RunService_upvr.Heartbeat:Wait()
                end
            end
            setAnimSpeed_upvr(1)
        end)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.misc.ScrollingFrame.Frame1.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = fakelag
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = task
        7 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setFakelagEnabled

Function Upvalues: setFakelagEnabled

Function Constants: setFakelagEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = task
        6 [string] = spawn
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = fakelag

====================================================================================================

Function Dump: startLagLoop

Function Upvalues: startLagLoop

Function Constants: startLagLoop
        1 [string] = task
        2 [string] = spawn

====================================================================================================

Function Dump: setAnimSpeed

Function Upvalues: setAnimSpeed

Function Constants: setAnimSpeed
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = AdjustSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = setAnimSpeed
        3 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = setAnimSpeed
        8 [Instance] = Run Service
        9 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = fakelag
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = task
        7 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setFakelagEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setFakelagEnabled

Function Upvalues: setFakelagEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = setAnimSpeed
        8 [Instance] = Run Service

Function Constants: setFakelagEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = task
        6 [string] = spawn
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = fakelag

====================================================================================================

Function Dump: setAnimSpeed

Function Upvalues: setAnimSpeed
        1 [Instance] = quit_xyz

Function Constants: setAnimSpeed
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = AdjustSpeed

====================================================================================================
]]
