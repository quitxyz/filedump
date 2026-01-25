-- Script Path: game:GetService("StarterPlayer").StarterCharacterScripts.LocalScript
-- Took 0.38s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:14:32
-- Luau version 6, Types version 3
-- Time taken: 0.045785 seconds

local Parent_upvr = script.Parent
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local HumanoidRootPart_upvr = Parent_upvr:WaitForChild("HumanoidRootPart")
local CurrentCamera_upvr = workspace.CurrentCamera
Humanoid_upvr.JumpPower = 30
local var5_upvw = 80
local var6_upvw = var5_upvw
if not HumanoidRootPart_upvr:FindFirstChild("LandSound") then
    local Sound_upvw = Instance.new("Sound")
    Sound_upvw.Name = "LandSound"
    Sound_upvw.SoundId = "rbxassetid://109962379271807"
    Sound_upvw.Volume = 0.1
    Sound_upvw.RollOffMode = Enum.RollOffMode.InverseTapered
    Sound_upvw.RollOffMinDistance = 8
    Sound_upvw.RollOffMaxDistance = 60
    Sound_upvw.Parent = HumanoidRootPart_upvr
end
local function _() -- Line 44, Named "getFootParts"
    --[[ Upvalues[1]:
        [1]: Parent_upvr (readonly)
    ]]
    local LeftFoot_2 = Parent_upvr:FindFirstChild("LeftFoot")
    if not LeftFoot_2 then
        LeftFoot_2 = Parent_upvr:FindFirstChild("Left Leg")
    end
    local RightFoot_2 = Parent_upvr:FindFirstChild("RightFoot")
    if not RightFoot_2 then
        RightFoot_2 = Parent_upvr:FindFirstChild("Right Leg")
    end
    return LeftFoot_2, RightFoot_2
end
local function makeDustEmitter_upvr(arg1) -- Line 50, Named "makeDustEmitter"
    local ParticleEmitter = Instance.new("ParticleEmitter")
    ParticleEmitter.Texture = "rbxasset://textures/particles/smoke_main.dds"
    ParticleEmitter.Rate = 0
    ParticleEmitter.Lifetime = NumberRange.new(0.3, 0.5)
    ParticleEmitter.Speed = NumberRange.new(6, 10)
    ParticleEmitter.SpreadAngle = Vector2.new(45, 45)
    ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.6), NumberSequenceKeypoint.new(1, 0)})
    ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(1, 1)})
    ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(200, 200, 200))
    ParticleEmitter.EmissionDirection = Enum.NormalId.Top
    ParticleEmitter.Parent = arg1
    return ParticleEmitter
end
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Exclude
RaycastParams_new_result1_upvr.IgnoreWater = true
local function makeBasisFromUp_upvr(arg1) -- Line 75, Named "makeBasisFromUp"
    --[[ Upvalues[1]:
        [1]: HumanoidRootPart_upvr (readonly)
    ]]
    local LookVector = HumanoidRootPart_upvr.CFrame.LookVector
    local var15 = LookVector - arg1 * LookVector:Dot(arg1)
    if var15.Magnitude < 0.001 then
        var15 = Vector3.new(1, 0, 0) - arg1 * Vector3.new(1, 0, 0):Dot(arg1)
    end
    local Unit = var15.Unit:Cross(arg1).Unit
    return Unit, arg1, arg1:Cross(Unit).Unit
end
local Debris_upvr = game:GetService("Debris")
local function emitDustAt_upvr(arg1, arg2) -- Line 87, Named "emitDustAt"
    --[[ Upvalues[5]:
        [1]: RaycastParams_new_result1_upvr (readonly)
        [2]: Parent_upvr (readonly)
        [3]: makeBasisFromUp_upvr (readonly)
        [4]: makeDustEmitter_upvr (readonly)
        [5]: Debris_upvr (readonly)
    ]]
    if not arg1 then
    else
        RaycastParams_new_result1_upvr.FilterDescendantsInstances = {Parent_upvr}
        local workspace_Raycast_result1 = workspace:Raycast(arg1.Position, Vector3.new(0, -(arg1.Size.Y * 0.75 + 2), 0), RaycastParams_new_result1_upvr)
        if not workspace_Raycast_result1 then return end
        local Part = Instance.new("Part")
        Part.Anchored = true
        Part.CanCollide = false
        Part.CanQuery = false
        Part.CanTouch = false
        Part.Transparency = 1
        Part.Size = Vector3.new(0.20000, 0.20000, 0.20000)
        Part.CFrame = CFrame.new(workspace_Raycast_result1.Position)
        Part.Parent = workspace
        local Attachment = Instance.new("Attachment")
        Attachment.Parent = Part
        local makeBasisFromUp_upvr_result1, makeBasisFromUp_upvr_result2, makeBasisFromUp_upvr_result3 = makeBasisFromUp_upvr(workspace_Raycast_result1.Normal.Unit)
        Attachment.WorldCFrame = CFrame.fromMatrix(workspace_Raycast_result1.Position, makeBasisFromUp_upvr_result1, makeBasisFromUp_upvr_result2, makeBasisFromUp_upvr_result3)
        makeDustEmitter_upvr(Attachment):Emit(arg2 or 6)
        Debris_upvr:AddItem(Part, 0.8)
    end
end
local function _() -- Line 120, Named "createLandingParticles"
    --[[ Upvalues[2]:
        [1]: Parent_upvr (readonly)
        [2]: emitDustAt_upvr (readonly)
    ]]
    local LeftFoot_3 = Parent_upvr:FindFirstChild("LeftFoot")
    if not LeftFoot_3 then
        LeftFoot_3 = Parent_upvr:FindFirstChild("Left Leg")
    end
    local RightFoot = Parent_upvr:FindFirstChild("RightFoot")
    if not RightFoot then
        RightFoot = Parent_upvr:FindFirstChild("Right Leg")
    end
    emitDustAt_upvr(LeftFoot_3, 8)
    emitDustAt_upvr(RightFoot, 8)
end
local function _(arg1) -- Line 126, Named "playLandSound"
    --[[ Upvalues[1]:
        [1]: Sound_upvw (read and write)
    ]]
    Sound_upvw.PlaybackSpeed = 0.95 + math.random() * 0.1
    Sound_upvw:Play()
end
local function shakeCamera_upvr(arg1) -- Line 131, Named "shakeCamera"
    --[[ Upvalues[1]:
        [1]: CurrentCamera_upvr (readonly)
    ]]
    local var27 = arg1 * 0
    CurrentCamera_upvr.CFrame *= CFrame.new(Vector3.new(math.random(-100, 100) * var27 / 100, math.random(-100, 100) * var27 / 100, 0) * 0.1)
end
local var29_upvw = true
local var30_upvw = 0
Humanoid_upvr.StateChanged:Connect(function(arg1, arg2) -- Line 142
    --[[ Upvalues[3]:
        [1]: var29_upvw (read and write)
        [2]: var30_upvw (read and write)
        [3]: Humanoid_upvr (readonly)
    ]]
    if arg2 == Enum.HumanoidStateType.Jumping then
        local tick_result1 = tick()
        if not var29_upvw or tick_result1 - var30_upvw < 1 then
            Humanoid_upvr:ChangeState(Enum.HumanoidStateType.Freefall)
            return
        end
        var30_upvw = tick_result1
        var29_upvw = false
        task.wait(1)
        var29_upvw = true
    end
end)
local var33_upvw = false
local var34_upvw = false
local var35_upvw = 0
local var36_upvw = 0
game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 158
    --[[ Upvalues[14]:
        [1]: Humanoid_upvr (readonly)
        [2]: var33_upvw (read and write)
        [3]: var34_upvw (read and write)
        [4]: var35_upvw (read and write)
        [5]: var5_upvw (read and write)
        [6]: var5_upvw (read and write)
        [7]: var36_upvw (read and write)
        [8]: HumanoidRootPart_upvr (readonly)
        [9]: Parent_upvr (readonly)
        [10]: emitDustAt_upvr (readonly)
        [11]: Sound_upvw (read and write)
        [12]: shakeCamera_upvr (readonly)
        [13]: var6_upvw (read and write)
        [14]: CurrentCamera_upvr (readonly)
    ]]
    local var37
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var37 = Humanoid_upvr.Health
        return var37 <= 0
    end
    if not var37 or INLINED() then
    else
        var37 = true
        if Humanoid_upvr:GetState() ~= Enum.HumanoidStateType.Freefall then
            if Humanoid_upvr:GetState() ~= Enum.HumanoidStateType.Flying then
                var37 = false
            else
                var37 = true
            end
        end
        if var37 and not var33_upvw then
            var34_upvw = true
            var35_upvw = tick()
            var5_upvw += 3
        end
        if var33_upvw and not var37 then
            var34_upvw = false
            var36_upvw = tick()
            var5_upvw -= 1
            local LeftFoot = Parent_upvr:FindFirstChild("LeftFoot")
            if not LeftFoot then
                LeftFoot = Parent_upvr:FindFirstChild("Left Leg")
            end
            local RightFoot_3 = Parent_upvr:FindFirstChild("RightFoot")
            if not RightFoot_3 then
                RightFoot_3 = Parent_upvr:FindFirstChild("Right Leg")
            end
            emitDustAt_upvr(LeftFoot, 8)
            emitDustAt_upvr(RightFoot_3, 8)
            Sound_upvw.PlaybackSpeed = 0.95 + math.random() * 0.1
            Sound_upvw:Play()
            shakeCamera_upvr(math.clamp(math.abs(HumanoidRootPart_upvr.AssemblyLinearVelocity.Y) / 50, 0.1, 1))
            if 5 < HumanoidRootPart_upvr.AssemblyLinearVelocity.Magnitude then
                local AssemblyLinearVelocity = HumanoidRootPart_upvr.AssemblyLinearVelocity
                HumanoidRootPart_upvr.AssemblyLinearVelocity = Vector3.new(AssemblyLinearVelocity.X * 0.85, AssemblyLinearVelocity.Y, AssemblyLinearVelocity.Z * 0.85)
            end
        end
        if not var34_upvw and 0.15 < tick() - var36_upvw then
            var5_upvw = var5_upvw
        end
        var6_upvw += (var5_upvw - var6_upvw) * 0.15
        CurrentCamera_upvr.FieldOfView = var6_upvw
        if tick() - var36_upvw < 0.2 then
            CurrentCamera_upvr.CFrame *= CFrame.Angles(0, 0, math.rad(math.sin((tick() - var36_upvw) / 0.2 * math.pi) * 0))
        end
        var33_upvw = var37
    end
end)
CurrentCamera_upvr:GetPropertyChangedSignal("FieldOfView"):Connect(function() -- Line 208
    --[[ Upvalues[3]:
        [1]: CurrentCamera_upvr (readonly)
        [2]: var6_upvw (read and write)
        [3]: var5_upvw (read and write)
    ]]
    if 5 < math.abs(CurrentCamera_upvr.FieldOfView - var6_upvw) then
        var5_upvw = CurrentCamera_upvr.FieldOfView
        var6_upvw = CurrentCamera_upvr.FieldOfView
    end
end)
