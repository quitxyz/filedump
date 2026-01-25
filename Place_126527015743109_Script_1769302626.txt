-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle5.LocalScript
-- Took 0.36s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:57:03
-- Luau version 6, Types version 3
-- Time taken: 0.060589 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local BacktrackGhosts_upvr = workspace:FindFirstChild("BacktrackGhosts")
if not BacktrackGhosts_upvr then
    BacktrackGhosts_upvr = Instance.new("Folder", workspace)
end
BacktrackGhosts_upvr.Name = "BacktrackGhosts"
local var9_upvw
local var10_upvw
local var11_upvw
local btl_upvr = game:GetService("ReplicatedStorage"):WaitForChild("btl")
local function _() -- Line 34, Named "isFakeLagEnabled"
    if _G.ConfigSystem then
        local settings_2 = _G.ConfigSystem.settings
        if settings_2 then
            if _G.ConfigSystem.settings.FakeLag ~= true then
                settings_2 = false
            else
                settings_2 = true
            end
            return settings_2
        end
    end
    return false
end
local function _() -- Line 44, Named "clearGhost"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: BacktrackGhosts_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Destroy()
        var9_upvw = nil
    end
    var10_upvw = nil
    BacktrackGhosts_upvr:ClearAllChildren()
end
local function createGhost_upvr(arg1) -- Line 53, Named "createGhost"
    --[[ Upvalues[2]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: BacktrackGhosts_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local Character_3 = LocalPlayer_upvr.Character
    local var96
    if not Character_3 then
        return nil
    end
    var96 = "HumanoidRootPart"
    if not Character_3:FindFirstChild(var96) then
        return nil
    end
    Character_3.Archivable = true
    local clone_2 = Character_3:Clone()
    var96 = false
    Character_3.Archivable = var96
    if not clone_2 then
        var96 = nil
        return var96
    end
    var96 = LocalPlayer_upvr.Name.."_Ghost"
    clone_2.Name = var96
    var96 = pairs(clone_2:GetDescendants())
    local pairs_result1, pairs_result2_4, pairs_result3 = pairs(clone_2:GetDescendants())
    for _, v in pairs_result1, pairs_result2_4, pairs_result3 do
        if v:IsA("Script") or v:IsA("LocalScript") or v:IsA("Sound") or v:IsA("BillboardGui") or v:IsA("Humanoid") or v:IsA("AlignPosition") or v:IsA("AlignOrientation") or v:IsA("BodyMover") or v:IsA("BodyGyro") or v:IsA("BodyVelocity") or v:IsA("BodyPosition") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") or v:IsA("Animator") then
            v:Destroy()
        end
    end
    pairs_result1 = pairs(clone_2:GetDescendants())
    local pairs_result1_2, pairs_result2_5, pairs_result3_3 = pairs(clone_2:GetDescendants())
    for _, v_2 in pairs_result1_2, pairs_result2_5, pairs_result3_3 do
        if v_2:IsA("Motor6D") or v_2:IsA("Weld") or v_2:IsA("WeldConstraint") or v_2:IsA("HingeConstraint") or v_2:IsA("BallSocketConstraint") or v_2:IsA("Constraint") or v_2:IsA("JointInstance") then
            v_2:Destroy()
        end
    end
    pairs_result1_2 = Color3.fromRGB(0, 255, 0)
    if script.Parent.Parent:FindFirstChild("btcolor") then
        pairs_result1_2 = script.Parent.Parent.btcolor.Value
    end
    for _, v_3 in pairs(clone_2:GetDescendants()) do
        if v_3:IsA("BasePart") then
            v_3.Anchored = true
            v_3.CanCollide = false
            v_3.CanTouch = false
            v_3.CanQuery = false
            v_3.Massless = true
            v_3.Material = Enum.Material.ForceField
            v_3.Transparency = 0.7
            v_3.Color = pairs_result1_2
            v_3.CastShadow = false
            if v_3.Name == "Head" then
                local face = v_3:FindFirstChild("face")
                if face then
                    face:Destroy()
                end
            end
        end
    end
    if not true then
        clone_2:Destroy()
        return nil
    end
    for _, v_4 in pairs(clone_2:GetChildren()) do
        if v_4:IsA("Accessory") then
            v_4:Destroy()
        end
    end
    clone_2.Parent = BacktrackGhosts_upvr
    return clone_2
end
local function updateGhostPose_upvr(arg1, arg2) -- Line 135, Named "updateGhostPose"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var9_upvw (read and write)
        [4]: var10_upvw (read and write)
        [5]: BacktrackGhosts_upvr (readonly)
        [6]: var11_upvw (read and write)
        [7]: createGhost_upvr (readonly)
    ]]
    if not var7_upvw then
    else
        local Character_2 = LocalPlayer_upvr.Character
        if not Character_2 then return end
        local Humanoid_2 = Character_2:FindFirstChild("Humanoid")
        if Humanoid_2 and Humanoid_2.Health <= 0 then
            if var9_upvw then
                var9_upvw:Destroy()
                var9_upvw = nil
            end
            var10_upvw = nil
            BacktrackGhosts_upvr:ClearAllChildren()
            return
        end
        if not var9_upvw or var10_upvw ~= Character_2 or var11_upvw ~= arg2 or not var9_upvw.Parent then
            if var9_upvw then
                var9_upvw:Destroy()
                var9_upvw = nil
            end
            var10_upvw = nil
            BacktrackGhosts_upvr:ClearAllChildren()
            var9_upvw = createGhost_upvr(arg2)
            if var9_upvw then
                var10_upvw = Character_2
                var11_upvw = arg2
            else
                return
            end
        end
        local HumanoidRootPart_2 = Character_2:FindFirstChild("HumanoidRootPart")
        if not HumanoidRootPart_2 then return end
        for _, v_5 in pairs(var9_upvw:GetDescendants()) do
            if v_5:IsA("BasePart") then
                local SOME = Character_2:FindFirstChild(v_5.Name, true)
                if SOME and SOME:IsA("BasePart") then
                    v_5.CFrame = arg1 * HumanoidRootPart_2.CFrame:Inverse() * SOME.CFrame
                end
            end
        end
    end
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 182
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: BacktrackGhosts_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Destroy()
        var9_upvw = nil
    end
    var10_upvw = nil
    BacktrackGhosts_upvr:ClearAllChildren()
    task.spawn(function() -- Line 185
        --[[ Upvalues[1]:
            [1]: arg1 (readonly)
        ]]
        arg1:WaitForChild("HumanoidRootPart", 10)
    end)
end)
LocalPlayer_upvr.CharacterRemoving:Connect(function() -- Line 190
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: BacktrackGhosts_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Destroy()
        var9_upvw = nil
    end
    var10_upvw = nil
    BacktrackGhosts_upvr:ClearAllChildren()
end)
local var135_upvw = 0
game:GetService("RunService").Heartbeat:Connect(function() -- Line 198
    --[[ Upvalues[4]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var135_upvw (read and write)
        [4]: btl_upvr (readonly)
    ]]
    if var7_upvw and LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") and 0.05 < tick() - var135_upvw then
        -- KONSTANTERROR: Expression was reused, decompilation is incorrect
        var135_upvw = tick()
        local var136
        if _G.ConfigSystem and _G.ConfigSystem.settings then
            if _G.ConfigSystem.settings.FakeLag ~= true then
                var136 = false
            else
                var136 = true
            end
        else
            var136 = false
        end
        btl_upvr:FireServer(var136)
    end
end)
btl_upvr.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 214
    --[[ Upvalues[3]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: updateGhostPose_upvr (readonly)
    ]]
    local var141
    if var7_upvw then
        if not arg2 then
            if arg3 then
                local Character_5 = LocalPlayer_upvr.Character
                if Character_5 then
                    local HumanoidRootPart = Character_5:FindFirstChild("HumanoidRootPart")
                    if HumanoidRootPart then
                        var141 = HumanoidRootPart.CFrame - HumanoidRootPart.AssemblyLinearVelocity * arg3
                    end
                end
            end
        end
        updateGhostPose_upvr(var141, arg2)
    end
end)
local function setBacktrackEnabled_upvr(arg1, arg2) -- Line 234, Named "setBacktrackEnabled"
    --[[ Upvalues[10]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var9_upvw (read and write)
        [8]: var10_upvw (read and write)
        [9]: BacktrackGhosts_upvr (readonly)
        [10]: var11_upvw (read and write)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    var7_upvw = arg1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 20 start (CF ANALYSIS FAILED)
    local var144 = udim2_upvr_2
    if not var144 then
        -- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
        var144 = udim2_upvr
        -- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var144;
    }):Play()
    if not var7_upvw then
        if var9_upvw then
            var9_upvw:Destroy()
            var9_upvw = nil
        end
        var10_upvw = nil
        BacktrackGhosts_upvr:ClearAllChildren()
        var11_upvw = nil
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("BackTrackLocal", var7_upvw)
    end
    -- KONSTANTERROR: [3] 4. Error Block 20 end (CF ANALYSIS FAILED)
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 249
    --[[ Upvalues[2]:
        [1]: setBacktrackEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setBacktrackEnabled_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.BackTrackLocal = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 258
        --[[ Upvalues[11]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var9_upvw (read and write)
            [8]: var10_upvw (read and write)
            [9]: BacktrackGhosts_upvr (readonly)
            [10]: var11_upvw (read and write)
            [11]: onConfigLoad_upvr (readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [5] 5. Error Block 19 start (CF ANALYSIS FAILED)
        local var149 = udim2_upvr_2
        if not var149 then
            -- KONSTANTERROR: [7] 7. Error Block 4 start (CF ANALYSIS FAILED)
            var149 = udim2_upvr
            -- KONSTANTERROR: [7] 7. Error Block 4 end (CF ANALYSIS FAILED)
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var149;
        }):Play()
        if not var7_upvw then
            if var9_upvw then
                var9_upvw:Destroy()
                var9_upvw = nil
            end
            var10_upvw = nil
            BacktrackGhosts_upvr:ClearAllChildren()
            var11_upvw = nil
        end
        -- KONSTANTERROR: [5] 5. Error Block 19 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [38] 33. Error Block 18 start (CF ANALYSIS FAILED)
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
        -- KONSTANTERROR: [38] 33. Error Block 18 end (CF ANALYSIS FAILED)
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle5.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = BackTrackLocal
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Destroy
        7 [string] = ClearAllChildren

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setBacktrackEnabled

Function Upvalues: setBacktrackEnabled

Function Constants: setBacktrackEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = onSettingChanged
        11 [string] = BackTrackLocal

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = AssemblyLinearVelocity
        5 [string] = CFrame

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = tick
        6 [number] = 0.05
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = settings
        11 [string] = FakeLag
        12 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: updateGhostPose

Function Upvalues: updateGhostPose

Function Constants: updateGhostPose
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = Parent
        8 [string] = HumanoidRootPart
        9 [string] = CFrame
        10 [string] = Inverse
        11 [string] = pairs
        13 [string] = GetDescendants
        14 [string] = BasePart
        15 [string] = IsA
        16 [string] = Name

====================================================================================================

Function Dump: createGhost

Function Upvalues: createGhost

Function Constants: createGhost
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Archivable
        5 [string] = Clone
        6 [string] = Name
        7 [string] = _Ghost
        8 [string] = pairs
        10 [string] = GetDescendants
        11 [string] = Script
        12 [string] = IsA
        13 [string] = LocalScript
        14 [string] = Sound
        15 [string] = BillboardGui
        16 [string] = Humanoid
        17 [string] = AlignPosition
        18 [string] = AlignOrientation
        19 [string] = BodyMover
        20 [string] = BodyGyro
        21 [string] = BodyVelocity
        22 [string] = BodyPosition
        23 [string] = BodyForce
        24 [string] = VectorForce
        25 [string] = LineForce
        26 [string] = Animator
        27 [string] = Destroy
        28 [string] = Motor6D
        29 [string] = Weld
        30 [string] = WeldConstraint
        31 [string] = HingeConstraint
        32 [string] = BallSocketConstraint
        33 [string] = Constraint
        34 [string] = JointInstance
        35 [string] = Color3
        36 [string] = fromRGB
        38 [string] = script
        40 [string] = Parent
        41 [string] = btcolor
        42 [string] = Value
        43 [string] = BasePart
        44 [string] = Anchored
        45 [string] = CanCollide
        46 [string] = CanTouch
        47 [string] = CanQuery
        48 [string] = Massless
        49 [string] = Enum
        50 [string] = Material
        51 [string] = ForceField
        53 [number] = 0.7
        54 [string] = Transparency
        55 [string] = Color
        56 [string] = CastShadow
        57 [string] = Head
        58 [string] = face
        59 [string] = GetChildren
        60 [string] = Accessory

====================================================================================================

Function Dump: clearGhost

Function Upvalues: clearGhost

Function Constants: clearGhost
        1 [string] = Destroy
        2 [string] = ClearAllChildren

====================================================================================================

Function Dump: isFakeLagEnabled

Function Upvalues: isFakeLagEnabled

Function Constants: isFakeLagEnabled
        1 [string] = _G
        3 [string] = ConfigSystem
        4 [string] = settings
        5 [string] = FakeLag

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = quit_xyz
        3 [number] = 0
        4 [Instance] = btl

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = tick
        6 [number] = 0.05
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = settings
        11 [string] = FakeLag
        12 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setBacktrackEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = quit_xyz
        3 [function] = updateGhostPose

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = AssemblyLinearVelocity
        5 [string] = CFrame

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        3 [Instance] = BacktrackGhosts

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        3 [Instance] = BacktrackGhosts

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: updateGhostPose

Function Upvalues: updateGhostPose
        1 [boolean] = false
        2 [Instance] = quit_xyz
        5 [Instance] = BacktrackGhosts
        7 [function] = createGhost

Function Constants: updateGhostPose
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = Parent
        8 [string] = HumanoidRootPart
        9 [string] = CFrame
        10 [string] = Inverse
        11 [string] = pairs
        13 [string] = GetDescendants
        14 [string] = BasePart
        15 [string] = IsA
        16 [string] = Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        9 [Instance] = BacktrackGhosts
        11 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = BackTrackLocal
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Destroy
        7 [string] = ClearAllChildren

====================================================================================================

Function Dump: setBacktrackEnabled

Function Upvalues: setBacktrackEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        9 [Instance] = BacktrackGhosts

Function Constants: setBacktrackEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = onSettingChanged
        11 [string] = BackTrackLocal

====================================================================================================

Function Dump: createGhost

Function Upvalues: createGhost
        1 [Instance] = quit_xyz
        2 [Instance] = BacktrackGhosts

Function Constants: createGhost
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Archivable
        5 [string] = Clone
        6 [string] = Name
        7 [string] = _Ghost
        8 [string] = pairs
        10 [string] = GetDescendants
        11 [string] = Script
        12 [string] = IsA
        13 [string] = LocalScript
        14 [string] = Sound
        15 [string] = BillboardGui
        16 [string] = Humanoid
        17 [string] = AlignPosition
        18 [string] = AlignOrientation
        19 [string] = BodyMover
        20 [string] = BodyGyro
        21 [string] = BodyVelocity
        22 [string] = BodyPosition
        23 [string] = BodyForce
        24 [string] = VectorForce
        25 [string] = LineForce
        26 [string] = Animator
        27 [string] = Destroy
        28 [string] = Motor6D
        29 [string] = Weld
        30 [string] = WeldConstraint
        31 [string] = HingeConstraint
        32 [string] = BallSocketConstraint
        33 [string] = Constraint
        34 [string] = JointInstance
        35 [string] = Color3
        36 [string] = fromRGB
        38 [string] = script
        40 [string] = Parent
        41 [string] = btcolor
        42 [string] = Value
        43 [string] = BasePart
        44 [string] = Anchored
        45 [string] = CanCollide
        46 [string] = CanTouch
        47 [string] = CanQuery
        48 [string] = Massless
        49 [string] = Enum
        50 [string] = Material
        51 [string] = ForceField
        52 [EnumItem] = Enum.Material.ForceField
        53 [number] = 0.7
        54 [string] = Transparency
        55 [string] = Color
        56 [string] = CastShadow
        57 [string] = Head
        58 [string] = face
        59 [string] = GetChildren
        60 [string] = Accessory

====================================================================================================
]]
