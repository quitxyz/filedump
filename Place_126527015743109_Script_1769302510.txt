-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle7.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:55:08
-- Luau version 6, Types version 3
-- Time taken: 0.012359 seconds

local TweenService_upvr = game:GetService("TweenService")
local Workspace_upvr = game:GetService("Workspace")
local TextButton = script.Parent:WaitForChild("TextButton", 5)
if not TextButton then
    TextButton = script.Parent.TextButton
end
local Frame2_upvr = script.Parent:WaitForChild("Frame2", 5)
if not Frame2_upvr then
    Frame2_upvr = script.Parent.Frame2
end
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var8_upvw = false
local tbl_2_upvr = {
    TracerColor = ColorSequence.new(Color3.fromRGB(255, 255, 255));
    TracerWidth = 0.1;
    MarkerSize = Vector3.new(0.5, 0.5, 0.5);
    EntryColor = Color3.fromRGB(255, 50, 50);
    ExitColor = Color3.fromRGB(50, 255, 50);
    Lifetime = 3;
}
local Debris_upvr = game:GetService("Debris")
local function createMarker_upvr(arg1, arg2) -- Line 32, Named "createMarker"
    --[[ Upvalues[4]:
        [1]: tbl_2_upvr (readonly)
        [2]: Workspace_upvr (readonly)
        [3]: TweenService_upvr (readonly)
        [4]: Debris_upvr (readonly)
    ]]
    local Part_upvr = Instance.new("Part")
    Part_upvr.Name = "wbmhgfhf"
    Part_upvr.Anchored = true
    Part_upvr.CanCollide = false
    Part_upvr.CanQuery = false
    Part_upvr.CastShadow = false
    Part_upvr.Material = Enum.Material.Neon
    Part_upvr.Color = arg2
    Part_upvr.Size = tbl_2_upvr.MarkerSize
    Part_upvr.CFrame = CFrame.new(arg1)
    Part_upvr.Parent = Workspace_upvr
    Part_upvr.Transparency = 0.5
    TweenService_upvr:Create(Part_upvr, TweenInfo.new(0.3), {
        Transparency = 0;
    }):Play()
    Debris_upvr:AddItem(Part_upvr, tbl_2_upvr.Lifetime)
    task.delay(tbl_2_upvr.Lifetime - 0.5, function() -- Line 54
        --[[ Upvalues[2]:
            [1]: Part_upvr (readonly)
            [2]: TweenService_upvr (copied, readonly)
        ]]
        if Part_upvr.Parent then
            TweenService_upvr:Create(Part_upvr, TweenInfo.new(0.5), {
                Transparency = 1;
                Size = Vector3.new(0, 0, 0);
            }):Play()
        end
    end)
end
local function createTracer_upvr(arg1, arg2) -- Line 62, Named "createTracer"
    --[[ Upvalues[2]:
        [1]: Workspace_upvr (readonly)
        [2]: tbl_2_upvr (readonly)
    ]]
    local Attachment_upvr_2 = Instance.new("Attachment", Workspace_upvr.Terrain)
    local Attachment_upvr = Instance.new("Attachment", Workspace_upvr.Terrain)
    Attachment_upvr_2.Position = arg1
    Attachment_upvr.Position = arg2
    local Beam_upvr = Instance.new("Beam")
    Beam_upvr.Attachment0 = Attachment_upvr_2
    Beam_upvr.Attachment1 = Attachment_upvr
    Beam_upvr.Color = tbl_2_upvr.TracerColor
    Beam_upvr.Width0 = tbl_2_upvr.TracerWidth
    Beam_upvr.Width1 = tbl_2_upvr.TracerWidth
    Beam_upvr.FaceCamera = true
    Beam_upvr.LightEmission = 1
    Beam_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
    Beam_upvr.Parent = Workspace_upvr.Terrain
    task.delay(0.1, function() -- Line 83
        --[[ Upvalues[3]:
            [1]: Beam_upvr (readonly)
            [2]: Attachment_upvr_2 (readonly)
            [3]: Attachment_upvr (readonly)
        ]]
        for i = 0, 1, 0.1 do
            Beam_upvr.Transparency = NumberSequence.new(i)
            task.wait(0.03)
        end
        Attachment_upvr_2:Destroy()
        Attachment_upvr:Destroy()
    end)
end
local function processWallbang_upvr(arg1, arg2, arg3) -- Line 93, Named "processWallbang"
    --[[ Upvalues[3]:
        [1]: Workspace_upvr (readonly)
        [2]: createMarker_upvr (readonly)
        [3]: tbl_2_upvr (readonly)
    ]]
    local var30 = arg2 - arg1
    local Magnitude_2 = var30.Magnitude
    local Unit_2 = var30.Unit
    local RaycastParams_new_result1 = RaycastParams.new()
    RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
    local tbl = {}
    tbl[1] = arg3
    local Character = game:GetService("Players").LocalPlayer.Character
    if Character then
        table.insert(tbl, Character)
    end
    RaycastParams_new_result1.FilterDescendantsInstances = tbl
    local any_Raycast_result1_3 = Workspace_upvr:Raycast(arg1, Unit_2 * Magnitude_2, RaycastParams_new_result1)
    if any_Raycast_result1_3 then
        local any_Raycast_result1_2 = Workspace_upvr:Raycast(arg2, -Unit_2 * Magnitude_2, RaycastParams_new_result1)
        if any_Raycast_result1_2 then
            local Magnitude_4 = (any_Raycast_result1_3.Position - any_Raycast_result1_2.Position).Magnitude
            if 0.5 < Magnitude_4 and Magnitude_4 < Magnitude_2 then
                createMarker_upvr(any_Raycast_result1_3.Position, tbl_2_upvr.EntryColor)
                createMarker_upvr(any_Raycast_result1_2.Position, tbl_2_upvr.ExitColor)
            end
        end
    end
end
Workspace_upvr.ChildAdded:Connect(function(arg1) -- Line 134
    --[[ Upvalues[3]:
        [1]: var8_upvw (read and write)
        [2]: createTracer_upvr (readonly)
        [3]: processWallbang_upvr (readonly)
    ]]
    if not var8_upvw then
    elseif arg1.Name == "bulletxdd" then
        task.spawn(function() -- Line 138
            --[[ Upvalues[3]:
                [1]: arg1 (readonly)
                [2]: createTracer_upvr (copied, readonly)
                [3]: processWallbang_upvr (copied, readonly)
            ]]
            task.wait()
            if not arg1 or not arg1.Parent then
            else
                arg1.Transparency = 1
                local CFrame = arg1.CFrame
                local Z = arg1.Size.Z
                local LookVector = CFrame.LookVector
                local var44 = CFrame.Position - (LookVector) * (Z / 2)
                local var45 = CFrame.Position + (LookVector) * (Z / 2)
                createTracer_upvr(var44, var45)
                processWallbang_upvr(var44, var45, arg1)
            end
        end)
    end
end)
local function setEnabled_upvr(arg1, arg2) -- Line 163, Named "setEnabled"
    --[[ Upvalues[6]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var8_upvw = arg1
    local var46
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var46 = udim2_upvr
        return var46
    end
    if not var8_upvw or not INLINED() then
        var46 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var46;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("sivusuauwall", var8_upvw)
    end
end
TextButton.MouseButton1Click:Connect(function() -- Line 170
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var8_upvw (read and write)
    ]]
    setEnabled_upvr(not var8_upvw, true)
end)
if _G.ConfigSystem then
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 174
        --[[ Upvalues[7]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "sivusuauwall" then
            var8_upvw = arg2
            if not var8_upvw or not udim2_upvr then
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
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle7.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = sivusuauwall
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setEnabled

Function Upvalues: setEnabled

Function Constants: setEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = sivusuauwall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: processWallbang

Function Upvalues: processWallbang

Function Constants: processWallbang
        1 [string] = Magnitude
        2 [string] = Unit
        3 [string] = RaycastParams
        4 [string] = new
        6 [string] = Enum
        7 [string] = RaycastFilterType
        8 [string] = Exclude
        10 [string] = FilterType
        11 [string] = game
        13 [string] = Players
        14 [string] = GetService
        15 [string] = LocalPlayer
        16 [string] = Character
        17 [string] = table
        18 [string] = insert
        20 [string] = FilterDescendantsInstances
        21 [string] = Raycast
        22 [string] = Position
        23 [number] = 0.5
        24 [string] = EntryColor
        25 [string] = ExitColor

====================================================================================================

Function Dump: createTracer

Function Upvalues: createTracer

Function Constants: createTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Attachment
        5 [string] = Terrain
        6 [string] = Position
        7 [string] = Beam
        8 [string] = Attachment0
        9 [string] = Attachment1
        10 [string] = TracerColor
        11 [string] = Color
        12 [string] = TracerWidth
        13 [string] = Width0
        14 [string] = Width1
        15 [string] = FaceCamera
        16 [string] = LightEmission
        17 [string] = NumberSequence
        19 [string] = NumberSequenceKeypoint
        21 [string] = Transparency
        22 [string] = Parent
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================

Function Dump: createMarker

Function Upvalues: createMarker

Function Constants: createMarker
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = wbmhgfhf
        6 [string] = Name
        7 [string] = Anchored
        8 [string] = CanCollide
        9 [string] = CanQuery
        10 [string] = CastShadow
        11 [string] = Enum
        12 [string] = Material
        13 [string] = Neon
        15 [string] = Color
        16 [string] = MarkerSize
        17 [string] = Size
        18 [string] = CFrame
        20 [string] = Parent
        21 [number] = 0.5
        22 [string] = Transparency
        23 [string] = TweenInfo
        25 [number] = 0.3
        27 [string] = Create
        28 [string] = Play
        29 [string] = Lifetime
        30 [string] = AddItem
        31 [string] = task
        32 [string] = delay

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = createTracer
        3 [function] = processWallbang

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: setEnabled

Function Upvalues: setEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = sivusuauwall

====================================================================================================

Function Dump: processWallbang

Function Upvalues: processWallbang
        1 [Instance] = Workspace
        2 [function] = createMarker
        3 [table]:
        3 [table] table: 0xbcbea866f4825d85
                1 [Color3] = 0.196078, 1, 0.196078
                2 [number] = 3
                3 [number] = 0.1
                4 [Color3] = 1, 0.196078, 0.196078
                5 [Vector3] = 0.5, 0.5, 0.5
                6 [ColorSequence] = 0 1 1 1 0 1 1 1 1 0 

Function Constants: processWallbang
        1 [string] = Magnitude
        2 [string] = Unit
        3 [string] = RaycastParams
        4 [string] = new
        6 [string] = Enum
        7 [string] = RaycastFilterType
        8 [string] = Exclude
        9 [EnumItem] = Enum.RaycastFilterType.Exclude
        10 [string] = FilterType
        11 [string] = game
        12 [Instance] = Ugc
        13 [string] = Players
        14 [string] = GetService
        15 [string] = LocalPlayer
        16 [string] = Character
        17 [string] = table
        18 [string] = insert
        20 [string] = FilterDescendantsInstances
        21 [string] = Raycast
        22 [string] = Position
        23 [number] = 0.5
        24 [string] = EntryColor
        25 [string] = ExitColor

====================================================================================================

Function Dump: createMarker

Function Upvalues: createMarker
        1 [table] (Recursive table detected)
        2 [Instance] = Workspace
        3 [Instance] = TweenService
        4 [Instance] = Debris

Function Constants: createMarker
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = wbmhgfhf
        6 [string] = Name
        7 [string] = Anchored
        8 [string] = CanCollide
        9 [string] = CanQuery
        10 [string] = CastShadow
        11 [string] = Enum
        12 [string] = Material
        13 [string] = Neon
        14 [EnumItem] = Enum.Material.Neon
        15 [string] = Color
        16 [string] = MarkerSize
        17 [string] = Size
        18 [string] = CFrame
        20 [string] = Parent
        21 [number] = 0.5
        22 [string] = Transparency
        23 [string] = TweenInfo
        25 [number] = 0.3
        27 [string] = Create
        28 [string] = Play
        29 [string] = Lifetime
        30 [string] = AddItem
        31 [string] = task
        32 [string] = delay

====================================================================================================

Function Dump: createTracer

Function Upvalues: createTracer
        1 [Instance] = Workspace
        2 [table] (Recursive table detected)

Function Constants: createTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Attachment
        5 [string] = Terrain
        6 [string] = Position
        7 [string] = Beam
        8 [string] = Attachment0
        9 [string] = Attachment1
        10 [string] = TracerColor
        11 [string] = Color
        12 [string] = TracerWidth
        13 [string] = Width0
        14 [string] = Width1
        15 [string] = FaceCamera
        16 [string] = LightEmission
        17 [string] = NumberSequence
        19 [string] = NumberSequenceKeypoint
        21 [string] = Transparency
        22 [string] = Parent
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================
]]
