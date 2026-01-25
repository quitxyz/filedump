-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle1.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:59:12
-- Luau version 6, Types version 3
-- Time taken: 0.019125 seconds

local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local var5_upvw
local var6_upvw
local Frame2_upvr = script.Parent:WaitForChild("Frame2")
local var8_upvw = false
local var9_upvw
local var10_upvw = 0
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TouchEnabled_upvr = UserInputService_upvr.TouchEnabled
if TouchEnabled_upvr then
    TouchEnabled_upvr = not UserInputService_upvr.MouseEnabled
end
local function isGoodStrafePC_upvr() -- Line 28, Named "isGoodStrafePC"
    --[[ Upvalues[2]:
        [1]: var5_upvw (read and write)
        [2]: UserInputService_upvr (readonly)
    ]]
    if var5_upvw.MoveDirection.Magnitude < 0.1 then
        return false
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.W) then
        return true
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.A) then
        return true
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.S) then
        return true
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.D) then
        return true
    end
    return false
end
local function _() -- Line 38, Named "isGoodStrafeMobile"
    --[[ Upvalues[1]:
        [1]: var5_upvw (read and write)
    ]]
    local var15
    if 0.1 >= var5_upvw.MoveDirection.Magnitude then
        var15 = false
    else
        var15 = true
    end
    return var15
end
local function _() -- Line 42, Named "isGoodStrafe"
    --[[ Upvalues[3]:
        [1]: TouchEnabled_upvr (readonly)
        [2]: var5_upvw (read and write)
        [3]: isGoodStrafePC_upvr (readonly)
    ]]
    local var16 = TouchEnabled_upvr
    if var16 then
        if 0.1 >= var5_upvw.MoveDirection.Magnitude then
            var16 = false
        else
            var16 = true
        end
        return var16
    end
    return isGoodStrafePC_upvr()
end
local function _() -- Line 50, Named "isJumping"
    --[[ Upvalues[1]:
        [1]: var5_upvw (read and write)
    ]]
    local any_GetState_result1 = var5_upvw:GetState()
    local var18 = true
    if any_GetState_result1 ~= Enum.HumanoidStateType.Jumping then
        if any_GetState_result1 ~= Enum.HumanoidStateType.Freefall then
            var18 = false
        else
            var18 = true
        end
    end
    return var18
end
local function updateTpWalk_upvr(arg1) -- Line 56, Named "updateTpWalk"
    --[[ Upvalues[6]:
        [1]: var8_upvw (read and write)
        [2]: var6_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: TouchEnabled_upvr (readonly)
        [5]: isGoodStrafePC_upvr (readonly)
        [6]: var10_upvw (read and write)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
    local var19
    if not var8_upvw then return end
    if not var6_upvw or not var5_upvw then return end
    var19 = var5_upvw
    var19 = var19.MoveDirection.Magnitude
    -- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [16] 14. Error Block 40 start (CF ANALYSIS FAILED)
    if TouchEnabled_upvr then
        if 0.1 >= var5_upvw.MoveDirection.Magnitude then
            var19 = false
        else
            var19 = true
        end
    else
        var19 = isGoodStrafePC_upvr()
    end
    -- KONSTANTERROR: [16] 14. Error Block 40 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 76, Named "updateVisual"
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
local function _() -- Line 81, Named "connectTpWalk"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: updateTpWalk_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Disconnect()
    end
    var9_upvw = RunService_upvr.Heartbeat:Connect(updateTpWalk_upvr)
end
local function _() -- Line 86, Named "disconnectTpWalk"
    --[[ Upvalues[1]:
        [1]: var9_upvw (read and write)
    ]]
    if var9_upvw then
        var9_upvw:Disconnect()
        var9_upvw = nil
    end
end
local function _(arg1, arg2) -- Line 93, Named "setTpWalkEnabled"
    --[[ Upvalues[10]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var10_upvw (read and write)
        [8]: var9_upvw (read and write)
        [9]: RunService_upvr (readonly)
        [10]: updateTpWalk_upvr (readonly)
    ]]
    var8_upvw = arg1
    local var23
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var23 = udim2_upvr
        return var23
    end
    if not var8_upvw or not INLINED_2() then
        var23 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var23;
    }):Play()
    if var8_upvw then
        var10_upvw = 0.3
        if var9_upvw then
            var9_upvw:Disconnect()
        end
        var23 = RunService_upvr
        var9_upvw = var23.Heartbeat:Connect(updateTpWalk_upvr)
    else
        if var9_upvw then
            var9_upvw:Disconnect()
            var9_upvw = nil
        end
        var10_upvw = 0.3
    end
    if arg2 then
        var23 = _G
        if var23.ConfigSystem then
            var23 = _G.ConfigSystem
            var23 = "TPWalk"
            var23.onSettingChanged(var23, var8_upvw)
        end
    end
end
script.Parent:WaitForChild("TextButton").MouseButton1Click:Connect(function() -- Line 110
    --[[ Upvalues[10]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var10_upvw (read and write)
        [8]: var9_upvw (read and write)
        [9]: RunService_upvr (readonly)
        [10]: updateTpWalk_upvr (readonly)
    ]]
    var8_upvw = not var8_upvw
    local var26
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        var26 = udim2_upvr
        return var26
    end
    if not var8_upvw or not INLINED_3() then
        var26 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var26;
    }):Play()
    if var8_upvw then
        var10_upvw = 0.3
        if var9_upvw then
            var9_upvw:Disconnect()
        end
        var26 = RunService_upvr
        var9_upvw = var26.Heartbeat:Connect(updateTpWalk_upvr)
    else
        if var9_upvw then
            var9_upvw:Disconnect()
            var9_upvw = nil
        end
        var10_upvw = 0.3
    end
    var26 = _G
    if var26.ConfigSystem then
        var26 = _G.ConfigSystem
        var26 = "TPWalk"
        var26.onSettingChanged(var26, var8_upvw)
    end
end)
local var28_upvw
LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 114, Named "onCharacterAdded"
    --[[ Upvalues[13]:
        [1]: var9_upvw (read and write)
        [2]: var28_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: var6_upvw (read and write)
        [5]: var8_upvw (read and write)
        [6]: udim2_upvr (readonly)
        [7]: udim2_upvr_2 (readonly)
        [8]: TweenService_upvr (readonly)
        [9]: Frame2_upvr (readonly)
        [10]: TweenInfo_new_result1_upvr (readonly)
        [11]: var10_upvw (read and write)
        [12]: RunService_upvr (readonly)
        [13]: updateTpWalk_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Disconnect()
        var9_upvw = nil
    end
    var28_upvw = arg1
    var5_upvw = var28_upvw:WaitForChild("Humanoid")
    var6_upvw = arg1
    task.spawn(function() -- Line 120
        --[[ Upvalues[10]:
            [1]: var8_upvw (copied, read and write)
            [2]: udim2_upvr (copied, readonly)
            [3]: udim2_upvr_2 (copied, readonly)
            [4]: TweenService_upvr (copied, readonly)
            [5]: Frame2_upvr (copied, readonly)
            [6]: TweenInfo_new_result1_upvr (copied, readonly)
            [7]: var10_upvw (copied, read and write)
            [8]: var9_upvw (copied, read and write)
            [9]: RunService_upvr (copied, readonly)
            [10]: updateTpWalk_upvr (copied, readonly)
        ]]
        task.wait(6)
        var8_upvw = true
        local var30
        local function INLINED_4() -- Internal function, doesn't exist in bytecode
            var30 = udim2_upvr
            return var30
        end
        if not var8_upvw or not INLINED_4() then
            var30 = udim2_upvr_2
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var30;
        }):Play()
        if var8_upvw then
            var10_upvw = 0.3
            if var9_upvw then
                var9_upvw:Disconnect()
            end
            var30 = RunService_upvr
            var9_upvw = var30.Heartbeat:Connect(updateTpWalk_upvr)
        else
            if var9_upvw then
                var9_upvw:Disconnect()
                var9_upvw = nil
            end
            var10_upvw = 0.3
        end
        var30 = _G
        if var30.ConfigSystem then
            var30 = _G.ConfigSystem
            var30 = "TPWalk"
            var30.onSettingChanged(var30, var8_upvw)
        end
    end)
end)
local var32_upvw
if LocalPlayer.Character then
    local Character = LocalPlayer.Character
    if var32_upvw then
        var32_upvw:Disconnect()
        var32_upvw = nil
    end
    var28_upvw = Character
    var5_upvw = var28_upvw:WaitForChild("Humanoid")
    var6_upvw = Character
    task.spawn(function() -- Line 120
        --[[ Upvalues[10]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var10_upvw (read and write)
            [8]: var32_upvw (read and write)
            [9]: RunService_upvr (readonly)
            [10]: updateTpWalk_upvr (readonly)
        ]]
        task.wait(6)
        var8_upvw = true
        local var35
        local function INLINED_5() -- Internal function, doesn't exist in bytecode
            var35 = udim2_upvr
            return var35
        end
        if not var8_upvw or not INLINED_5() then
            var35 = udim2_upvr_2
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var35;
        }):Play()
        if var8_upvw then
            var10_upvw = 0.3
            if var32_upvw then
                var32_upvw:Disconnect()
            end
            var35 = RunService_upvr
            var32_upvw = var35.Heartbeat:Connect(updateTpWalk_upvr)
        else
            if var32_upvw then
                var32_upvw:Disconnect()
                var32_upvw = nil
            end
            var10_upvw = 0.3
        end
        var35 = _G
        if var35.ConfigSystem then
            var35 = _G.ConfigSystem
            var35 = "TPWalk"
            var35.onSettingChanged(var35, var8_upvw)
        end
    end)
end
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.TPWalk = var8_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 136
        --[[ Upvalues[11]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var10_upvw (read and write)
            [8]: var32_upvw (read and write)
            [9]: RunService_upvr (readonly)
            [10]: updateTpWalk_upvr (readonly)
            [11]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "TPWalk" then
            var8_upvw = arg2
            if not var8_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if var8_upvw then
                var10_upvw = 0.3
                if var32_upvw then
                    var32_upvw:Disconnect()
                end
                var32_upvw = RunService_upvr.Heartbeat:Connect(updateTpWalk_upvr)
            else
                if var32_upvw then
                    var32_upvw:Disconnect()
                    var32_upvw = nil
                end
                var10_upvw = 0.3
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = TPWalk
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [number] = 0.3
        7 [string] = Disconnect
        8 [string] = Heartbeat
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = Position
        6 [string] = Create
        7 [string] = Play
        8 [number] = 0.3
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = _G
        14 [string] = ConfigSystem
        15 [string] = onSettingChanged
        16 [string] = TPWalk

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded

Function Constants: onCharacterAdded
        1 [string] = Disconnect
        2 [string] = Humanoid
        3 [string] = WaitForChild
        4 [string] = task
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.3
        6 [string] = Disconnect
        7 [string] = Heartbeat
        8 [string] = Connect
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = TPWalk

====================================================================================================

Function Dump: setTpWalkEnabled

Function Upvalues: setTpWalkEnabled

Function Constants: setTpWalkEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.3
        6 [string] = Disconnect
        7 [string] = Heartbeat
        8 [string] = Connect
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = TPWalk

====================================================================================================

Function Dump: disconnectTpWalk

Function Upvalues: disconnectTpWalk

Function Constants: disconnectTpWalk
        1 [string] = Disconnect

====================================================================================================

Function Dump: connectTpWalk

Function Upvalues: connectTpWalk

Function Constants: connectTpWalk
        1 [string] = Disconnect
        2 [string] = Heartbeat
        3 [string] = Connect

====================================================================================================

Function Dump: updateVisual

Function Upvalues: updateVisual

Function Constants: updateVisual
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play

====================================================================================================

Function Dump: updateTpWalk

Function Upvalues: updateTpWalk

Function Constants: updateTpWalk
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.3
        4 [number] = 0.1
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        10 [string] = Freefall
        12 [number] = 0.05
        13 [number] = 1.5
        14 [string] = math
        15 [string] = min
        17 [number] = 0.5
        18 [string] = max
        20 [number] = 10
        21 [string] = TranslateBy

====================================================================================================

Function Dump: isJumping

Function Upvalues: isJumping

Function Constants: isJumping
        1 [string] = GetState
        2 [string] = Enum
        3 [string] = HumanoidStateType
        4 [string] = Jumping
        6 [string] = Freefall

====================================================================================================

Function Dump: isGoodStrafe

Function Upvalues: isGoodStrafe

Function Constants: isGoodStrafe
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1

====================================================================================================

Function Dump: isGoodStrafeMobile

Function Upvalues: isGoodStrafeMobile

Function Constants: isGoodStrafeMobile
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1

====================================================================================================

Function Dump: isGoodStrafePC

Function Upvalues: isGoodStrafePC

Function Constants: isGoodStrafePC
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = Enum
        5 [string] = KeyCode
        6 [string] = W
        8 [string] = IsKeyDown
        9 [string] = A
        11 [string] = S
        13 [string] = D

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded
        1 [RBXScriptConnection] = Connection
        2 [Instance] = quit_xyz
        3 [Instance] = Humanoid
        4 [Instance] = quit_xyz
        5 [boolean] = true
        6 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        7 [UDim2] = {0, 0}, {-0.191819623, 0}
        8 [Instance] = TweenService
        9 [Instance] = Frame2
        10 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        11 [number] = 0.5
        12 [Instance] = Run Service
        13 [function] = updateTpWalk

Function Constants: onCharacterAdded
        1 [string] = Disconnect
        2 [string] = Humanoid
        3 [string] = WaitForChild
        4 [string] = task
        5 [string] = spawn

====================================================================================================

Function Dump: isGoodStrafePC

Function Upvalues: isGoodStrafePC
        1 [Instance] = Humanoid
        2 [Instance] = UserInputService

Function Constants: isGoodStrafePC
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = Enum
        5 [string] = KeyCode
        6 [string] = W
        7 [EnumItem] = Enum.KeyCode.W
        8 [string] = IsKeyDown
        9 [string] = A
        10 [EnumItem] = Enum.KeyCode.A
        11 [string] = S
        12 [EnumItem] = Enum.KeyCode.S
        13 [string] = D
        14 [EnumItem] = Enum.KeyCode.D

====================================================================================================

Function Dump: updateTpWalk

Function Upvalues: updateTpWalk
        1 [boolean] = true
        2 [Instance] = quit_xyz
        3 [Instance] = Humanoid
        4 [boolean] = true
        5 [function] = isGoodStrafePC
        6 [number] = 0.5

Function Constants: updateTpWalk
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.3
        4 [number] = 0.1
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        9 [EnumItem] = Enum.HumanoidStateType.Jumping
        10 [string] = Freefall
        11 [EnumItem] = Enum.HumanoidStateType.Freefall
        12 [number] = 0.05
        13 [number] = 1.5
        14 [string] = math
        15 [string] = min
        17 [number] = 0.5
        18 [string] = max
        20 [number] = 10
        21 [string] = TranslateBy

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [number] = 0.5
        8 [RBXScriptConnection] = Connection
        9 [Instance] = Run Service
        10 [function] = updateTpWalk
        11 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = TPWalk
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [number] = 0.3
        7 [string] = Disconnect
        8 [string] = Heartbeat
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [number] = 0.5
        8 [RBXScriptConnection] = Connection
        9 [Instance] = Run Service
        10 [function] = updateTpWalk

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = Position
        6 [string] = Create
        7 [string] = Play
        8 [number] = 0.3
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = _G
        14 [string] = ConfigSystem
        15 [string] = onSettingChanged
        16 [string] = TPWalk

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [number] = 0.5
        8 [RBXScriptConnection] = Connection
        9 [Instance] = Run Service
        10 [function] = updateTpWalk

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.3
        6 [string] = Disconnect
        7 [string] = Heartbeat
        8 [string] = Connect
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = TPWalk

====================================================================================================
]]
