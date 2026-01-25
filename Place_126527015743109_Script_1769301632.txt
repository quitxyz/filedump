-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.58s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:40:25
-- Luau version 6, Types version 3
-- Time taken: 0.114343 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local TweenService_upvr = game:GetService("TweenService")
local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local Workspace_upvr = game:GetService("Workspace")
local CurrentCamera_upvr = Workspace_upvr.CurrentCamera
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var12_upvw
if not ReplicatedStorage:FindFirstChild("DTMarker") then
    var12_upvw = "RemoteEvent"
    local any_upvw = Instance.new(var12_upvw)
    any_upvw.Name = "DTMarker"
    any_upvw.Parent = ReplicatedStorage
end
var12_upvw = script.Parent
local DT = var12_upvw.Parent:FindFirstChild("DT")
local function INLINED() -- Internal function, doesn't exist in bytecode
    var12_upvw = DT.Value
    return var12_upvw
end
if not DT or not INLINED() then
    var12_upvw = false
end
if DT then
    DT.Changed:Connect(function(arg1) -- Line 34
        --[[ Upvalues[1]:
            [1]: var12_upvw (read and write)
        ]]
        var12_upvw = arg1
    end)
end
local var16_upvw = false
local var17_upvw
local function setAutoShootEnabled_upvr(arg1, arg2) -- Line 41, Named "setAutoShootEnabled"
    --[[ Upvalues[7]:
        [1]: var16_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var17_upvw (read and write)
    ]]
    var16_upvw = arg1
    local var18
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var18 = udim2_upvr_2
        return var18
    end
    if not var16_upvw or not INLINED_2() then
        var18 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var18;
    }):Play()
    if not var16_upvw then
        var17_upvw = nil
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AutoShoot", var16_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 55
    --[[ Upvalues[2]:
        [1]: setAutoShootEnabled_upvr (readonly)
        [2]: var16_upvw (read and write)
    ]]
    setAutoShootEnabled_upvr(not var16_upvw, true)
end)
local var21_upvw = 0
local var22_upvw = false
local var23_upvw = 0
local var24_upvw = false
local Fov = script.Parent.Parent:FindFirstChild("Fov")
if not Fov or not Fov.Value then
    local var26_upvw = 360
end
if Fov then
    Fov.Changed:Connect(function(arg1) -- Line 79
        --[[ Upvalues[1]:
            [1]: var26_upvw (read and write)
        ]]
        var26_upvw = arg1
    end)
end
local Prediction = script.Parent.Parent:FindFirstChild("Prediction")
if not Prediction or not Prediction.Value then
    local var29_upvw = false
end
if Prediction then
    Prediction.Changed:Connect(function(arg1) -- Line 88
        --[[ Upvalues[1]:
            [1]: var29_upvw (read and write)
        ]]
        var29_upvw = arg1
    end)
end
local Head_2 = script.Parent.Parent:FindFirstChild("Head")
local Legs = script.Parent.Parent:FindFirstChild("Legs")
local Torso = script.Parent.Parent:FindFirstChild("Torso")
if not Head_2 or not Head_2.Value then
end
if not Legs or not Legs.Value then
end
if not Torso or not Torso.Value then
end
if Head_2 then
    local var35_upvw = true
    Head_2.Changed:Connect(function(arg1) -- Line 100
        --[[ Upvalues[1]:
            [1]: var35_upvw (read and write)
        ]]
        var35_upvw = arg1
    end)
end
if Legs then
    local var37_upvw = true
    Legs.Changed:Connect(function(arg1) -- Line 101
        --[[ Upvalues[1]:
            [1]: var37_upvw (read and write)
        ]]
        var37_upvw = arg1
    end)
end
if Torso then
    local var39_upvw = true
    Torso.Changed:Connect(function(arg1) -- Line 102
        --[[ Upvalues[1]:
            [1]: var39_upvw (read and write)
        ]]
        var39_upvw = arg1
    end)
end
local BAim = script.Parent.Parent:FindFirstChild("BAim")
local Hitchance = script.Parent.Parent:FindFirstChild("Hitchance")
local MinDamage = script.Parent.Parent:FindFirstChild("MinDamage")
local AutoS = script.Parent.Parent:FindFirstChild("AutoS")
if not BAim or not BAim.Value then
end
if not Hitchance or not Hitchance.Value then
    local var44_upvw = 100
end
if not MinDamage or not MinDamage.Value then
    local var45_upvw = 0
end
if not AutoS or not AutoS.Value then
    local var46_upvw = false
end
if BAim then
    local var48_upvw = false
    BAim.Changed:Connect(function(arg1) -- Line 117
        --[[ Upvalues[1]:
            [1]: var48_upvw (read and write)
        ]]
        var48_upvw = arg1
    end)
end
if Hitchance then
    Hitchance.Changed:Connect(function(arg1) -- Line 118
        --[[ Upvalues[1]:
            [1]: var44_upvw (read and write)
        ]]
        var44_upvw = arg1
    end)
end
if MinDamage then
    MinDamage.Changed:Connect(function(arg1) -- Line 119
        --[[ Upvalues[1]:
            [1]: var45_upvw (read and write)
        ]]
        var45_upvw = arg1
    end)
end
if AutoS then
    AutoS.Changed:Connect(function(arg1) -- Line 120
        --[[ Upvalues[1]:
            [1]: var46_upvw (read and write)
        ]]
        var46_upvw = arg1
    end)
end
local tbl_4_upvr = {
    Head = 4;
    UpperTorso = 1;
    LowerTorso = 1;
    Torso = 1;
    HumanoidRootPart = 1;
    LeftUpperArm = 0.75;
    LeftLowerArm = 0.75;
    LeftHand = 0.75;
    RightUpperArm = 0.75;
    RightLowerArm = 0.75;
    RightHand = 0.75;
    LeftUpperLeg = 0.6;
    LeftLowerLeg = 0.6;
    LeftFoot = 0.6;
    RightUpperLeg = 0.6;
    RightLowerLeg = 0.6;
    RightFoot = 0.6;
    ["Left Leg"] = 0.6;
    ["Right Leg"] = 0.6;
}
local function getToolComponents_upvr() -- Line 146, Named "getToolComponents"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character_3 = LocalPlayer_upvr.Character
    if not Character_3 then
        return nil
    end
    local class_Tool = Character_3:FindFirstChildOfClass("Tool")
    if not class_Tool then
        return nil
    end
    local Remotes = class_Tool:FindFirstChild("Remotes")
    if not Remotes then
        return nil
    end
    local FireShot = Remotes:FindFirstChild("FireShot")
    if not FireShot then
        return nil
    end
    return {
        tool = class_Tool;
        fireShot = FireShot;
        reload = Remotes:FindFirstChild("Reload");
        handle = class_Tool:FindFirstChild("Handle");
    }
end
local var58_upvw = 0
local function performDoubleTapTeleport_upvr() -- Line 172, Named "performDoubleTapTeleport"
    --[[ Upvalues[5]:
        [1]: var58_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var12_upvw (read and write)
        [4]: any_upvw (read and write)
        [5]: Workspace_upvr (readonly)
    ]]
    local var59
    if os.clock() - var58_upvw < var59 then
    else
        var59 = LocalPlayer_upvr:FindFirstChild("leaderstats")
        if var59 then
            var59 = LocalPlayer_upvr:FindFirstChild("leaderstats"):FindFirstChild("leavemealonexd")
        end
        if not var12_upvw then
            if var59 and var59.Value ~= true then
                var59.Value = true
            end
            return
        end
        var58_upvw = os.clock()
        if var59 then
            var59.Value = false
        end
        local Character_8_upvr = LocalPlayer_upvr.Character
        if not Character_8_upvr then return end
        local Humanoid_3 = Character_8_upvr:FindFirstChild("Humanoid")
        local HumanoidRootPart = Character_8_upvr:FindFirstChild("HumanoidRootPart")
        if not Humanoid_3 or not HumanoidRootPart or Humanoid_3.Health <= 0 then return end
        pcall(function() -- Line 195
            --[[ Upvalues[1]:
                [1]: any_upvw (copied, read and write)
            ]]
            any_upvw:FireServer("start", 4)
        end)
        local MoveDirection = Humanoid_3.MoveDirection
        if MoveDirection.Magnitude < 0.05 then
            MoveDirection = HumanoidRootPart.CFrame.LookVector
        end
        local Unit_4 = Vector3.new(MoveDirection.X, 0, MoveDirection.Z).Unit
        local Position = HumanoidRootPart.Position
        local var68 = Position + Unit_4 * 4
        local RaycastParams_new_result1 = RaycastParams.new()
        RaycastParams_new_result1.FilterDescendantsInstances = {Character_8_upvr}
        RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
        RaycastParams_new_result1.IgnoreWater = true
        local any_Raycast_result1_2 = Workspace_upvr:Raycast(Position, var68 - Position, RaycastParams_new_result1)
        if any_Raycast_result1_2 then
            var68 = Position + Unit_4 * math.max(0, (any_Raycast_result1_2.Position - Position).Magnitude - 2)
        end
        local any_Raycast_result1_3 = Workspace_upvr:Raycast(var68 + Vector3.new(0, 5, 0), Vector3.new(0, -20, 0), RaycastParams_new_result1)
        if not any_Raycast_result1_3 then
            pcall(function() -- Line 230
                --[[ Upvalues[1]:
                    [1]: any_upvw (copied, read and write)
                ]]
                any_upvw:FireServer("cancel")
            end)
            return
        end
        HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
        Character_8_upvr:PivotTo(CFrame.new(Vector3.new(var68.X, any_Raycast_result1_3.Position.Y + Humanoid_3.HipHeight + 0.5, var68.Z)) * HumanoidRootPart.CFrame.Rotation)
        task.defer(function() -- Line 244
            --[[ Upvalues[2]:
                [1]: Character_8_upvr (readonly)
                [2]: any_upvw (copied, read and write)
            ]]
            if Character_8_upvr and Character_8_upvr:FindFirstChild("HumanoidRootPart") then
                Character_8_upvr.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
            task.wait(0.1)
            pcall(function() -- Line 250
                --[[ Upvalues[1]:
                    [1]: any_upvw (copied, read and write)
                ]]
                any_upvw:FireServer("end")
            end)
        end)
    end
end
local aahelp_upvr = ReplicatedStorage:WaitForChild("aahelp", 5)
local aahelp1_upvr = ReplicatedStorage:WaitForChild("aahelp1", 5)
local var78_upvw = 0
local function disableAntiAimsAndRotate_upvr(arg1) -- Line 260, Named "disableAntiAimsAndRotate"
    --[[ Upvalues[4]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: aahelp_upvr (readonly)
        [3]: aahelp1_upvr (readonly)
        [4]: var78_upvw (read and write)
    ]]
    local Character_5_upvr = LocalPlayer_upvr.Character
    if not Character_5_upvr then
    else
        local HumanoidRootPart_3_upvr = Character_5_upvr:FindFirstChild("HumanoidRootPart")
        if not HumanoidRootPart_3_upvr then return end
        if aahelp_upvr then
            aahelp_upvr:FireServer("disable")
        end
        if aahelp1_upvr then
            aahelp1_upvr:FireServer("disable")
        end
        task.wait(0.01)
        local Unit = Vector3.new(arg1.X, 0, arg1.Z).Unit
        if 0.1 < Unit.Magnitude then
            HumanoidRootPart_3_upvr.CFrame = CFrame.new(HumanoidRootPart_3_upvr.Position, HumanoidRootPart_3_upvr.Position + Unit)
        end
        var78_upvw = tick() + 0.15
        local Rotation_upvr = HumanoidRootPart_3_upvr.CFrame.Rotation
        task.delay(0.15, function() -- Line 291
            --[[ Upvalues[5]:
                [1]: Character_5_upvr (readonly)
                [2]: HumanoidRootPart_3_upvr (readonly)
                [3]: Rotation_upvr (readonly)
                [4]: aahelp_upvr (copied, readonly)
                [5]: aahelp1_upvr (copied, readonly)
            ]]
            if Character_5_upvr and HumanoidRootPart_3_upvr and HumanoidRootPart_3_upvr.Parent then
                HumanoidRootPart_3_upvr.CFrame = CFrame.new(HumanoidRootPart_3_upvr.Position) * Rotation_upvr
            end
            if aahelp_upvr then
                aahelp_upvr:FireServer("enable")
            end
            if aahelp1_upvr then
                aahelp1_upvr:FireServer("enable")
            end
        end)
    end
end
local var84_upvw = false
local var85_upvw = false
local function applyAutoStop_upvr() -- Line 314, Named "applyAutoStop"
    --[[ Upvalues[4]:
        [1]: var46_upvw (read and write)
        [2]: var84_upvw (read and write)
        [3]: var85_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
    ]]
    if not var46_upvw then
    else
        if var84_upvw or var85_upvw then return end
        local Character_9 = LocalPlayer_upvr.Character
        if not Character_9 then return end
        local Humanoid_5_upvr = Character_9:FindFirstChild("Humanoid")
        local HumanoidRootPart_2 = Character_9:FindFirstChild("HumanoidRootPart")
        if not Humanoid_5_upvr or not HumanoidRootPart_2 then return end
        if Humanoid_5_upvr.FloorMaterial == Enum.Material.Air then return end
        var84_upvw = true
        var85_upvw = true
        local BodyVelocity_upvr = Instance.new("BodyVelocity")
        BodyVelocity_upvr.Name = "AutoStopVelocity"
        BodyVelocity_upvr.Velocity = Vector3.new(0, 0, 0)
        BodyVelocity_upvr.MaxForce = Vector3.new(100000, 0, 100000)
        BodyVelocity_upvr.P = 10000
        BodyVelocity_upvr.Parent = HumanoidRootPart_2
        Humanoid_5_upvr.WalkSpeed = 0
        local WalkSpeed_upvr = Humanoid_5_upvr.WalkSpeed
        task.delay(0.3, function() -- Line 342
            --[[ Upvalues[5]:
                [1]: BodyVelocity_upvr (readonly)
                [2]: Humanoid_5_upvr (readonly)
                [3]: WalkSpeed_upvr (readonly)
                [4]: var85_upvw (copied, read and write)
                [5]: var84_upvw (copied, read and write)
            ]]
            if BodyVelocity_upvr and BodyVelocity_upvr.Parent then
                BodyVelocity_upvr:Destroy()
            end
            if Humanoid_5_upvr and Humanoid_5_upvr.Parent then
                Humanoid_5_upvr.WalkSpeed = WalkSpeed_upvr
            end
            var85_upvw = false
            var84_upvw = false
        end)
    end
end
local hit = ReplicatedStorage:FindFirstChild("hit")
if hit then
    hit.OnClientEvent:Connect(function() -- Line 358
        --[[ Upvalues[1]:
            [1]: applyAutoStop_upvr (readonly)
        ]]
        applyAutoStop_upvr()
    end)
end
local function _() -- Line 367, Named "isPlayerAlive"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character = LocalPlayer_upvr.Character
    if not Character then
        return false
    end
    local Humanoid_4 = Character:FindFirstChild("Humanoid")
    if not Humanoid_4 or Humanoid_4.Health <= 0 then
        return false
    end
    return true
end
local random_state_upvr = Random.new()
local function _(arg1, arg2) -- Line 379, Named "randomPointInPart"
    --[[ Upvalues[1]:
        [1]: random_state_upvr (readonly)
    ]]
    if not arg1 then
        return arg1.Position
    end
    if arg2 <= 0 then
        return arg1.Position
    end
    local var97 = arg1.Size * arg2
    return (arg1.Position) + (arg1.CFrame.RightVector * random_state_upvr:NextNumber(-var97.X / 2, var97.X / 2) + arg1.CFrame.UpVector * random_state_upvr:NextNumber(-var97.Y / 2, var97.Y / 2) + arg1.CFrame.LookVector * random_state_upvr:NextNumber(-var97.Z / 2, var97.Z / 2))
end
local function canBulletPassThrough_upvr(arg1) -- Line 398, Named "canBulletPassThrough"
    if not arg1 or not arg1:IsA("BasePart") then
        return false
    end
    local any_lower_result1_2 = arg1.Name:lower()
    if any_lower_result1_2:find("hamik") or any_lower_result1_2:find("paletka") then
        return true
    end
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        local any_lower_result1 = arg1.Parent.Name:lower()
        return any_lower_result1:find("hamik")
    end
    if arg1.Parent and (INLINED_3() or any_lower_result1:find("paletka")) then
        return true
    end
    if 0.2 < arg1.Transparency then
        return true
    end
    if not arg1.CanCollide then
        return true
    end
    if arg1:IsA("Decal") or arg1:IsA("ParticleEmitter") or arg1:IsA("Beam") or arg1:IsA("Trail") then
        return true
    end
    return false
end
local function isPartOfCharacter_upvr(arg1) -- Line 424, Named "isPartOfCharacter"
    if not arg1 or not arg1:IsA("BasePart") then
        return false
    end
    local Parent = arg1.Parent
    if not Parent then
        return false
    end
    if Parent:FindFirstChild("Humanoid") then
        return true
    end
    if Parent:IsA("Accessory") or Parent:IsA("Hat") then
        return true
    end
    return false
end
local function strictWallCheck_upvr(arg1, arg2, arg3, arg4) -- Line 436, Named "strictWallCheck"
    --[[ Upvalues[4]:
        [1]: Workspace_upvr (readonly)
        [2]: canBulletPassThrough_upvr (readonly)
        [3]: strictWallCheck_upvr (readonly)
        [4]: isPartOfCharacter_upvr (readonly)
    ]]
    if not arg1 or not arg2 then
        return false, "invalid_positions"
    end
    local var105 = arg2 - arg1
    local Magnitude = var105.Magnitude
    if Magnitude < 0.1 or 1000 < Magnitude then
        return false, "invalid_distance"
    end
    local tbl_2 = {}
    tbl_2[1] = arg3
    tbl_2[2] = arg4
    for _, v in ipairs(arg3:GetDescendants()) do
        if v:IsA("BasePart") then
            table.insert(tbl_2, v)
        end
    end
    for _, v_2 in ipairs(arg4:GetDescendants()) do
        if v_2:IsA("BasePart") then
            table.insert(tbl_2, v_2)
        end
    end
    local RaycastParams_new_result1_2 = RaycastParams.new()
    RaycastParams_new_result1_2.FilterDescendantsInstances = tbl_2
    RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
    RaycastParams_new_result1_2.IgnoreWater = true
    local any_Raycast_result1 = Workspace_upvr:Raycast(arg1, var105, RaycastParams_new_result1_2)
    if not any_Raycast_result1 then
        return true, "clear"
    end
    local Instance = any_Raycast_result1.Instance
    if Instance:IsDescendantOf(arg4) then
        return true, "hit_target"
    end
    if canBulletPassThrough_upvr(Instance) then
        local var117 = any_Raycast_result1.Position + var105.Unit * 0.1
        if (arg2 - var117).Magnitude < 0.1 then
            return true, "transparent_pass"
        end
        return strictWallCheck_upvr(var117, arg2, arg3, arg4)
    end
    if isPartOfCharacter_upvr(Instance) then
        local var118 = any_Raycast_result1.Position + var105.Unit * 0.1
        if (arg2 - var118).Magnitude < 0.1 then
            return true, "passed_other_player"
        end
        return strictWallCheck_upvr(var118, arg2, arg3, arg4)
    end
    return false, "wall_blocking"
end
local function multiPointWallCheck_upvr(arg1, arg2, arg3, arg4) -- Line 502, Named "multiPointWallCheck"
    --[[ Upvalues[1]:
        [1]: strictWallCheck_upvr (readonly)
    ]]
    if not arg1 or not arg2 or not arg3 or not arg4 then
        return false
    end
    local strictWallCheck_upvr_result1, _ = strictWallCheck_upvr(arg1, arg2, arg3, arg4)
    if strictWallCheck_upvr_result1 then
        return true
    end
    for _, v_3 in ipairs({Vector3.new(0, 0.30000, 0), Vector3.new(0, -0.3000, 0)}) do
        local strictWallCheck_result1, _ = strictWallCheck_upvr(arg1, arg2 + v_3, arg3, arg4)
        if strictWallCheck_result1 then
            return true
        end
    end
    return false
end
local function predictPartPosition_upvr(arg1, arg2) -- Line 536, Named "predictPartPosition"
    --[[ Upvalues[2]:
        [1]: var29_upvw (read and write)
        [2]: CurrentCamera_upvr (readonly)
    ]]
    if not var29_upvw or not arg2 then
        return arg1.Position
    end
    local AssemblyLinearVelocity = arg2.AssemblyLinearVelocity
    if not AssemblyLinearVelocity then
        AssemblyLinearVelocity = Vector3.new()
    end
    if AssemblyLinearVelocity.Magnitude < 3 then
        return arg1.Position
    end
    return arg1.Position + AssemblyLinearVelocity * math.clamp((arg1.Position - CurrentCamera_upvr.CFrame.Position).Magnitude / 1000, 0.08, 0.2) * 1.2
end
local function _(arg1) -- Line 560, Named "isInFOV"
    --[[ Upvalues[2]:
        [1]: var26_upvw (read and write)
        [2]: CurrentCamera_upvr (readonly)
    ]]
    if 360 <= var26_upvw then
        return true
    end
    local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2 = CurrentCamera_upvr:WorldToViewportPoint(arg1)
    if not any_WorldToViewportPoint_result2 then
        return false
    end
    local ViewportSize = CurrentCamera_upvr.ViewportSize
    local var133 = any_WorldToViewportPoint_result1.X - ViewportSize.X * 0.5
    local var134 = any_WorldToViewportPoint_result1.Y - ViewportSize.Y * 0.5
    local var135 = var133 * var133
    if var135 + var134 * var134 > var26_upvw * var26_upvw then
        var135 = false
    else
        var135 = true
    end
    return var135
end
local function _(arg1, arg2) -- Line 580, Named "calculatePotentialDamage"
    --[[ Upvalues[1]:
        [1]: tbl_4_upvr (readonly)
    ]]
    local var136 = 54 * (tbl_4_upvr[arg1] or 0.5)
    if 300 < arg2 then
        var136 *= 0.3
    elseif 200 < arg2 then
        var136 *= 0.5
    elseif 100 < arg2 then
        var136 *= 0.8
    end
    return math.floor(var136)
end
local function _(arg1, arg2) -- Line 596, Named "checkMinDamage"
    --[[ Upvalues[2]:
        [1]: var45_upvw (read and write)
        [2]: tbl_4_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    -- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
    local var137
    if var45_upvw <= 0 then
        return true
    end
    var137 = tbl_4_upvr[arg1.Name]
    var137 = 54 * (var137 or 0.5)
    if 300 < arg2 then
        var137 *= 0.3
        -- KONSTANTWARNING: GOTO [27] #23
    end
    -- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [18] 16. Error Block 24 start (CF ANALYSIS FAILED)
    if 200 < arg2 then
        var137 *= 0.5
    elseif 100 < arg2 then
        var137 *= 0.8
    end
    if var45_upvw > math.floor(var137) then
    else
    end
    do
        return true
    end
    -- KONSTANTERROR: [18] 16. Error Block 24 end (CF ANALYSIS FAILED)
end
local function _() -- Line 606, Named "checkHitchance"
    --[[ Upvalues[2]:
        [1]: var44_upvw (read and write)
        [2]: random_state_upvr (readonly)
    ]]
    local var138
    if var138 <= var44_upvw then
        return true
    end
    var138 = 0
    if var44_upvw <= var138 then
        return false
    end
    if random_state_upvr:NextInteger(1, 100) > var44_upvw then
        var138 = false
    else
        var138 = true
    end
    return var138
end
local tbl_3_upvr = {}
local function updateActivePlayersList_upvr() -- Line 623, Named "updateActivePlayersList"
    --[[ Upvalues[3]:
        [1]: tbl_3_upvr (readonly)
        [2]: Players_upvr (readonly)
        [3]: LocalPlayer_upvr (readonly)
    ]]
    table.clear(tbl_3_upvr)
    for _, v_4 in ipairs(Players_upvr:GetPlayers()) do
        if v_4 ~= LocalPlayer_upvr and (not v_4.Team or not LocalPlayer_upvr.Team or v_4.Team ~= LocalPlayer_upvr.Team) then
            local Character_4 = v_4.Character
            if Character_4 then
                local Humanoid_8 = Character_4:FindFirstChild("Humanoid")
                if Humanoid_8 and 0 < Humanoid_8.Health and Character_4:FindFirstChild("HumanoidRootPart") then
                    local tbl = {
                        player = v_4;
                        character = Character_4;
                        humanoid = Humanoid_8;
                    }
                    -- KONSTANTERROR: Expression was reused, decompilation is incorrect
                    tbl.rootPart = Character_4:FindFirstChild("HumanoidRootPart")
                    table.insert(tbl_3_upvr, tbl)
                end
            end
        end
    end
end
local var156_upvw = 0
local function findBestTarget_upvr() -- Line 648, Named "findBestTarget"
    --[[ Upvalues[13]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var156_upvw (read and write)
        [3]: updateActivePlayersList_upvr (readonly)
        [4]: tbl_3_upvr (readonly)
        [5]: CurrentCamera_upvr (readonly)
        [6]: var48_upvw (read and write)
        [7]: var35_upvw (read and write)
        [8]: var39_upvw (read and write)
        [9]: var37_upvw (read and write)
        [10]: var26_upvw (read and write)
        [11]: var45_upvw (read and write)
        [12]: tbl_4_upvr (readonly)
        [13]: multiPointWallCheck_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 104 start (CF ANALYSIS FAILED)
    local Character_13 = LocalPlayer_upvr.Character
    local var158
    if not Character_13 then
        var158 = false
    else
        local Humanoid_6 = Character_13:FindFirstChild("Humanoid")
        if not Humanoid_6 or Humanoid_6.Health <= 0 then
            var158 = false
        else
            var158 = true
        end
    end
    if not var158 then
        var158 = nil
        return var158
    end
    var158 = tick()
    if 0.5 <= var158 - var156_upvw then
        var156_upvw = var158
        updateActivePlayersList_upvr()
    end
    if #tbl_3_upvr == 0 then
        return nil
    end
    if not LocalPlayer_upvr.Character:FindFirstChild("Head") then
        return nil
    end
    local _ = CurrentCamera_upvr.ViewportSize
    local _ = 1
    -- KONSTANTERROR: [0] 1. Error Block 104 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [346] 264. Error Block 80 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [346] 264. Error Block 80 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [72] 58. Error Block 18 start (CF ANALYSIS FAILED)
    -- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.14]
    -- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.132226]
    -- KONSTANTERROR: [72] 58. Error Block 18 end (CF ANALYSIS FAILED)
end
local function isGrounded_upvr(arg1, arg2) -- Line 758, Named "isGrounded"
    --[[ Upvalues[2]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: Workspace_upvr (readonly)
    ]]
    if not arg1 or not arg2 then
        return false
    end
    if arg1.FloorMaterial ~= Enum.Material.Air then
        return true
    end
    local RaycastParams_new_result1_3 = RaycastParams.new()
    RaycastParams_new_result1_3.FilterDescendantsInstances = {LocalPlayer_upvr.Character}
    RaycastParams_new_result1_3.FilterType = Enum.RaycastFilterType.Exclude
    if Workspace_upvr:Raycast(arg2.Position, Vector3.new(0, -3.5, 0), RaycastParams_new_result1_3) == nil then
    else
    end
    return true
end
local function _(arg1) -- Line 781, Named "isPlayerJumping"
    if not arg1 then
        return true
    end
    local any_GetState_result1_2 = arg1:GetState()
    local var168 = true
    if any_GetState_result1_2 ~= Enum.HumanoidStateType.Jumping then
        var168 = true
        if any_GetState_result1_2 ~= Enum.HumanoidStateType.Freefall then
            if any_GetState_result1_2 ~= Enum.HumanoidStateType.FallingDown then
                var168 = false
            else
                var168 = true
            end
        end
    end
    return var168
end
local var169_upvw
local function _() -- Line 796, Named "startTargeting"
    --[[ Upvalues[19]:
        [1]: var169_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: var16_upvw (read and write)
        [4]: var17_upvw (read and write)
        [5]: var24_upvw (read and write)
        [6]: LocalPlayer_upvr (readonly)
        [7]: isGrounded_upvr (readonly)
        [8]: var21_upvw (read and write)
        [9]: var22_upvw (read and write)
        [10]: getToolComponents_upvr (readonly)
        [11]: findBestTarget_upvr (readonly)
        [12]: var23_upvw (read and write)
        [13]: var29_upvw (read and write)
        [14]: predictPartPosition_upvr (readonly)
        [15]: multiPointWallCheck_upvr (readonly)
        [16]: var44_upvw (read and write)
        [17]: random_state_upvr (readonly)
        [18]: disableAntiAimsAndRotate_upvr (readonly)
        [19]: performDoubleTapTeleport_upvr (readonly)
    ]]
    if var169_upvw then
    else
        var169_upvw = RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 799
            --[[ Upvalues[17]:
                [1]: var16_upvw (copied, read and write)
                [2]: var17_upvw (copied, read and write)
                [3]: var24_upvw (copied, read and write)
                [4]: LocalPlayer_upvr (copied, readonly)
                [5]: isGrounded_upvr (copied, readonly)
                [6]: var21_upvw (copied, read and write)
                [7]: var22_upvw (copied, read and write)
                [8]: getToolComponents_upvr (copied, readonly)
                [9]: findBestTarget_upvr (copied, readonly)
                [10]: var23_upvw (copied, read and write)
                [11]: var29_upvw (copied, read and write)
                [12]: predictPartPosition_upvr (copied, readonly)
                [13]: multiPointWallCheck_upvr (copied, readonly)
                [14]: var44_upvw (copied, read and write)
                [15]: random_state_upvr (copied, readonly)
                [16]: disableAntiAimsAndRotate_upvr (copied, readonly)
                [17]: performDoubleTapTeleport_upvr (copied, readonly)
            ]]
            -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
            -- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
            local var191
            if not var191 then
                var191 = nil
                var17_upvw = var191
                var191 = false
                var24_upvw = var191
            else
                local Character_7 = LocalPlayer_upvr.Character
                if not Character_7 then
                    var191 = false
                    -- KONSTANTWARNING: GOTO [26] #23
                end
                -- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [13] 13. Error Block 133 start (CF ANALYSIS FAILED)
                local Humanoid_7 = Character_7:FindFirstChild("Humanoid")
                if not Humanoid_7 or Humanoid_7.Health <= 0 then
                    var191 = false
                else
                    var191 = true
                end
                if not var191 then
                    var191 = nil
                    var17_upvw = var191
                    var191 = false
                    var24_upvw = var191
                    return
                end
                var191 = LocalPlayer_upvr.Character
                local var194 = var191
                if var194 then
                    var194 = var191:FindFirstChild("Humanoid")
                end
                Humanoid_7 = var191
                local var195 = Humanoid_7
                if var195 then
                    var195 = var191:FindFirstChild("HumanoidRootPart")
                end
                if not var194 then
                else
                    local any_GetState_result1_4 = var194:GetState()
                    if any_GetState_result1_4 ~= Enum.HumanoidStateType.Jumping and any_GetState_result1_4 ~= Enum.HumanoidStateType.Freefall then
                        if any_GetState_result1_4 ~= Enum.HumanoidStateType.FallingDown then
                        else
                        end
                    end
                end
                if true then
                    var17_upvw = nil
                    return
                end
                if not isGrounded_upvr(var194, var195) then
                    var17_upvw = nil
                    return
                end
                local tick_result1 = tick()
                if tick_result1 - var21_upvw < 1.3 then return end
                if var22_upvw then return end
                local getToolComponents_upvr_result1_upvr_3 = getToolComponents_upvr()
                if not getToolComponents_upvr_result1_upvr_3 then
                    var17_upvw = nil
                    var24_upvw = false
                    return
                end
                local findBestTarget_upvr_result1_upvr_3 = findBestTarget_upvr()
                if not findBestTarget_upvr_result1_upvr_3 then
                    if not var24_upvw then
                        var24_upvw = true
                        var23_upvw = tick_result1
                    end
                    var17_upvw = nil
                    return
                end
                if var24_upvw then
                    var24_upvw = false
                    var23_upvw = tick_result1
                end
                if tick_result1 - var23_upvw < 0.05 then return end
                var17_upvw = findBestTarget_upvr_result1_upvr_3
                local var200
                if var29_upvw then
                    var200 = predictPartPosition_upvr(findBestTarget_upvr_result1_upvr_3.targetPart, findBestTarget_upvr_result1_upvr_3.rootPart)
                else
                    var200 = findBestTarget_upvr_result1_upvr_3.targetPart.Position
                end
                if not var200 then return end
                local Character_2 = LocalPlayer_upvr.Character
                local Head = Character_2:FindFirstChild("Head")
                if not Head then return end
                if not multiPointWallCheck_upvr(Head.Position, var200, Character_2, findBestTarget_upvr_result1_upvr_3.character) then return end
                if 100 <= var44_upvw then
                    -- KONSTANTWARNING: GOTO [183] #155
                end
                if var44_upvw <= 0 then
                    -- KONSTANTWARNING: GOTO [183] #155
                end
                if random_state_upvr:NextInteger(1, 100) > var44_upvw then
                else
                end
                if not true then return end
                local Position_3_upvr = Head.Position
                local var204 = var200 - Position_3_upvr
                local Unit_upvr = var204.Unit
                if not var194 then
                    var204 = true
                else
                    local any_GetState_result1_8 = var194:GetState()
                    var204 = true
                    if any_GetState_result1_8 ~= Enum.HumanoidStateType.Jumping then
                        var204 = true
                        if any_GetState_result1_8 ~= Enum.HumanoidStateType.Freefall then
                            if any_GetState_result1_8 ~= Enum.HumanoidStateType.FallingDown then
                                var204 = false
                            else
                                var204 = true
                            end
                        end
                    end
                end
                if var204 then return end
                var22_upvw = true
                disableAntiAimsAndRotate_upvr(Unit_upvr)
                local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 908
                    --[[ Upvalues[4]:
                        [1]: getToolComponents_upvr_result1_upvr_3 (readonly)
                        [2]: Position_3_upvr (readonly)
                        [3]: Unit_upvr (readonly)
                        [4]: findBestTarget_upvr_result1_upvr_3 (readonly)
                    ]]
                    getToolComponents_upvr_result1_upvr_3.fireShot:FireServer(Position_3_upvr, Unit_upvr, findBestTarget_upvr_result1_upvr_3.targetPart)
                end)
                if pcall_result1_2 then
                    var21_upvw = tick_result1
                    performDoubleTapTeleport_upvr()
                else
                    warn("AutoShoot Error:", pcall_result2_3)
                end
                task.delay(0.1, function() -- Line 920
                    --[[ Upvalues[1]:
                        [1]: var22_upvw (copied, read and write)
                    ]]
                    var22_upvw = false
                end)
                -- KONSTANTERROR: [13] 13. Error Block 133 end (CF ANALYSIS FAILED)
            end
        end)
    end
end
local tbl_6_upvr = {}
task.spawn(function() -- Line 930
    --[[ Upvalues[1]:
        [1]: tbl_6_upvr (readonly)
    ]]
    while task.wait(2) do
        for i_5, v_5 in pairs(tbl_6_upvr) do
            if 3 < tick() - v_5.time then
                tbl_6_upvr[i_5] = nil
            end
        end
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AutoShoot = var16_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 949
        --[[ Upvalues[8]:
            [1]: var16_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var17_upvw (read and write)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AutoShoot" then
            var16_upvw = arg2
            if not var16_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if not var16_upvw then
                var17_upvw = nil
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
if var169_upvw then
else
    onConfigLoad_upvr = RunService_upvr.RenderStepped
    onConfigLoad_upvr = onConfigLoad_upvr:Connect(function(arg1) -- Line 799
        --[[ Upvalues[17]:
            [1]: var16_upvw (read and write)
            [2]: var17_upvw (read and write)
            [3]: var24_upvw (read and write)
            [4]: LocalPlayer_upvr (readonly)
            [5]: isGrounded_upvr (readonly)
            [6]: var21_upvw (read and write)
            [7]: var22_upvw (read and write)
            [8]: getToolComponents_upvr (readonly)
            [9]: findBestTarget_upvr (readonly)
            [10]: var23_upvw (read and write)
            [11]: var29_upvw (read and write)
            [12]: predictPartPosition_upvr (readonly)
            [13]: multiPointWallCheck_upvr (readonly)
            [14]: var44_upvw (read and write)
            [15]: random_state_upvr (readonly)
            [16]: disableAntiAimsAndRotate_upvr (readonly)
            [17]: performDoubleTapTeleport_upvr (readonly)
        ]]
        -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
        -- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
        local var222
        if not var222 then
            var222 = nil
            var17_upvw = var222
            var222 = false
            var24_upvw = var222
        else
            local Character_11 = LocalPlayer_upvr.Character
            if not Character_11 then
                var222 = false
                -- KONSTANTWARNING: GOTO [26] #23
            end
            -- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [13] 13. Error Block 133 start (CF ANALYSIS FAILED)
            local Humanoid = Character_11:FindFirstChild("Humanoid")
            if not Humanoid or Humanoid.Health <= 0 then
                var222 = false
            else
                var222 = true
            end
            if not var222 then
                var222 = nil
                var17_upvw = var222
                var222 = false
                var24_upvw = var222
                return
            end
            var222 = LocalPlayer_upvr.Character
            local var225 = var222
            if var225 then
                var225 = var222:FindFirstChild("Humanoid")
            end
            Humanoid = var222
            local var226 = Humanoid
            if var226 then
                var226 = var222:FindFirstChild("HumanoidRootPart")
            end
            if not var225 then
            else
                local any_GetState_result1_7 = var225:GetState()
                if any_GetState_result1_7 ~= Enum.HumanoidStateType.Jumping and any_GetState_result1_7 ~= Enum.HumanoidStateType.Freefall then
                    if any_GetState_result1_7 ~= Enum.HumanoidStateType.FallingDown then
                    else
                    end
                end
            end
            if true then
                var17_upvw = nil
                return
            end
            if not isGrounded_upvr(var225, var226) then
                var17_upvw = nil
                return
            end
            local tick_result1_3 = tick()
            if tick_result1_3 - var21_upvw < 1.3 then return end
            if var22_upvw then return end
            local getToolComponents_upvr_result1_upvr = getToolComponents_upvr()
            if not getToolComponents_upvr_result1_upvr then
                var17_upvw = nil
                var24_upvw = false
                return
            end
            local findBestTarget_upvr_result1_upvr_2 = findBestTarget_upvr()
            if not findBestTarget_upvr_result1_upvr_2 then
                if not var24_upvw then
                    var24_upvw = true
                    var23_upvw = tick_result1_3
                end
                var17_upvw = nil
                return
            end
            if var24_upvw then
                var24_upvw = false
                var23_upvw = tick_result1_3
            end
            if tick_result1_3 - var23_upvw < 0.05 then return end
            var17_upvw = findBestTarget_upvr_result1_upvr_2
            local var231
            if var29_upvw then
                var231 = predictPartPosition_upvr(findBestTarget_upvr_result1_upvr_2.targetPart, findBestTarget_upvr_result1_upvr_2.rootPart)
            else
                var231 = findBestTarget_upvr_result1_upvr_2.targetPart.Position
            end
            if not var231 then return end
            local Character_10 = LocalPlayer_upvr.Character
            local Head_3 = Character_10:FindFirstChild("Head")
            if not Head_3 then return end
            if not multiPointWallCheck_upvr(Head_3.Position, var231, Character_10, findBestTarget_upvr_result1_upvr_2.character) then return end
            if 100 <= var44_upvw then
                -- KONSTANTWARNING: GOTO [183] #155
            end
            if var44_upvw <= 0 then
                -- KONSTANTWARNING: GOTO [183] #155
            end
            if random_state_upvr:NextInteger(1, 100) > var44_upvw then
            else
            end
            if not true then return end
            local Position_2_upvr = Head_3.Position
            local var235 = var231 - Position_2_upvr
            local Unit_2_upvr = var235.Unit
            if not var225 then
                var235 = true
            else
                local any_GetState_result1_6 = var225:GetState()
                var235 = true
                if any_GetState_result1_6 ~= Enum.HumanoidStateType.Jumping then
                    var235 = true
                    if any_GetState_result1_6 ~= Enum.HumanoidStateType.Freefall then
                        if any_GetState_result1_6 ~= Enum.HumanoidStateType.FallingDown then
                            var235 = false
                        else
                            var235 = true
                        end
                    end
                end
            end
            if var235 then return end
            var22_upvw = true
            disableAntiAimsAndRotate_upvr(Unit_2_upvr)
            local pcall_result1, pcall_result2 = pcall(function() -- Line 908
                --[[ Upvalues[4]:
                    [1]: getToolComponents_upvr_result1_upvr (readonly)
                    [2]: Position_2_upvr (readonly)
                    [3]: Unit_2_upvr (readonly)
                    [4]: findBestTarget_upvr_result1_upvr_2 (readonly)
                ]]
                getToolComponents_upvr_result1_upvr.fireShot:FireServer(Position_2_upvr, Unit_2_upvr, findBestTarget_upvr_result1_upvr_2.targetPart)
            end)
            if pcall_result1 then
                var21_upvw = tick_result1_3
                performDoubleTapTeleport_upvr()
            else
                warn("AutoShoot Error:", pcall_result2)
            end
            task.delay(0.1, function() -- Line 920
                --[[ Upvalues[1]:
                    [1]: var22_upvw (copied, read and write)
                ]]
                var22_upvw = false
            end)
            -- KONSTANTERROR: [13] 13. Error Block 133 end (CF ANALYSIS FAILED)
        end
    end)
    var169_upvw = onConfigLoad_upvr
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = HumanoidRootPart
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = FallingDown
        15 [string] = tick
        17 [number] = 1.3
        18 [number] = 0.05
        19 [string] = targetPart
        20 [string] = rootPart
        21 [string] = Position
        22 [string] = Head
        23 [string] = character
        24 [string] = NextInteger
        25 [string] = Unit
        26 [string] = pcall
        28 [string] = warn
        30 [string] = AutoShoot Error:
        31 [string] = task
        32 [string] = delay
        34 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoShoot
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pairs
        6 [string] = tick
        8 [string] = time

====================================================================================================

Function Dump: startTargeting

Function Upvalues: startTargeting

Function Constants: startTargeting
        1 [string] = RenderStepped
        2 [string] = Connect

====================================================================================================

Function Dump: isPlayerJumping

Function Upvalues: isPlayerJumping

Function Constants: isPlayerJumping
        1 [string] = GetState
        2 [string] = Enum
        3 [string] = HumanoidStateType
        4 [string] = Jumping
        6 [string] = Freefall
        8 [string] = FallingDown

====================================================================================================

Function Dump: isGrounded

Function Upvalues: isGrounded

Function Constants: isGrounded
        1 [string] = FloorMaterial
        2 [string] = Enum
        3 [string] = Material
        4 [string] = Air
        6 [string] = RaycastParams
        7 [string] = new
        9 [string] = Character
        10 [string] = FilterDescendantsInstances
        11 [string] = RaycastFilterType
        12 [string] = Exclude
        14 [string] = FilterType
        15 [string] = Position
        16 [Vector3] = 0, -3.5, 0
        17 [string] = Raycast

====================================================================================================

Function Dump: findBestTarget

Function Upvalues: findBestTarget

Function Constants: findBestTarget
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = tick
        7 [number] = 0.5
        8 [number] = 0
        9 [string] = Head
        10 [string] = Position
        11 [number] = inf
        12 [string] = ViewportSize
        13 [string] = X
        14 [string] = Y
        15 [string] = CFrame
        16 [string] = humanoid
        17 [string] = character
        18 [string] = part
        19 [string] = priority
        21 [string] = table
        22 [string] = insert
        24 [string] = Torso
        25 [string] = UpperTorso
        26 [string] = LowerTorso
        27 [string] = LeftUpperLeg
        28 [string] = RightUpperLeg
        29 [string] = HumanoidRootPart
        30 [string] = WorldToViewportPoint
        31 [string] = rootPart
        32 [string] = Magnitude
        33 [string] = Name
        34 [number] = 0.3
        35 [number] = 0.8
        36 [string] = math
        37 [string] = floor
        39 [string] = sqrt
        41 [string] = player
        42 [string] = targetPart
        43 [string] = distance

====================================================================================================

Function Dump: updateActivePlayersList

Function Upvalues: updateActivePlayersList

Function Constants: updateActivePlayersList
        1 [string] = table
        2 [string] = clear
        4 [string] = ipairs
        6 [string] = GetPlayers
        7 [string] = Team
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = FindFirstChild
        11 [string] = HumanoidRootPart
        12 [string] = Health
        13 [string] = player
        14 [string] = character
        15 [string] = humanoid
        16 [string] = rootPart
        18 [string] = insert

====================================================================================================

Function Dump: checkHitchance

Function Upvalues: checkHitchance

Function Constants: checkHitchance
        1 [string] = NextInteger

====================================================================================================

Function Dump: checkMinDamage

Function Upvalues: checkMinDamage

Function Constants: checkMinDamage
        1 [string] = Name
        2 [number] = 0.5
        3 [number] = 0.3
        4 [number] = 0.8
        5 [string] = math
        6 [string] = floor

====================================================================================================

Function Dump: calculatePotentialDamage

Function Upvalues: calculatePotentialDamage

Function Constants: calculatePotentialDamage
        1 [number] = 0.5
        2 [number] = 0.3
        3 [number] = 0.8
        4 [string] = math
        5 [string] = floor

====================================================================================================

Function Dump: isInFOV

Function Upvalues: isInFOV

Function Constants: isInFOV
        1 [string] = WorldToViewportPoint
        2 [string] = ViewportSize
        3 [number] = 0.5
        4 [string] = X
        5 [string] = Y

====================================================================================================

Function Dump: predictPartPosition

Function Upvalues: predictPartPosition

Function Constants: predictPartPosition
        1 [string] = Position
        2 [string] = AssemblyLinearVelocity
        3 [string] = Vector3
        4 [string] = new
        6 [string] = Magnitude
        7 [string] = CFrame
        8 [number] = 1000
        9 [number] = 0.08
        10 [number] = 0.2
        11 [string] = math
        12 [string] = clamp
        14 [number] = 1.2

====================================================================================================

Function Dump: multiPointWallCheck

Function Upvalues: multiPointWallCheck

Function Constants: multiPointWallCheck
        1 [Vector3] = 0, 0.30000001192092896, 0
        2 [Vector3] = 0, -0.30000001192092896, 0
        3 [string] = ipairs

====================================================================================================

Function Dump: strictWallCheck

Function Upvalues: strictWallCheck

Function Constants: strictWallCheck
        1 [string] = invalid_positions
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = invalid_distance
        5 [string] = ipairs
        7 [string] = GetDescendants
        8 [string] = BasePart
        9 [string] = IsA
        10 [string] = table
        11 [string] = insert
        13 [string] = RaycastParams
        14 [string] = new
        16 [string] = FilterDescendantsInstances
        17 [string] = Enum
        18 [string] = RaycastFilterType
        19 [string] = Exclude
        21 [string] = FilterType
        22 [string] = IgnoreWater
        23 [string] = Raycast
        24 [string] = clear
        25 [string] = Instance
        26 [string] = IsDescendantOf
        27 [string] = hit_target
        28 [string] = Position
        29 [string] = Unit
        30 [string] = transparent_pass
        31 [string] = passed_other_player
        32 [string] = wall_blocking

====================================================================================================

Function Dump: isPartOfCharacter

Function Upvalues: isPartOfCharacter

Function Constants: isPartOfCharacter
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Parent
        4 [string] = Humanoid
        5 [string] = FindFirstChild
        6 [string] = Accessory
        7 [string] = Hat

====================================================================================================

Function Dump: canBulletPassThrough

Function Upvalues: canBulletPassThrough

Function Constants: canBulletPassThrough
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Name
        4 [string] = lower
        5 [string] = hamik
        6 [string] = find
        7 [string] = paletka
        8 [string] = Parent
        9 [string] = Transparency
        10 [number] = 0.2
        11 [string] = CanCollide
        12 [string] = Decal
        13 [string] = ParticleEmitter
        14 [string] = Beam
        15 [string] = Trail

====================================================================================================

Function Dump: randomPointInPart

Function Upvalues: randomPointInPart

Function Constants: randomPointInPart
        1 [string] = Position
        2 [string] = Size
        3 [number] = 2
        4 [string] = X
        5 [string] = NextNumber
        6 [string] = Y
        7 [string] = Z
        8 [string] = CFrame
        9 [string] = RightVector
        10 [string] = UpVector
        11 [string] = LookVector

====================================================================================================

Function Dump: isPlayerAlive

Function Upvalues: isPlayerAlive

Function Constants: isPlayerAlive
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: applyAutoStop

Function Upvalues: applyAutoStop

Function Constants: applyAutoStop
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = FloorMaterial
        6 [string] = Enum
        7 [string] = Material
        8 [string] = Air
        10 [string] = Instance
        11 [string] = new
        13 [string] = BodyVelocity
        14 [string] = AutoStopVelocity
        15 [string] = Name
        16 [Vector3] = 0, 0, 0
        17 [string] = Velocity
        18 [Vector3] = 100000, 0, 100000
        19 [string] = MaxForce
        20 [string] = P
        21 [string] = Parent
        22 [string] = WalkSpeed
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.3

====================================================================================================

Function Dump: disableAntiAimsAndRotate

Function Upvalues: disableAntiAimsAndRotate

Function Constants: disableAntiAimsAndRotate
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = CFrame
        5 [string] = Rotation
        6 [string] = disable
        7 [string] = FireServer
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.01
        12 [string] = X
        13 [string] = Z
        14 [string] = Vector3
        15 [string] = new
        17 [string] = Unit
        18 [string] = Magnitude
        19 [number] = 0.1
        21 [string] = Position
        22 [number] = 0.15
        23 [string] = tick
        25 [string] = delay

====================================================================================================

Function Dump: performDoubleTapTeleport

Function Upvalues: performDoubleTapTeleport

Function Constants: performDoubleTapTeleport
        1 [string] = os
        2 [string] = clock
        4 [string] = leaderstats
        5 [string] = FindFirstChild
        6 [string] = leavemealonexd
        7 [string] = Value
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = HumanoidRootPart
        11 [string] = Health
        12 [string] = pcall
        14 [string] = MoveDirection
        15 [string] = Magnitude
        16 [number] = 0.05
        17 [string] = CFrame
        18 [string] = LookVector
        19 [string] = X
        20 [string] = Z
        21 [string] = Vector3
        22 [string] = new
        24 [string] = Unit
        25 [string] = Position
        26 [number] = 4
        27 [string] = RaycastParams
        29 [string] = FilterDescendantsInstances
        30 [string] = Enum
        31 [string] = RaycastFilterType
        32 [string] = Exclude
        34 [string] = FilterType
        35 [string] = IgnoreWater
        36 [string] = Raycast
        37 [number] = 2
        38 [string] = math
        39 [string] = max
        41 [Vector3] = 0, 5, 0
        42 [Vector3] = 0, -20, 0
        43 [number] = 0.5
        44 [string] = Y
        45 [string] = HipHeight
        46 [Vector3] = 0, 0, 0
        47 [string] = AssemblyLinearVelocity
        48 [string] = AssemblyAngularVelocity
        50 [string] = Rotation
        51 [string] = PivotTo
        52 [string] = task
        53 [string] = defer

====================================================================================================

Function Dump: getToolComponents

Function Upvalues: getToolComponents

Function Constants: getToolComponents
        1 [string] = Character
        2 [string] = Tool
        3 [string] = FindFirstChildOfClass
        4 [string] = Remotes
        5 [string] = FindFirstChild
        6 [string] = FireShot
        7 [string] = Handle
        8 [string] = tool
        9 [string] = fireShot
        10 [string] = reload
        11 [string] = handle
        13 [string] = Reload

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAutoShootEnabled

Function Upvalues: setAutoShootEnabled

Function Constants: setAutoShootEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoShoot

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: findBestTarget

Function Upvalues: findBestTarget
        1 [Instance] = quit_xyz
        2 [number] = 0
        3 [function] = updateActivePlayersList
        4 [table]:
        4 [table] table: 0xeef23f7a2c4e90b5
        5 [Instance] = Camera
        6 [boolean] = false
        7 [boolean] = true
        8 [boolean] = true
        9 [boolean] = true
        10 [number] = 0
        11 [number] = 0
        12 [table]:
        12 [table] table: 0x925167b04c2f9df5
                1 [number] = 0.6
                2 [number] = 0.75
                3 [number] = 0.6
                4 [number] = 1
                5 [number] = 1
                6 [number] = 0.6
                7 [number] = 0.6
                8 [number] = 0.6
                9 [number] = 1
                10 [number] = 4
                11 [number] = 1
                12 [number] = 0.75
                13 [number] = 0.75
                14 [number] = 0.75
                15 [number] = 0.6
                16 [number] = 0.6
                17 [number] = 0.75
                18 [number] = 0.6
                19 [number] = 0.75
        13 [function] = multiPointWallCheck

Function Constants: findBestTarget
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = tick
        7 [number] = 0.5
        8 [number] = 0
        9 [string] = Head
        10 [string] = Position
        11 [number] = inf
        12 [string] = ViewportSize
        13 [string] = X
        14 [string] = Y
        15 [string] = CFrame
        16 [string] = humanoid
        17 [string] = character
        18 [string] = part
        19 [string] = priority
        21 [string] = table
        22 [string] = insert
        24 [string] = Torso
        25 [string] = UpperTorso
        26 [string] = LowerTorso
        27 [string] = LeftUpperLeg
        28 [string] = RightUpperLeg
        29 [string] = HumanoidRootPart
        30 [string] = WorldToViewportPoint
        31 [string] = rootPart
        32 [string] = Magnitude
        33 [string] = Name
        34 [number] = 0.3
        35 [number] = 0.8
        36 [string] = math
        37 [string] = floor
        39 [string] = sqrt
        41 [string] = player
        42 [string] = targetPart
        43 [string] = distance

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 0

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 0

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: predictPartPosition

Function Upvalues: predictPartPosition
        1 [boolean] = false
        2 [Instance] = Camera

Function Constants: predictPartPosition
        1 [string] = Position
        2 [string] = AssemblyLinearVelocity
        3 [string] = Vector3
        4 [string] = new
        6 [string] = Magnitude
        7 [string] = CFrame
        8 [number] = 1000
        9 [number] = 0.08
        10 [number] = 0.2
        11 [string] = math
        12 [string] = clamp
        14 [number] = 1.2

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAutoShootEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        3 [boolean] = false
        4 [Instance] = quit_xyz
        5 [function] = isGrounded
        6 [number] = 0
        7 [boolean] = false
        8 [function] = getToolComponents
        9 [function] = findBestTarget
        10 [number] = 0
        11 [boolean] = false
        12 [function] = predictPartPosition
        13 [function] = multiPointWallCheck
        14 [number] = 100
        15 [Random] = Random
        16 [function] = disableAntiAimsAndRotate
        17 [function] = performDoubleTapTeleport

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = HumanoidRootPart
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        10 [EnumItem] = Enum.HumanoidStateType.Jumping
        11 [string] = Freefall
        12 [EnumItem] = Enum.HumanoidStateType.Freefall
        13 [string] = FallingDown
        14 [EnumItem] = Enum.HumanoidStateType.FallingDown
        15 [string] = tick
        17 [number] = 1.3
        18 [number] = 0.05
        19 [string] = targetPart
        20 [string] = rootPart
        21 [string] = Position
        22 [string] = Head
        23 [string] = character
        24 [string] = NextInteger
        25 [string] = Unit
        26 [string] = pcall
        28 [string] = warn
        30 [string] = AutoShoot Error:
        31 [string] = task
        32 [string] = delay
        34 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoShoot
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: setAutoShootEnabled

Function Upvalues: setAutoShootEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setAutoShootEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoShoot

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [table]:
        1 [table] table: 0xc25f290b80e79d65

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pairs
        6 [string] = tick
        8 [string] = time

====================================================================================================

Function Dump: multiPointWallCheck

Function Upvalues: multiPointWallCheck
        1 [function] = strictWallCheck

Function Constants: multiPointWallCheck
        1 [Vector3] = 0, 0.30000001192092896, 0
        2 [Vector3] = 0, -0.30000001192092896, 0
        3 [string] = ipairs

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = applyAutoStop

Function Constants: Unknown Name

====================================================================================================

Function Dump: getToolComponents

Function Upvalues: getToolComponents
        1 [Instance] = quit_xyz

Function Constants: getToolComponents
        1 [string] = Character
        2 [string] = Tool
        3 [string] = FindFirstChildOfClass
        4 [string] = Remotes
        5 [string] = FindFirstChild
        6 [string] = FireShot
        7 [string] = Handle
        8 [string] = tool
        9 [string] = fireShot
        10 [string] = reload
        11 [string] = handle
        13 [string] = Reload

====================================================================================================

Function Dump: isPartOfCharacter

Function Upvalues: isPartOfCharacter

Function Constants: isPartOfCharacter
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Parent
        4 [string] = Humanoid
        5 [string] = FindFirstChild
        6 [string] = Accessory
        7 [string] = Hat

====================================================================================================

Function Dump: canBulletPassThrough

Function Upvalues: canBulletPassThrough

Function Constants: canBulletPassThrough
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Name
        4 [string] = lower
        5 [string] = hamik
        6 [string] = find
        7 [string] = paletka
        8 [string] = Parent
        9 [string] = Transparency
        10 [number] = 0.2
        11 [string] = CanCollide
        12 [string] = Decal
        13 [string] = ParticleEmitter
        14 [string] = Beam
        15 [string] = Trail

====================================================================================================

Function Dump: performDoubleTapTeleport

Function Upvalues: performDoubleTapTeleport
        1 [number] = 0
        2 [Instance] = quit_xyz
        3 [boolean] = false
        4 [Instance] = DTMarker
        5 [Instance] = Workspace

Function Constants: performDoubleTapTeleport
        1 [string] = os
        2 [string] = clock
        4 [string] = leaderstats
        5 [string] = FindFirstChild
        6 [string] = leavemealonexd
        7 [string] = Value
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = HumanoidRootPart
        11 [string] = Health
        12 [string] = pcall
        14 [string] = MoveDirection
        15 [string] = Magnitude
        16 [number] = 0.05
        17 [string] = CFrame
        18 [string] = LookVector
        19 [string] = X
        20 [string] = Z
        21 [string] = Vector3
        22 [string] = new
        24 [string] = Unit
        25 [string] = Position
        26 [number] = 4
        27 [string] = RaycastParams
        29 [string] = FilterDescendantsInstances
        30 [string] = Enum
        31 [string] = RaycastFilterType
        32 [string] = Exclude
        33 [EnumItem] = Enum.RaycastFilterType.Exclude
        34 [string] = FilterType
        35 [string] = IgnoreWater
        36 [string] = Raycast
        37 [number] = 2
        38 [string] = math
        39 [string] = max
        41 [Vector3] = 0, 5, 0
        42 [Vector3] = 0, -20, 0
        43 [number] = 0.5
        44 [string] = Y
        45 [string] = HipHeight
        46 [Vector3] = 0, 0, 0
        47 [string] = AssemblyLinearVelocity
        48 [string] = AssemblyAngularVelocity
        50 [string] = Rotation
        51 [string] = PivotTo
        52 [string] = task
        53 [string] = defer

====================================================================================================

Function Dump: updateActivePlayersList

Function Upvalues: updateActivePlayersList
        1 [table] (Recursive table detected)
        2 [Instance] = Players
        3 [Instance] = quit_xyz

Function Constants: updateActivePlayersList
        1 [string] = table
        2 [string] = clear
        4 [string] = ipairs
        6 [string] = GetPlayers
        7 [string] = Team
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = FindFirstChild
        11 [string] = HumanoidRootPart
        12 [string] = Health
        13 [string] = player
        14 [string] = character
        15 [string] = humanoid
        16 [string] = rootPart
        18 [string] = insert

====================================================================================================

Function Dump: applyAutoStop

Function Upvalues: applyAutoStop
        1 [boolean] = false
        2 [boolean] = false
        3 [boolean] = false
        4 [Instance] = quit_xyz

Function Constants: applyAutoStop
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = FloorMaterial
        6 [string] = Enum
        7 [string] = Material
        8 [string] = Air
        9 [EnumItem] = Enum.Material.Air
        10 [string] = Instance
        11 [string] = new
        13 [string] = BodyVelocity
        14 [string] = AutoStopVelocity
        15 [string] = Name
        16 [Vector3] = 0, 0, 0
        17 [string] = Velocity
        18 [Vector3] = 100000, 0, 100000
        19 [string] = MaxForce
        20 [string] = P
        21 [string] = Parent
        22 [string] = WalkSpeed
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.3

====================================================================================================

Function Dump: disableAntiAimsAndRotate

Function Upvalues: disableAntiAimsAndRotate
        1 [Instance] = quit_xyz
        2 [Instance] = aahelp
        3 [Instance] = aahelp1
        4 [number] = 0

Function Constants: disableAntiAimsAndRotate
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = CFrame
        5 [string] = Rotation
        6 [string] = disable
        7 [string] = FireServer
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.01
        12 [string] = X
        13 [string] = Z
        14 [string] = Vector3
        15 [string] = new
        17 [string] = Unit
        18 [string] = Magnitude
        19 [number] = 0.1
        21 [string] = Position
        22 [number] = 0.15
        23 [string] = tick
        25 [string] = delay

====================================================================================================

Function Dump: strictWallCheck

Function Upvalues: strictWallCheck
        1 [Instance] = Workspace
        2 [function] = canBulletPassThrough
        3 [function] = strictWallCheck
        4 [function] = isPartOfCharacter

Function Constants: strictWallCheck
        1 [string] = invalid_positions
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = invalid_distance
        5 [string] = ipairs
        7 [string] = GetDescendants
        8 [string] = BasePart
        9 [string] = IsA
        10 [string] = table
        11 [string] = insert
        13 [string] = RaycastParams
        14 [string] = new
        16 [string] = FilterDescendantsInstances
        17 [string] = Enum
        18 [string] = RaycastFilterType
        19 [string] = Exclude
        20 [EnumItem] = Enum.RaycastFilterType.Exclude
        21 [string] = FilterType
        22 [string] = IgnoreWater
        23 [string] = Raycast
        24 [string] = clear
        25 [string] = Instance
        26 [string] = IsDescendantOf
        27 [string] = hit_target
        28 [string] = Position
        29 [string] = Unit
        30 [string] = transparent_pass
        31 [string] = passed_other_player
        32 [string] = wall_blocking

====================================================================================================

Function Dump: isGrounded

Function Upvalues: isGrounded
        1 [Instance] = quit_xyz
        2 [Instance] = Workspace

Function Constants: isGrounded
        1 [string] = FloorMaterial
        2 [string] = Enum
        3 [string] = Material
        4 [string] = Air
        5 [EnumItem] = Enum.Material.Air
        6 [string] = RaycastParams
        7 [string] = new
        9 [string] = Character
        10 [string] = FilterDescendantsInstances
        11 [string] = RaycastFilterType
        12 [string] = Exclude
        13 [EnumItem] = Enum.RaycastFilterType.Exclude
        14 [string] = FilterType
        15 [string] = Position
        16 [Vector3] = 0, -3.5, 0
        17 [string] = Raycast

====================================================================================================
]]
