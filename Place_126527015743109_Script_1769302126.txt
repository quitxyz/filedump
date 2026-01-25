-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle2.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:48:32
-- Luau version 6, Types version 3
-- Time taken: 0.019207 seconds

local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local aahelp1_upvr = game:GetService("ReplicatedStorage"):WaitForChild("aahelp1")
local jitters = script.Parent.Parent:FindFirstChild("jitters")
local var6_upvw
local function INLINED() -- Internal function, doesn't exist in bytecode
    var6_upvw = jitters.Value
    return var6_upvw
end
if not jitters or not INLINED() then
    var6_upvw = 0.5
end
local var7_upvw = false
local var8_upvw
local const_number_upvw = 0
local tbl_upvr = {{
    pitch = -50;
    yaw = 0;
}, {
    pitch = 50;
    yaw = 0;
}, {
    pitch = 0;
    yaw = -60;
}, {
    pitch = 0;
    yaw = 60;
}, {
    pitch = -40;
    yaw = 40;
}, {
    pitch = 40;
    yaw = -40;
}, {
    pitch = -30;
    yaw = -30;
}, {
    pitch = 30;
    yaw = 30;
}, {
    pitch = 0;
    yaw = -90;
}, {
    pitch = 0;
    yaw = 90;
}}
if jitters then
    jitters.Changed:Connect(function(arg1) -- Line 41
        --[[ Upvalues[1]:
            [1]: var6_upvw (read and write)
        ]]
        var6_upvw = arg1
    end)
end
local function _(arg1) -- Line 46, Named "isJumping"
    local Humanoid = arg1:FindFirstChild("Humanoid")
    if not Humanoid then
        return false
    end
    local any_GetState_result1_2 = Humanoid:GetState()
    local var27 = true
    if any_GetState_result1_2 ~= Enum.HumanoidStateType.Jumping then
        var27 = true
        if any_GetState_result1_2 ~= Enum.HumanoidStateType.Freefall then
            if any_GetState_result1_2 ~= Enum.HumanoidStateType.Flying then
                var27 = false
            else
                var27 = true
            end
        end
    end
    return var27
end
local function _() -- Line 55, Named "startLoop"
    --[[ Upvalues[8]:
        [1]: var8_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: var7_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
        [5]: const_number_upvw (read and write)
        [6]: var6_upvw (read and write)
        [7]: tbl_upvr (readonly)
        [8]: aahelp1_upvr (readonly)
    ]]
    if var8_upvw then
        var8_upvw:Disconnect()
    end
    var8_upvw = RunService_upvr.Heartbeat:Connect(function(arg1) -- Line 58
        --[[ Upvalues[7]:
            [1]: var7_upvw (copied, read and write)
            [2]: var8_upvw (copied, read and write)
            [3]: LocalPlayer_upvr (copied, readonly)
            [4]: const_number_upvw (copied, read and write)
            [5]: var6_upvw (copied, read and write)
            [6]: tbl_upvr (copied, readonly)
            [7]: aahelp1_upvr (copied, readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
        if var8_upvw then
            var8_upvw:Disconnect()
        end
        do
            return
        end
        -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
    end)
end
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local defensive_upvr = script.Parent.Parent:FindFirstChild("defensive")
local function setAntiAimEnabled_upvr(arg1, arg2) -- Line 86, Named "setAntiAimEnabled"
    --[[ Upvalues[14]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: defensive_upvr (readonly)
        [8]: aahelp1_upvr (readonly)
        [9]: LocalPlayer_upvr (readonly)
        [10]: var8_upvw (read and write)
        [11]: RunService_upvr (readonly)
        [12]: const_number_upvw (read and write)
        [13]: var6_upvw (read and write)
        [14]: tbl_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    var7_upvw = arg1
    local var34
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var34 = udim2_upvr
        return var34
    end
    if not var7_upvw or not INLINED_2() then
        var34 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var34;
    }):Play()
    if defensive_upvr then
        defensive_upvr.Value = var7_upvw
    end
    if arg1 then
    else
    end
    aahelp1_upvr:FireServer("disable")
    if var7_upvw then
        if LocalPlayer_upvr.Character then
            if var8_upvw then
                var8_upvw:Disconnect()
            end
            var8_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 58
                --[[ Upvalues[7]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: var8_upvw (copied, read and write)
                    [3]: LocalPlayer_upvr (copied, readonly)
                    [4]: const_number_upvw (copied, read and write)
                    [5]: var6_upvw (copied, read and write)
                    [6]: tbl_upvr (copied, readonly)
                    [7]: aahelp1_upvr (copied, readonly)
                ]]
                -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
                if var8_upvw then
                    var8_upvw:Disconnect()
                end
                do
                    return
                end
                -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
            end)
            -- KONSTANTWARNING: GOTO [66] #57
        end
    elseif var8_upvw then
        var8_upvw:Disconnect()
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("DefensiveAntiAim", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 109
    --[[ Upvalues[2]:
        [1]: setAntiAimEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setAntiAimEnabled_upvr(not var7_upvw, true)
end)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 114
    --[[ Upvalues[8]:
        [1]: var8_upvw (read and write)
        [2]: var7_upvw (read and write)
        [3]: RunService_upvr (readonly)
        [4]: LocalPlayer_upvr (readonly)
        [5]: const_number_upvw (read and write)
        [6]: var6_upvw (read and write)
        [7]: tbl_upvr (readonly)
        [8]: aahelp1_upvr (readonly)
    ]]
    if var8_upvw then
        var8_upvw:Disconnect()
    end
    task.wait(0.5)
    if var7_upvw then
        if var8_upvw then
            var8_upvw:Disconnect()
        end
        var8_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_3) -- Line 58
            --[[ Upvalues[7]:
                [1]: var7_upvw (copied, read and write)
                [2]: var8_upvw (copied, read and write)
                [3]: LocalPlayer_upvr (copied, readonly)
                [4]: const_number_upvw (copied, read and write)
                [5]: var6_upvw (copied, read and write)
                [6]: tbl_upvr (copied, readonly)
                [7]: aahelp1_upvr (copied, readonly)
            ]]
            -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
            if var8_upvw then
                var8_upvw:Disconnect()
            end
            do
                return
            end
            -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
        end)
    end
end)
local var40_upvw
if LocalPlayer_upvr.Character and var7_upvw then
    if var40_upvw then
        var40_upvw:Disconnect()
    end
    var40_upvw = RunService_upvr.Heartbeat:Connect(function(arg1) -- Line 58
        --[[ Upvalues[7]:
            [1]: var7_upvw (read and write)
            [2]: var40_upvw (read and write)
            [3]: LocalPlayer_upvr (readonly)
            [4]: const_number_upvw (read and write)
            [5]: var6_upvw (read and write)
            [6]: tbl_upvr (readonly)
            [7]: aahelp1_upvr (readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
        if var40_upvw then
            var40_upvw:Disconnect()
        end
        do
            return
        end
        -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
    end)
end
script.Destroying:Connect(function() -- Line 129
    --[[ Upvalues[2]:
        [1]: var40_upvw (read and write)
        [2]: aahelp1_upvr (readonly)
    ]]
    if var40_upvw then
        var40_upvw:Disconnect()
    end
    aahelp1_upvr:FireServer("reset")
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.DefensiveAntiAim = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 138
        --[[ Upvalues[2]:
            [1]: setAntiAimEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "DefensiveAntiAim" then
            setAntiAimEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = Character
        3 [string] = Humanoid
        4 [string] = FindFirstChild
        5 [string] = Health
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = Flying
        15 [string] = math
        16 [string] = random
        18 [string] = apply
        19 [string] = pitch
        20 [string] = yaw
        21 [string] = FireServer
        22 [string] = reset

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAntiAimEnabled

Function Upvalues: setAntiAimEnabled

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: startLoop

Function Upvalues: startLoop

Function Constants: startLoop
        1 [string] = Disconnect
        2 [string] = Heartbeat
        3 [string] = Connect

====================================================================================================

Function Dump: isJumping

Function Upvalues: isJumping

Function Constants: isJumping
        1 [string] = Humanoid
        2 [string] = FindFirstChild
        3 [string] = GetState
        4 [string] = Enum
        5 [string] = HumanoidStateType
        6 [string] = Jumping
        8 [string] = Freefall
        10 [string] = Flying

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAntiAimEnabled

Function Upvalues: setAntiAimEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = defensive
        8 [Instance] = aahelp1
        9 [Instance] = quit_xyz
        11 [Instance] = Run Service
        12 [number] = 0
        13 [number] = -20
        14 [table]:
        14 [table] table: 0x20539c4e26880fe5
                1 [table]:
                1 [table] table: 0x71fd5478567d0e35
                        1 [number] = -50
                        2 [number] = 0
                2 [table]:
                2 [table] table: 0xcd0c046ac7a20f45
                        1 [number] = 50
                        2 [number] = 0
                3 [table]:
                3 [table] table: 0xdc5db456d7f2f095
                        1 [number] = 0
                        2 [number] = -60
                4 [table]:
                4 [table] table: 0x6aeba48096442ea5
                        1 [number] = 0
                        2 [number] = 60
                5 [table]:
                5 [table] table: 0x37261cb2065b6ef5
                        1 [number] = -40
                        2 [number] = 40
                6 [table]:
                6 [table] table: 0xf857cd3b961a2005
                        1 [number] = 40
                        2 [number] = -40
                7 [table]:
                7 [table] table: 0x2f89ff09e603ed55
                        1 [number] = -30
                        2 [number] = -30
                8 [table]:
                8 [table] table: 0x5b3beadf46702e65
                        1 [number] = 30
                        2 [number] = 30
                9 [table]:
                9 [table] table: 0xc469daec562371b5
                        1 [number] = 0
                        2 [number] = -90
                10 [table]:
                10 [table] table: 0x329f86f221facdc5
                        1 [number] = 0
                        2 [number] = 90

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [boolean] = false
        3 [Instance] = Run Service
        4 [Instance] = quit_xyz
        5 [number] = 0
        6 [number] = -20
        7 [table] (Recursive table detected)
        8 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = Character
        3 [string] = Humanoid
        4 [string] = FindFirstChild
        5 [string] = Health
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = Flying
        15 [string] = math
        16 [string] = random
        18 [string] = apply
        19 [string] = pitch
        20 [string] = yaw
        21 [string] = FireServer
        22 [string] = reset

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAntiAimEnabled

Function Upvalues: setAntiAimEnabled

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: startLoop

Function Upvalues: startLoop

Function Constants: startLoop
        1 [string] = Disconnect
        2 [string] = Heartbeat
        3 [string] = Connect

====================================================================================================

Function Dump: isJumping

Function Upvalues: isJumping

Function Constants: isJumping
        1 [string] = Humanoid
        2 [string] = FindFirstChild
        3 [string] = GetState
        4 [string] = Enum
        5 [string] = HumanoidStateType
        6 [string] = Jumping
        8 [string] = Freefall
        10 [string] = Flying

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAntiAimEnabled

Function Upvalues: setAntiAimEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = defensive
        8 [Instance] = aahelp1
        9 [Instance] = quit_xyz
        11 [Instance] = Run Service
        12 [number] = 0
        13 [number] = -20
        14 [table]:
        14 [table] table: 0x20539c4e26880fe5
                1 [table]:
                1 [table] table: 0x71fd5478567d0e35
                        1 [number] = -50
                        2 [number] = 0
                2 [table]:
                2 [table] table: 0xcd0c046ac7a20f45
                        1 [number] = 50
                        2 [number] = 0
                3 [table]:
                3 [table] table: 0xdc5db456d7f2f095
                        1 [number] = 0
                        2 [number] = -60
                4 [table]:
                4 [table] table: 0x6aeba48096442ea5
                        1 [number] = 0
                        2 [number] = 60
                5 [table]:
                5 [table] table: 0x37261cb2065b6ef5
                        1 [number] = -40
                        2 [number] = 40
                6 [table]:
                6 [table] table: 0xf857cd3b961a2005
                        1 [number] = 40
                        2 [number] = -40
                7 [table]:
                7 [table] table: 0x2f89ff09e603ed55
                        1 [number] = -30
                        2 [number] = -30
                8 [table]:
                8 [table] table: 0x5b3beadf46702e65
                        1 [number] = 30
                        2 [number] = 30
                9 [table]:
                9 [table] table: 0xc469daec562371b5
                        1 [number] = 0
                        2 [number] = -90
                10 [table]:
                10 [table] table: 0x329f86f221facdc5
                        1 [number] = 0
                        2 [number] = 90

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [boolean] = false
        3 [Instance] = Run Service
        4 [Instance] = quit_xyz
        5 [number] = 0
        6 [number] = -20
        7 [table] (Recursive table detected)
        8 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================
]]
