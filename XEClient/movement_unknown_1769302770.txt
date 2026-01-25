-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.TextBox.LocalScript
-- Took 0.33s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:59:29
-- Luau version 6, Types version 3
-- Time taken: 0.039933 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local RunService_upvr_2 = game:GetService("RunService")
local Parent_upvr_2 = script.Parent
local Bind_upvr_2 = script.Parent.Parent:FindFirstChild("Bind")
local var43
local function INLINED_2() -- Internal function, doesn't exist in bytecode
    var43 = Bind_upvr_2.Value
    return var43
end
if not Bind_upvr_2 or not INLINED_2() then
    var43 = "World32"
end
local var44_upvw = false
local var45_upvw = false
local var46_upvw
local var47_upvw
local var48_upvw
local var49_upvw
local var50_upvw
local var51_upvw
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
if var43 == "World32" then
else
end
Parent_upvr_2.Text = var43
_G.AutoPeekActive = false
local function _(arg1, arg2) -- Line 29, Named "updateBind"
    --[[ Upvalues[2]:
        [1]: Bind_upvr_2 (readonly)
        [2]: Parent_upvr_2 (readonly)
    ]]
    Bind_upvr_2.Value = arg1
    local var53
    if arg1 == "World32" then
        var53 = "NONE"
    else
        var53 = arg1
    end
    Parent_upvr_2.Text = var53
    if arg2 then
        var53 = _G
        if var53.ConfigSystem then
            var53 = _G.ConfigSystem
            var53 = "AutoPeekBind"
            var53.onSettingChanged(var53, arg1)
        end
    end
end
local TweenService_upvr = game:GetService("TweenService")
local function createPeekMarker_upvr(arg1) -- Line 39, Named "createPeekMarker"
    --[[ Upvalues[3]:
        [1]: var48_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: RunService_upvr_2 (readonly)
    ]]
    if var48_upvw then
        var48_upvw:Destroy()
    end
    var48_upvw = Instance.new("Part")
    var48_upvw.Name = "AutoPeekMarkerRoot"
    var48_upvw.Size = Vector3.new(1, 0.10000, 1)
    var48_upvw.Position = arg1
    var48_upvw.Anchored = true
    var48_upvw.CanCollide = false
    var48_upvw.CanTouch = false
    var48_upvw.CanQuery = false
    var48_upvw.Transparency = 1
    var48_upvw.Parent = workspace
    local Part_2 = Instance.new("Part")
    Part_2.Name = "InnerDisc"
    Part_2.Shape = Enum.PartType.Cylinder
    Part_2.Size = Vector3.new(0.05000, 2.5, 2.5)
    Part_2.CFrame = var48_upvw.CFrame * CFrame.Angles(0, 0, (math.pi/2))
    Part_2.Material = Enum.Material.Neon
    Part_2.Color = Color3.fromRGB(255, 60, 60)
    Part_2.Transparency = 0.4
    Part_2.Anchored = true
    Part_2.CanCollide = false
    Part_2.Parent = var48_upvw
    TweenService_upvr:Create(Part_2, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
        Transparency = 0.7;
        Size = Vector3.new(0.05000, 2.20000, 2.20000);
    }):Play()
    task.spawn(function() -- Line 73
        --[[ Upvalues[2]:
            [1]: var48_upvw (copied, read and write)
            [2]: RunService_upvr_2 (copied, readonly)
        ]]
        while var48_upvw and var48_upvw.Parent do
            RunService_upvr_2.Heartbeat:Wait()
        end
    end)
end
local function cleanupAutoPeek_upvr() -- Line 83, Named "cleanupAutoPeek"
    --[[ Upvalues[7]:
        [1]: var50_upvw (read and write)
        [2]: var49_upvw (read and write)
        [3]: var51_upvw (read and write)
        [4]: var48_upvw (read and write)
        [5]: var45_upvw (read and write)
        [6]: var46_upvw (read and write)
        [7]: var47_upvw (read and write)
    ]]
    if var50_upvw then
        var50_upvw:Disconnect()
        var50_upvw = nil
    end
    if var49_upvw then
        var49_upvw:Disconnect()
        var49_upvw = nil
    end
    if var51_upvw then
        var51_upvw:Disconnect()
        var51_upvw = nil
    end
    if var48_upvw then
        var48_upvw:Destroy()
        var48_upvw = nil
    end
    var45_upvw = false
    var46_upvw = nil
    var47_upvw = nil
    _G.AutoPeekActive = false
end
local function setPeekPoint_upvr() -- Line 113, Named "setPeekPoint"
    --[[ Upvalues[8]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var46_upvw (read and write)
        [3]: var47_upvw (read and write)
        [4]: var45_upvw (read and write)
        [5]: var51_upvw (read and write)
        [6]: RunService_upvr_2 (readonly)
        [7]: cleanupAutoPeek_upvr (readonly)
        [8]: createPeekMarker_upvr (readonly)
    ]]
    if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then
    else
        local HumanoidRootPart = LocalPlayer_upvr.Character.HumanoidRootPart
        var46_upvw = HumanoidRootPart.Position
        var47_upvw = HumanoidRootPart.CFrame
        var45_upvw = true
        _G.AutoPeekActive = true
        if var51_upvw then
            var51_upvw:Disconnect()
        end
        var51_upvw = RunService_upvr_2.Heartbeat:Connect(function() -- Line 127
            --[[ Upvalues[4]:
                [1]: var45_upvw (copied, read and write)
                [2]: var46_upvw (copied, read and write)
                [3]: LocalPlayer_upvr (copied, readonly)
                [4]: cleanupAutoPeek_upvr (copied, readonly)
            ]]
            if not var45_upvw or not var46_upvw then
            else
                if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then return end
                if 15 < (LocalPlayer_upvr.Character.HumanoidRootPart.Position - var46_upvw).Magnitude then
                    cleanupAutoPeek_upvr()
                end
            end
        end)
        local RaycastParams_new_result1 = RaycastParams.new()
        RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
        RaycastParams_new_result1.FilterDescendantsInstances = {LocalPlayer_upvr.Character}
        local workspace_Raycast_result1 = workspace:Raycast(var46_upvw, Vector3.new(0, -100, 0), RaycastParams_new_result1)
        local var63
        if workspace_Raycast_result1 then
            var63 = workspace_Raycast_result1.Position + Vector3.new(0, 0.10000, 0)
        else
            var63 = Vector3.new(var46_upvw.X, var46_upvw.Y - 3, var46_upvw.Z)
        end
        createPeekMarker_upvr(var63)
    end
end
local function returnToPeekPoint_upvr() -- Line 161, Named "returnToPeekPoint"
    --[[ Upvalues[9]:
        [1]: var45_upvw (read and write)
        [2]: var46_upvw (read and write)
        [3]: LocalPlayer_upvr (readonly)
        [4]: var49_upvw (read and write)
        [5]: var50_upvw (read and write)
        [6]: var51_upvw (read and write)
        [7]: RunService_upvr_2 (readonly)
        [8]: var47_upvw (read and write)
        [9]: cleanupAutoPeek_upvr (readonly)
    ]]
    if not var45_upvw or not var46_upvw then
    else
        if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("Humanoid") or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then return end
        if var49_upvw then
            var49_upvw:Disconnect()
            var49_upvw = nil
        end
        if var50_upvw then
            var50_upvw:Disconnect()
            var50_upvw = nil
        end
        if var51_upvw then
            var51_upvw:Disconnect()
            var51_upvw = nil
        end
        local HumanoidRootPart_2_upvr = LocalPlayer_upvr.Character.HumanoidRootPart
        var50_upvw = RunService_upvr_2.RenderStepped:Connect(function() -- Line 179
            --[[ Upvalues[6]:
                [1]: var45_upvw (copied, read and write)
                [2]: var46_upvw (copied, read and write)
                [3]: var47_upvw (copied, read and write)
                [4]: cleanupAutoPeek_upvr (copied, readonly)
                [5]: LocalPlayer_upvr (copied, readonly)
                [6]: HumanoidRootPart_2_upvr (readonly)
            ]]
            if not var45_upvw or not var46_upvw or not var47_upvw then
                cleanupAutoPeek_upvr()
            else
                if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then
                    cleanupAutoPeek_upvr()
                    return
                end
                local Position_2 = HumanoidRootPart_2_upvr.Position
                local var67 = Vector3.new(var46_upvw.X, Position_2.Y, var46_upvw.Z) - Vector3.new(Position_2.X, Position_2.Y, Position_2.Z)
                if var67.Magnitude < 0.5 then
                    cleanupAutoPeek_upvr()
                    return
                end
                local var68 = Position_2 + var67.Unit * 0.3
                HumanoidRootPart_2_upvr.CFrame = CFrame.new(Vector3.new(var68.X, Position_2.Y, var68.Z)) * (HumanoidRootPart_2_upvr.CFrame - HumanoidRootPart_2_upvr.CFrame.Position)
            end
        end)
    end
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 208
    --[[ Upvalues[1]:
        [1]: cleanupAutoPeek_upvr (readonly)
    ]]
    cleanupAutoPeek_upvr()
    arg1:WaitForChild("Humanoid").Died:Connect(function() -- Line 211
        --[[ Upvalues[1]:
            [1]: cleanupAutoPeek_upvr (copied, readonly)
        ]]
        cleanupAutoPeek_upvr()
    end)
end)
if LocalPlayer_upvr.Character then
    local Humanoid_2 = LocalPlayer_upvr.Character:FindFirstChild("Humanoid")
    if Humanoid_2 then
        Humanoid_2.Died:Connect(function() -- Line 217
            --[[ Upvalues[1]:
                [1]: cleanupAutoPeek_upvr (readonly)
            ]]
            cleanupAutoPeek_upvr()
        end)
    end
end
Parent_upvr_2.TextButton.MouseButton1Click:Connect(function() -- Line 222
    --[[ Upvalues[3]:
        [1]: var44_upvw (read and write)
        [2]: Parent_upvr_2 (readonly)
        [3]: Bind_upvr_2 (readonly)
    ]]
    var44_upvw = not var44_upvw
    local var74
    if var44_upvw then
        var74 = "..."
        Parent_upvr_2.Text = var74
    else
        if Bind_upvr_2.Value == "World32" then
            var74 = "NONE"
        else
            var74 = Bind_upvr_2.Value
        end
        Parent_upvr_2.Text = var74
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(arg1, arg2) -- Line 232
    --[[ Upvalues[6]:
        [1]: var44_upvw (read and write)
        [2]: Bind_upvr_2 (readonly)
        [3]: Parent_upvr_2 (readonly)
        [4]: var45_upvw (read and write)
        [5]: setPeekPoint_upvr (readonly)
        [6]: returnToPeekPoint_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
    do
        return
    end
    -- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AutoPeekBind = Bind_upvr_2.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 260
        --[[ Upvalues[3]:
            [1]: Bind_upvr_2 (readonly)
            [2]: Parent_upvr_2 (readonly)
            [3]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AutoPeekBind" then
            Bind_upvr_2.Value = arg2
            if arg2 == "World32" then
            else
            end
            Parent_upvr_2.Text = arg2
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.TextBox.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoPeekBind
        2 [string] = Value
        3 [string] = World32
        4 [string] = NONE
        5 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = KeyCode
        2 [string] = Name
        3 [string] = Delete
        4 [string] = World32
        5 [string] = Value
        6 [string] = NONE
        7 [string] = Text
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = AutoPeekBind

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = ...
        2 [string] = Text
        3 [string] = Value
        4 [string] = World32
        5 [string] = NONE

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = Died
        5 [string] = Connect

====================================================================================================

Function Dump: returnToPeekPoint

Function Upvalues: returnToPeekPoint

Function Constants: returnToPeekPoint
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = Disconnect
        6 [string] = RenderStepped
        7 [string] = Connect

====================================================================================================

Function Dump: setPeekPoint

Function Upvalues: setPeekPoint

Function Constants: setPeekPoint
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Position
        5 [string] = CFrame
        6 [string] = _G
        8 [string] = AutoPeekActive
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = RaycastParams
        13 [string] = new
        15 [string] = Enum
        16 [string] = RaycastFilterType
        17 [string] = Exclude
        19 [string] = FilterType
        20 [string] = FilterDescendantsInstances
        21 [string] = workspace
        23 [Vector3] = 0, -100, 0
        24 [string] = Raycast
        25 [Vector3] = 0, 0.10000000149011612, 0
        26 [string] = X
        27 [number] = 3
        28 [string] = Y
        29 [string] = Z
        30 [string] = Vector3

====================================================================================================

Function Dump: cleanupAutoPeek

Function Upvalues: cleanupAutoPeek

Function Constants: cleanupAutoPeek
        1 [string] = Disconnect
        2 [string] = Destroy
        3 [string] = _G
        5 [string] = AutoPeekActive

====================================================================================================

Function Dump: createPeekMarker

Function Upvalues: createPeekMarker

Function Constants: createPeekMarker
        1 [string] = Destroy
        2 [string] = Instance
        3 [string] = new
        5 [string] = Part
        6 [string] = AutoPeekMarkerRoot
        7 [string] = Name
        8 [Vector3] = 1, 0.10000000149011612, 1
        9 [string] = Size
        10 [string] = Position
        11 [string] = Anchored
        12 [string] = CanCollide
        13 [string] = CanTouch
        14 [string] = CanQuery
        15 [string] = Transparency
        16 [string] = workspace
        18 [string] = Parent
        19 [string] = Color3
        20 [string] = fromRGB
        22 [string] = InnerDisc
        23 [string] = Enum
        24 [string] = PartType
        25 [string] = Cylinder
        27 [string] = Shape
        28 [Vector3] = 0.05000000074505806, 2.5, 2.5
        29 [string] = CFrame
        30 [string] = Angles
        32 [number] = 1.5707963267948966
        33 [string] = Material
        34 [string] = Neon
        36 [string] = Color
        37 [number] = 0.4
        38 [string] = TweenInfo
        40 [number] = 1.5
        41 [string] = EasingStyle
        42 [string] = Sine
        44 [string] = EasingDirection
        45 [string] = InOut
        48 [number] = 0.7
        49 [Vector3] = 0.05000000074505806, 2.200000047683716, 2.200000047683716
        50 [string] = Create
        51 [string] = Play
        52 [string] = task
        53 [string] = spawn

====================================================================================================

Function Dump: updateBind

Function Upvalues: updateBind

Function Constants: updateBind
        1 [string] = Value
        2 [string] = World32
        3 [string] = NONE
        4 [string] = Text
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoPeekBind

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox
        3 [Instance] = Bind

Function Constants: Unknown Name
        1 [string] = ...
        2 [string] = Text
        3 [string] = Value
        4 [string] = World32
        5 [string] = NONE

====================================================================================================

Function Dump: createPeekMarker

Function Upvalues: createPeekMarker
        3 [Instance] = Run Service
        2 [Instance] = TweenService

Function Constants: createPeekMarker
        1 [string] = Destroy
        2 [string] = Instance
        3 [string] = new
        5 [string] = Part
        6 [string] = AutoPeekMarkerRoot
        7 [string] = Name
        8 [Vector3] = 1, 0.10000000149011612, 1
        9 [string] = Size
        10 [string] = Position
        11 [string] = Anchored
        12 [string] = CanCollide
        13 [string] = CanTouch
        14 [string] = CanQuery
        15 [string] = Transparency
        16 [string] = workspace
        17 [Instance] = Workspace
        18 [string] = Parent
        19 [string] = Color3
        20 [string] = fromRGB
        22 [string] = InnerDisc
        23 [string] = Enum
        24 [string] = PartType
        25 [string] = Cylinder
        26 [EnumItem] = Enum.PartType.Cylinder
        27 [string] = Shape
        28 [Vector3] = 0.05000000074505806, 2.5, 2.5
        29 [string] = CFrame
        30 [string] = Angles
        32 [number] = 1.5707963267948966
        33 [string] = Material
        34 [string] = Neon
        35 [EnumItem] = Enum.Material.Neon
        36 [string] = Color
        37 [number] = 0.4
        38 [string] = TweenInfo
        40 [number] = 1.5
        41 [string] = EasingStyle
        42 [string] = Sine
        43 [EnumItem] = Enum.EasingStyle.Sine
        44 [string] = EasingDirection
        45 [string] = InOut
        46 [EnumItem] = Enum.EasingDirection.InOut
        48 [number] = 0.7
        49 [Vector3] = 0.05000000074505806, 2.200000047683716, 2.200000047683716
        50 [string] = Create
        51 [string] = Play
        52 [string] = task
        53 [string] = spawn

====================================================================================================

Function Dump: returnToPeekPoint

Function Upvalues: returnToPeekPoint
        1 [boolean] = false
        7 [Instance] = Run Service
        9 [function] = cleanupAutoPeek
        3 [Instance] = quit_xyz

Function Constants: returnToPeekPoint
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = Disconnect
        6 [string] = RenderStepped
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Bind
        3 [Instance] = TextBox
        4 [boolean] = false
        5 [function] = setPeekPoint
        6 [function] = returnToPeekPoint

Function Constants: Unknown Name
        1 [string] = KeyCode
        2 [string] = Name
        3 [string] = Delete
        4 [string] = World32
        5 [string] = Value
        6 [string] = NONE
        7 [string] = Text
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = AutoPeekBind

====================================================================================================

Function Dump: setPeekPoint

Function Upvalues: setPeekPoint
        1 [Instance] = quit_xyz
        6 [Instance] = Run Service
        8 [function] = createPeekMarker
        7 [function] = cleanupAutoPeek
        4 [boolean] = false

Function Constants: setPeekPoint
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Position
        5 [string] = CFrame
        6 [string] = _G
        8 [string] = AutoPeekActive
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = RaycastParams
        13 [string] = new
        15 [string] = Enum
        16 [string] = RaycastFilterType
        17 [string] = Exclude
        18 [EnumItem] = Enum.RaycastFilterType.Exclude
        19 [string] = FilterType
        20 [string] = FilterDescendantsInstances
        21 [string] = workspace
        22 [Instance] = Workspace
        23 [Vector3] = 0, -100, 0
        24 [string] = Raycast
        25 [Vector3] = 0, 0.10000000149011612, 0
        26 [string] = X
        27 [number] = 3
        28 [string] = Y
        29 [string] = Z
        30 [string] = Vector3

====================================================================================================

Function Dump: cleanupAutoPeek

Function Upvalues: cleanupAutoPeek
        5 [boolean] = false

Function Constants: cleanupAutoPeek
        1 [string] = Disconnect
        2 [string] = Destroy
        3 [string] = _G
        5 [string] = AutoPeekActive

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = cleanupAutoPeek

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = Died
        5 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = cleanupAutoPeek

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Bind
        2 [Instance] = TextBox
        3 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoPeekBind
        2 [string] = Value
        3 [string] = World32
        4 [string] = NONE
        5 [string] = Text

====================================================================================================
]]
