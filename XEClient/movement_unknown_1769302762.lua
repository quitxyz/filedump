-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:59:20
-- Luau version 6, Types version 3
-- Time taken: 0.008113 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function _(arg1) -- Line 16, Named "updateVisual"
    --[[ Upvalues[5]:
        [1]: udim2_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: TweenService_upvr (readonly)
        [4]: Frame2_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    if not arg1 or not udim2_upvr then
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = udim2_upvr_2;
    }):Play()
end
local var9_upvw
local RunService_upvr = game:GetService("RunService")
local function applySpeed_upvr(arg1) -- Line 22, Named "applySpeed"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: LocalPlayer_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [28] 23. Error Block 6 start (CF ANALYSIS FAILED)
    LocalPlayer_upvr.Character.Humanoid.WalkSpeed = 18
    do
        return
    end
    -- KONSTANTERROR: [28] 23. Error Block 6 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [37] 29. Error Block 15 start (CF ANALYSIS FAILED)
    if var9_upvw then
        var9_upvw:Disconnect()
        var9_upvw = nil
    end
    if LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("Humanoid") then
        LocalPlayer_upvr.Character.Humanoid.WalkSpeed = 14
    end
    -- KONSTANTERROR: [37] 29. Error Block 15 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 47, Named "setSpeedEnabled"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: applySpeed_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var13
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var13 = udim2_upvr
        return var13
    end
    if not var7_upvw or not INLINED_2() then
        var13 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var13;
    }):Play()
    var13 = var7_upvw
    applySpeed_upvr(var13)
    if arg2 then
        var13 = _G
        if var13.ConfigSystem then
            var13 = _G.ConfigSystem
            var13 = "FastSpeed"
            var13.onSettingChanged(var13, var7_upvw)
        end
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 59
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: applySpeed_upvr (readonly)
    ]]
    var7_upvw = not var7_upvw
    local var16
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        var16 = udim2_upvr
        return var16
    end
    if not var7_upvw or not INLINED_3() then
        var16 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var16;
    }):Play()
    var16 = var7_upvw
    applySpeed_upvr(var16)
    var16 = _G
    if var16.ConfigSystem then
        var16 = _G.ConfigSystem
        var16 = "FastSpeed"
        var16.onSettingChanged(var16, var7_upvw)
    end
end)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 64
    --[[ Upvalues[1]:
        [1]: var7_upvw (read and write)
    ]]
    arg1:WaitForChild("Humanoid")
    task.wait(0.5)
    if var7_upvw and arg1:FindFirstChild("Humanoid") then
        arg1.Humanoid.WalkSpeed = 18
    end
end)
if LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("Humanoid") and var7_upvw then
    LocalPlayer_upvr.Character.Humanoid.WalkSpeed = 18
end
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.FastSpeed = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 89
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: applySpeed_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "FastSpeed" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            applySpeed_upvr(var7_upvw)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FastSpeed
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.5
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = FastSpeed

====================================================================================================

Function Dump: setSpeedEnabled

Function Upvalues: setSpeedEnabled

Function Constants: setSpeedEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = FastSpeed

====================================================================================================

Function Dump: applySpeed

Function Upvalues: applySpeed

Function Constants: applySpeed
        1 [string] = Disconnect
        2 [string] = Stepped
        4 [string] = Connect
        5 [string] = Character
        6 [string] = Humanoid
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: updateVisual

Function Upvalues: updateVisual

Function Constants: updateVisual
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play

====================================================================================================

Function Dump: applySpeed

Function Upvalues: applySpeed
        3 [Instance] = quit_xyz
        2 [Instance] = Run Service

Function Constants: applySpeed
        1 [string] = Disconnect
        2 [string] = Stepped
        4 [string] = Connect
        5 [string] = Character
        6 [string] = Humanoid
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.5
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = applySpeed
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FastSpeed
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = applySpeed

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = FastSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = WalkSpeed

====================================================================================================
]]
