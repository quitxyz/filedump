-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle2.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:51:32
-- Luau version 6, Types version 3
-- Time taken: 0.014446 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var6_upvw = false
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character_upvw = LocalPlayer_upvr.Character
if not Character_upvw then
    Character_upvw = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Humanoid_upvw = Character_upvw:WaitForChild("Humanoid")
local HumanoidRootPart_upvw = Character_upvw:WaitForChild("HumanoidRootPart")
local var11_upvw = false
local function setJumpCircleEnabled_upvr(arg1, arg2) -- Line 27, Named "setJumpCircleEnabled"
    --[[ Upvalues[6]:
        [1]: var6_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var6_upvw = arg1
    local var12
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var12 = udim2_upvr
        return var12
    end
    if not var6_upvw or not INLINED() then
        var12 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var12;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("JumpCircleToggle", var6_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 38
    --[[ Upvalues[2]:
        [1]: setJumpCircleEnabled_upvr (readonly)
        [2]: var6_upvw (read and write)
    ]]
    setJumpCircleEnabled_upvr(not var6_upvw, true)
end)
local function cfOnSurface_upvr(arg1, arg2) -- Line 42, Named "cfOnSurface"
    local Unit_2 = arg2.Unit
    local var16
    if 0.95 < math.abs(Unit_2:Dot(Vector3.new(0, 0, 1))) then
        var16 = Vector3.new(1, 0, 0)
    else
        var16 = Vector3.new(0, 0, 1)
    end
    local Unit = var16:Cross(Unit_2).Unit
    return CFrame.fromMatrix(arg1, Unit, Unit_2, Unit_2:Cross(Unit).Unit)
end
local function _(arg1) -- Line 50, Named "getEmitter"
    local class_ParticleEmitter = arg1:FindFirstChildOfClass("ParticleEmitter")
    if not class_ParticleEmitter then
        class_ParticleEmitter = arg1:FindFirstChildWhichIsA("ParticleEmitter", true)
    end
    return class_ParticleEmitter
end
local function _(arg1, arg2) -- Line 54, Named "pivotTo"
    if arg1:IsA("Model") then
        arg1:PivotTo(arg2)
    else
        arg1.CFrame = arg2
    end
end
local JumpFX_upvr = game:GetService("ReplicatedStorage").FXTemplates:WaitForChild("JumpFX")
local JumpColor_upvr = script.Parent.Parent.JumpColor
local function createJumpCircle_upvr(arg1, arg2) -- Line 62, Named "createJumpCircle"
    --[[ Upvalues[4]:
        [1]: var6_upvw (read and write)
        [2]: JumpFX_upvr (readonly)
        [3]: cfOnSurface_upvr (readonly)
        [4]: JumpColor_upvr (readonly)
    ]]
    if not var6_upvw then
    else
        local clone_upvr = JumpFX_upvr:Clone()
        clone_upvr.Parent = workspace
        if clone_upvr:IsA("Model") then
            clone_upvr:PivotTo(cfOnSurface_upvr(arg1 + arg2.Unit * 0.03, arg2))
        else
            -- KONSTANTERROR: Expression was reused, decompilation is incorrect
            clone_upvr.CFrame = cfOnSurface_upvr(arg1 + arg2.Unit * 0.03, arg2)
        end
        local class_ParticleEmitter_2 = clone_upvr:FindFirstChildOfClass("ParticleEmitter")
        if not class_ParticleEmitter_2 then
            class_ParticleEmitter_2 = clone_upvr:FindFirstChildWhichIsA("ParticleEmitter", true)
        end
        if not class_ParticleEmitter_2 then
            clone_upvr:Destroy()
            return
        end
        class_ParticleEmitter_2.Color = ColorSequence.new(JumpColor_upvr.Value)
        class_ParticleEmitter_2:Emit(1)
        task.delay(class_ParticleEmitter_2.Lifetime.Max + 0.1, function() -- Line 81
            --[[ Upvalues[1]:
                [1]: clone_upvr (readonly)
            ]]
            if clone_upvr and clone_upvr.Parent then
                clone_upvr:Destroy()
            end
        end)
    end
end
game:GetService("RunService").Heartbeat:Connect(function() -- Line 88
    --[[ Upvalues[6]:
        [1]: Character_upvw (read and write)
        [2]: Humanoid_upvw (read and write)
        [3]: HumanoidRootPart_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
        [5]: var11_upvw (read and write)
        [6]: createJumpCircle_upvr (readonly)
    ]]
    if not Character_upvw or not Humanoid_upvw or not HumanoidRootPart_upvw then
        Character_upvw = LocalPlayer_upvr.Character
        if Character_upvw then
            Humanoid_upvw = Character_upvw:FindFirstChild("Humanoid")
            HumanoidRootPart_upvw = Character_upvw:FindFirstChild("HumanoidRootPart")
        end
    else
        local any_GetState_result1 = Humanoid_upvw:GetState()
        local var32 = true
        if any_GetState_result1 ~= Enum.HumanoidStateType.Jumping then
            var32 = false
            if any_GetState_result1 == Enum.HumanoidStateType.Freefall then
                if 5 >= HumanoidRootPart_upvw.AssemblyLinearVelocity.Y then
                    var32 = false
                else
                    var32 = true
                end
            end
        end
        if var32 then
            local var33
            if not var11_upvw then
                local Position = HumanoidRootPart_upvw.Position
                local tbl_2 = {Character_upvw}
                local RaycastParams_new_result1 = RaycastParams.new()
                RaycastParams_new_result1.FilterDescendantsInstances = tbl_2
                var33 = Enum.RaycastFilterType.Exclude
                RaycastParams_new_result1.FilterType = var33
                var33 = workspace:Raycast(Position, Vector3.new(0, -20, 0), RaycastParams_new_result1)
                while var33 and var33.Instance:IsA("TrussPart") do
                    table.insert(tbl_2, var33.Instance)
                    RaycastParams_new_result1.FilterDescendantsInstances = tbl_2
                    var33 = workspace:Raycast(Position, Vector3.new(0, -20, 0), RaycastParams_new_result1)
                end
                if var33 then
                    createJumpCircle_upvr(var33.Position, var33.Normal)
                end
            end
        end
        var11_upvw = var32
    end
end)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 131
    --[[ Upvalues[4]:
        [1]: Character_upvw (read and write)
        [2]: Humanoid_upvw (read and write)
        [3]: HumanoidRootPart_upvw (read and write)
        [4]: var11_upvw (read and write)
    ]]
    Character_upvw = arg1
    Humanoid_upvw = arg1:WaitForChild("Humanoid")
    HumanoidRootPart_upvw = arg1:WaitForChild("HumanoidRootPart")
    var11_upvw = false
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.JumpCircleToggle = var6_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 144
        --[[ Upvalues[7]:
            [1]: var6_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "JumpCircleToggle" then
            var6_upvw = arg2
            if not var6_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = JumpCircleToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = HumanoidRootPart

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        10 [string] = Freefall
        12 [string] = AssemblyLinearVelocity
        13 [string] = Y
        14 [string] = Position
        15 [string] = RaycastParams
        16 [string] = new
        18 [string] = FilterDescendantsInstances
        19 [string] = RaycastFilterType
        20 [string] = Exclude
        22 [string] = FilterType
        23 [string] = workspace
        25 [Vector3] = 0, -20, 0
        26 [string] = Raycast
        27 [string] = Instance
        28 [string] = TrussPart
        29 [string] = IsA
        30 [string] = table
        31 [string] = insert
        33 [string] = Normal

====================================================================================================

Function Dump: createJumpCircle

Function Upvalues: createJumpCircle

Function Constants: createJumpCircle
        1 [string] = Clone
        2 [string] = workspace
        4 [string] = Parent
        5 [number] = 0.03
        6 [string] = Unit
        7 [string] = Model
        8 [string] = IsA
        9 [string] = PivotTo
        10 [string] = CFrame
        11 [string] = ParticleEmitter
        12 [string] = FindFirstChildOfClass
        13 [string] = FindFirstChildWhichIsA
        14 [string] = Destroy
        15 [string] = ColorSequence
        16 [string] = new
        18 [string] = Value
        19 [string] = Color
        20 [string] = Emit
        21 [string] = Lifetime
        22 [string] = Max
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================

Function Dump: pivotTo

Function Upvalues: pivotTo

Function Constants: pivotTo
        1 [string] = Model
        2 [string] = IsA
        3 [string] = PivotTo
        4 [string] = CFrame

====================================================================================================

Function Dump: getEmitter

Function Upvalues: getEmitter

Function Constants: getEmitter
        1 [string] = ParticleEmitter
        2 [string] = FindFirstChildOfClass
        3 [string] = FindFirstChildWhichIsA

====================================================================================================

Function Dump: cfOnSurface

Function Upvalues: cfOnSurface

Function Constants: cfOnSurface
        1 [string] = Unit
        2 [Vector3] = 0, 0, 1
        3 [string] = Dot
        4 [string] = math
        5 [string] = abs
        7 [number] = 0.95
        8 [Vector3] = 1, 0, 0
        9 [string] = Cross
        10 [string] = CFrame
        11 [string] = fromMatrix

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setJumpCircleEnabled

Function Upvalues: setJumpCircleEnabled

Function Constants: setJumpCircleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JumpCircleToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = JumpCircleToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [Instance] = Humanoid
        3 [Instance] = HumanoidRootPart
        4 [Instance] = quit_xyz
        5 [boolean] = false
        6 [function] = createJumpCircle

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        9 [EnumItem] = Enum.HumanoidStateType.Jumping
        10 [string] = Freefall
        11 [EnumItem] = Enum.HumanoidStateType.Freefall
        12 [string] = AssemblyLinearVelocity
        13 [string] = Y
        14 [string] = Position
        15 [string] = RaycastParams
        16 [string] = new
        18 [string] = FilterDescendantsInstances
        19 [string] = RaycastFilterType
        20 [string] = Exclude
        21 [EnumItem] = Enum.RaycastFilterType.Exclude
        22 [string] = FilterType
        23 [string] = workspace
        24 [Instance] = Workspace
        25 [Vector3] = 0, -20, 0
        26 [string] = Raycast
        27 [string] = Instance
        28 [string] = TrussPart
        29 [string] = IsA
        30 [string] = table
        31 [string] = insert
        33 [string] = Normal

====================================================================================================

Function Dump: setJumpCircleEnabled

Function Upvalues: setJumpCircleEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setJumpCircleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JumpCircleToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [Instance] = Humanoid
        3 [Instance] = HumanoidRootPart
        4 [boolean] = false

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = HumanoidRootPart

====================================================================================================

Function Dump: createJumpCircle

Function Upvalues: createJumpCircle
        1 [boolean] = false
        2 [Instance] = JumpFX
        3 [function] = cfOnSurface
        4 [Instance] = JumpColor

Function Constants: createJumpCircle
        1 [string] = Clone
        2 [string] = workspace
        3 [Instance] = Workspace
        4 [string] = Parent
        5 [number] = 0.03
        6 [string] = Unit
        7 [string] = Model
        8 [string] = IsA
        9 [string] = PivotTo
        10 [string] = CFrame
        11 [string] = ParticleEmitter
        12 [string] = FindFirstChildOfClass
        13 [string] = FindFirstChildWhichIsA
        14 [string] = Destroy
        15 [string] = ColorSequence
        16 [string] = new
        18 [string] = Value
        19 [string] = Color
        20 [string] = Emit
        21 [string] = Lifetime
        22 [string] = Max
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setJumpCircleEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: cfOnSurface

Function Upvalues: cfOnSurface

Function Constants: cfOnSurface
        1 [string] = Unit
        2 [Vector3] = 0, 0, 1
        3 [string] = Dot
        4 [string] = math
        5 [string] = abs
        7 [number] = 0.95
        8 [Vector3] = 1, 0, 0
        9 [string] = Cross
        10 [string] = CFrame
        11 [string] = fromMatrix

====================================================================================================
]]
