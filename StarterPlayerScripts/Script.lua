-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts:GetChildren()[7]
-- Took 0.42s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:51:36
-- Luau version 6, Types version 3
-- Time taken: 0.016543 seconds

script.Parent = nil
pcall(function() -- Line 2
    getfenv().script = nil
    getfenv(0).script = nil
    getfenv(1).script = nil
end)
local LocalPlayer = game:GetService("Players").LocalPlayer
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local var7_upvw
local var8_upvw = 0
local var9_upvw = 0
local var10_upvw = false
local var11_upvw = 0
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local function findRemote_upvr() -- Line 36, Named "findRemote"
    --[[ Upvalues[1]:
        [1]: ReplicatedStorage_upvr (readonly)
    ]]
    local MoneyGiver = ReplicatedStorage_upvr:FindFirstChild("MoneyGiver")
    if MoneyGiver and MoneyGiver:IsA("RemoteEvent") then
        return MoneyGiver
    end
    return nil
end
local Workspace_upvr = game:GetService("Workspace")
local function groundDist_upvr(arg1, arg2) -- Line 44, Named "groundDist"
    --[[ Upvalues[1]:
        [1]: Workspace_upvr (readonly)
    ]]
    local RaycastParams_new_result1 = RaycastParams.new()
    RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
    local tbl = {}
    tbl[1] = arg1
    RaycastParams_new_result1.FilterDescendantsInstances = tbl
    local any_Raycast_result1 = Workspace_upvr:Raycast(arg2, Vector3.new(0, -300, 0), RaycastParams_new_result1)
    if not any_Raycast_result1 then
        return math.huge
    end
    return (arg2 - any_Raycast_result1.Position).Magnitude
end
local function bind(arg1) -- Line 53
    --[[ Upvalues[9]:
        [1]: var3_upvw (read and write)
        [2]: var4_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: var10_upvw (read and write)
        [5]: var9_upvw (read and write)
        [6]: var11_upvw (read and write)
        [7]: var7_upvw (read and write)
        [8]: var6_upvw (read and write)
        [9]: var8_upvw (read and write)
    ]]
    var3_upvw = arg1
    local var19
    if var19 then
        var19 = var3_upvw:FindFirstChildOfClass("Humanoid")
    end
    var4_upvw = var19
    var19 = var3_upvw
    if var19 then
        var19 = var3_upvw:FindFirstChild("HumanoidRootPart")
        if not var19 then
            var19 = var3_upvw:FindFirstChild("Head")
        end
    end
    var5_upvw = var19
    var19 = false
    var10_upvw = var19
    var19 = 0
    var9_upvw = var19
    var19 = 0
    var11_upvw = var19
    var19 = os.clock()
    var7_upvw = var19
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var19 = var5_upvw.Position
        return var19
    end
    if not var5_upvw or not INLINED() then
        var19 = nil
    end
    var6_upvw = var19
    var19 = os.clock() + 1.5
    var8_upvw = var19
end
local Character = LocalPlayer.Character
if not Character then
    Character = LocalPlayer.CharacterAdded:Wait()
end
bind(Character)
LocalPlayer.CharacterAdded:Connect(bind)
game:GetService("RunService").Heartbeat:Connect(function() -- Line 70
    --[[ Upvalues[11]:
        [1]: var10_upvw (read and write)
        [2]: var3_upvw (read and write)
        [3]: var4_upvw (read and write)
        [4]: var5_upvw (read and write)
        [5]: var8_upvw (read and write)
        [6]: var6_upvw (read and write)
        [7]: var7_upvw (read and write)
        [8]: var11_upvw (read and write)
        [9]: groundDist_upvr (readonly)
        [10]: var9_upvw (read and write)
        [11]: findRemote_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local var30
    if var10_upvw then
    else
        if not var3_upvw or not var4_upvw or not var5_upvw then return end
        var30 = var4_upvw
        var30 = 0
        if var30.Health <= var30 then return end
        local os_clock_result1_2 = os.clock()
        var30 = var8_upvw
        if os_clock_result1_2 < var30 then
            var30 = var5_upvw.Position
            var6_upvw = var30
            var7_upvw = os_clock_result1_2
            var30 = 0
            var11_upvw = var30
            return
        end
        var30 = os_clock_result1_2 - (var7_upvw or os_clock_result1_2)
        var7_upvw = os_clock_result1_2
        if var30 < 0.008333333333333333 then
            var30 = 0.008333333333333333
        end
        if 0.1 < var30 then
        end
        local Position_2 = var5_upvw.Position
        if not var6_upvw then
            var6_upvw = Position_2
            return
        end
        local var33 = (Position_2 - var6_upvw).Magnitude / 0.1
        local WalkSpeed = var4_upvw.WalkSpeed
        if WalkSpeed <= 0 then
            WalkSpeed = 16
        end
        local var35 = true
        if WalkSpeed * 6 >= var33 then
            if 220 >= var33 then
                var35 = false
            else
                var35 = true
            end
        end
        if var4_upvw.FloorMaterial == Enum.Material.Air then
            -- KONSTANTWARNING: GOTO [83] #67
        end
        if true then
            var11_upvw = 0
        else
            -- KONSTANTERROR: Expression was reused, decompilation is incorrect
            var11_upvw += 0.1
        end
        if 1.2 < var11_upvw then
            local var36 = false
            if 12 < groundDist_upvr(var3_upvw, Position_2) then
                if math.abs(var5_upvw.AssemblyLinearVelocity.Y) >= 4 then
                    var36 = false
                else
                    var36 = true
                end
            end
        end
        if var35 or var36 then
            var9_upvw += 1
        else
            var9_upvw -= 0.75
            if var9_upvw < 0 then
                var9_upvw = 0
            end
        end
        if 3 <= var9_upvw then
            var10_upvw = true
            local findRemote_upvr_result1 = findRemote_upvr()
            if findRemote_upvr_result1 then
                findRemote_upvr_result1:FireServer()
            end
        end
        var6_upvw = Position_2
    end
end)
