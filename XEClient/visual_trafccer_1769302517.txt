-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle6.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:55:15
-- Luau version 6, Types version 3
-- Time taken: 0.019338 seconds

local TweenService_upvr = game:GetService("TweenService")
local Workspace_upvr = game:GetService("Workspace")
local Debris_upvr = game:GetService("Debris")
local TextButton = script.Parent:WaitForChild("TextButton", 5)
if not TextButton then
    TextButton = script.Parent.TextButton
end
local Frame2_upvr = script.Parent:WaitForChild("Frame2", 5)
if not Frame2_upvr then
    Frame2_upvr = script.Parent.Frame2
end
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var9_upvw = false
local tbl_upvr = {
    dur = 0.75;
    tex = "rbxassetid://93746968407218";
    alpha = 0.03;
    wGlow = 0.35;
    wCore = 0.1;
    wStatic = 0.45;
    col = ColorSequence.new(Color3.fromRGB(255, 255, 255));
}
local function _(arg1, arg2) -- Line 25, Named "anchor"
    local Part = Instance.new("Part")
    Part.Anchored = true
    Part.Transparency = 1
    Part.CanCollide = false
    Part.CanQuery = false
    Part.CanTouch = false
    Part.Size = Vector3.new(0, 0, 0)
    Part.Position = arg2
    Part.Parent = arg1
    return Part
end
local function beam_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 38, Named "beam"
    --[[ Upvalues[1]:
        [1]: tbl_upvr (readonly)
    ]]
    local Beam = Instance.new("Beam")
    Beam.Attachment0 = arg1
    Beam.Attachment1 = arg2
    Beam.Texture = tbl_upvr.tex
    Beam.TextureMode = Enum.TextureMode.Wrap
    Beam.TextureLength = arg6
    Beam.TextureSpeed = arg5
    Beam.LightEmission = 1
    Beam.LightInfluence = 0
    Beam.FaceCamera = true
    Beam.Color = tbl_upvr.col
    Beam.Transparency = NumberSequence.new(arg4)
    Beam.Width0 = arg3
    Beam.Width1 = arg3
    Beam.CurveSize0 = 0
    Beam.CurveSize1 = 0
    Beam.ZOffset = arg7 or 0
    return Beam
end
local function spawnImpact_upvr(arg1) -- Line 59, Named "spawnImpact"
    --[[ Upvalues[2]:
        [1]: Workspace_upvr (readonly)
        [2]: Debris_upvr (readonly)
    ]]
    local Part_3 = Instance.new("Part")
    Part_3.Anchored = true
    Part_3.Transparency = 1
    Part_3.CanCollide = false
    Part_3.Position = arg1
    Part_3.Parent = Workspace_upvr
    Debris_upvr:AddItem(Part_3, 2)
    for _, v in pairs({{
        tex = "rbxassetid://3270017";
        size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 2.5)});
        drag = 0;
    }, {
        tex = "rbxassetid://242203166";
        size = NumberSequence.new(1, 0);
        drag = 0;
    }, {
        tex = "rbxassetid://243661300";
        size = NumberSequence.new(0.2, 0);
        drag = 8;
        speed = NumberRange.new(10, 25);
    }}) do
        local ParticleEmitter = Instance.new("ParticleEmitter", Part_3)
        ParticleEmitter.Texture = v.tex
        ParticleEmitter.Size = v.size
        ParticleEmitter.Drag = v.drag
        ParticleEmitter.Lifetime = NumberRange.new(0.2, 0.5)
        ParticleEmitter.Rate = 0
        local speed = v.speed
        if not speed then
            speed = NumberRange.new(0)
        end
        ParticleEmitter.Speed = speed
        ParticleEmitter.LightEmission = 1
        ParticleEmitter:Emit(5)
    end
end
local function spawnTracer_upvr(arg1, arg2) -- Line 85, Named "spawnTracer"
    --[[ Upvalues[6]:
        [1]: Workspace_upvr (readonly)
        [2]: beam_upvr (readonly)
        [3]: tbl_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: spawnImpact_upvr (readonly)
        [6]: Debris_upvr (readonly)
    ]]
    local Folder = Instance.new("Folder")
    Folder.Name = "Lightning_FX"
    Folder.Parent = Workspace_upvr
    local Part_2 = Instance.new("Part")
    Part_2.Anchored = true
    Part_2.Transparency = 1
    Part_2.CanCollide = false
    Part_2.CanQuery = false
    Part_2.CanTouch = false
    Part_2.Size = Vector3.new(0, 0, 0)
    Part_2.Position = arg1
    Part_2.Parent = Folder
    local Part_4 = Instance.new("Part")
    Part_4.Anchored = true
    Part_4.Transparency = 1
    Part_4.CanCollide = false
    Part_4.CanQuery = false
    Part_4.CanTouch = false
    Part_4.Size = Vector3.new(0, 0, 0)
    Part_4.Position = arg2
    Part_4.Parent = Folder
    local Attachment = Instance.new("Attachment")
    Attachment.Parent = Part_2
    local Attachment_2 = Instance.new("Attachment")
    Attachment_2.Parent = Part_4
    local beam_result1 = beam_upvr(Attachment, Attachment_2, tbl_upvr.wGlow, tbl_upvr.alpha, 14, 1.35, 0)
    beam_result1.Parent = Folder
    local beam_result1_2 = beam_upvr(Attachment, Attachment_2, tbl_upvr.wCore, 0, 0, 1.35, 0.12)
    beam_result1_2.Parent = Folder
    local beam_result1_3 = beam_upvr(Attachment, Attachment_2, tbl_upvr.wStatic, 0.35, 22, 0.9, -0.12)
    beam_result1_3.Parent = Folder
    local TweenInfo_new_result1 = TweenInfo.new(tbl_upvr.dur, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService_upvr:Create(beam_result1, TweenInfo_new_result1, {
        Width0 = 0;
        Width1 = 0;
    }):Play()
    TweenService_upvr:Create(beam_result1_2, TweenInfo_new_result1, {
        Width0 = 0;
        Width1 = 0;
    }):Play()
    TweenService_upvr:Create(beam_result1_3, TweenInfo_new_result1, {
        Width0 = 0;
        Width1 = 0;
    }):Play()
    spawnImpact_upvr(arg2)
    Debris_upvr:AddItem(Folder, tbl_upvr.dur + 1.2)
end
Workspace_upvr.ChildAdded:Connect(function(arg1) -- Line 117
    --[[ Upvalues[2]:
        [1]: var9_upvw (read and write)
        [2]: spawnTracer_upvr (readonly)
    ]]
    if not var9_upvw then
    else
        if arg1.Name ~= "bulletxdd_fx" or not arg1:IsA("Folder") then return end
        task.spawn(function() -- Line 121
            --[[ Upvalues[2]:
                [1]: arg1 (readonly)
                [2]: spawnTracer_upvr (copied, readonly)
            ]]
            task.wait()
            if not arg1 or not arg1.Parent then
            else
                local Mover = arg1:FindFirstChild("Mover")
                local Trace = arg1:FindFirstChild("Trace", true)
                if not Mover or not Trace then return end
                Trace.Enabled = false
                local Attachment0 = Trace.Attachment0
                if not Attachment0 or not Trace.Attachment1 then return end
                local WorldPosition = Attachment0.WorldPosition
                spawnTracer_upvr(WorldPosition, Mover.CFrame.LookVector * 1000 + WorldPosition)
            end
        end)
    end
end)
local function setEnabled_upvr(arg1, arg2) -- Line 142, Named "setEnabled"
    --[[ Upvalues[6]:
        [1]: var9_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var9_upvw = arg1
    local var46
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var46 = udim2_upvr_2
        return var46
    end
    if not var9_upvw or not INLINED() then
        var46 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var46;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("trafccer", var9_upvw)
    end
end
TextButton.MouseButton1Click:Connect(function() -- Line 149
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var9_upvw (read and write)
    ]]
    setEnabled_upvr(not var9_upvw, true)
end)
if _G.ConfigSystem then
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 153
        --[[ Upvalues[7]:
            [1]: var9_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "trafccer" then
            var9_upvw = arg2
            if not var9_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle6.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = trafccer
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
        9 [string] = trafccer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd_fx
        3 [string] = Folder
        4 [string] = IsA
        5 [string] = task
        6 [string] = spawn

====================================================================================================

Function Dump: spawnTracer

Function Upvalues: spawnTracer

Function Constants: spawnTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Folder
        5 [string] = Lightning_FX
        6 [string] = Name
        7 [string] = Parent
        8 [string] = Part
        9 [string] = Anchored
        10 [string] = Transparency
        11 [string] = CanCollide
        12 [string] = CanQuery
        13 [string] = CanTouch
        14 [Vector3] = 0, 0, 0
        15 [string] = Size
        16 [string] = Position
        17 [string] = Attachment
        18 [string] = wGlow
        19 [string] = alpha
        20 [number] = 1.35
        21 [string] = wCore
        22 [number] = 0.12
        23 [string] = wStatic
        24 [number] = 0.35
        25 [number] = 0.9
        26 [number] = -0.12
        27 [string] = TweenInfo
        29 [string] = dur
        30 [string] = Enum
        31 [string] = EasingStyle
        32 [string] = Quad
        34 [string] = EasingDirection
        35 [string] = Out
        37 [string] = Width0
        38 [string] = Width1
        40 [string] = Create
        41 [string] = Play
        42 [number] = 1.2
        43 [string] = AddItem

====================================================================================================

Function Dump: spawnImpact

Function Upvalues: spawnImpact

Function Constants: spawnImpact
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = Anchored
        6 [string] = Transparency
        7 [string] = CanCollide
        8 [string] = Position
        9 [string] = Parent
        10 [string] = AddItem
        11 [string] = tex
        12 [string] = size
        13 [string] = drag
        15 [string] = rbxassetid://3270017
        16 [string] = NumberSequence
        18 [string] = NumberSequenceKeypoint
        20 [number] = 0.5
        21 [number] = 2.5
        22 [string] = rbxassetid://242203166
        23 [string] = speed
        25 [string] = rbxassetid://243661300
        26 [number] = 0.2
        27 [string] = NumberRange
        29 [string] = pairs
        31 [string] = ParticleEmitter
        32 [string] = Texture
        33 [string] = Size
        34 [string] = Drag
        35 [string] = Lifetime
        36 [string] = Rate
        37 [string] = Speed
        38 [string] = LightEmission
        39 [string] = Emit

====================================================================================================

Function Dump: beam

Function Upvalues: beam

Function Constants: beam
        1 [string] = Instance
        2 [string] = new
        4 [string] = Beam
        5 [string] = Attachment0
        6 [string] = Attachment1
        7 [string] = tex
        8 [string] = Texture
        9 [string] = Enum
        10 [string] = TextureMode
        11 [string] = Wrap
        13 [string] = TextureLength
        14 [string] = TextureSpeed
        15 [string] = LightEmission
        16 [string] = LightInfluence
        17 [string] = FaceCamera
        18 [string] = col
        19 [string] = Color
        20 [string] = NumberSequence
        22 [string] = Transparency
        23 [string] = Width0
        24 [string] = Width1
        25 [string] = CurveSize0
        26 [string] = CurveSize1
        27 [number] = 0
        28 [string] = ZOffset

====================================================================================================

Function Dump: anchor

Function Upvalues: anchor

Function Constants: anchor
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = Anchored
        6 [string] = Transparency
        7 [string] = CanCollide
        8 [string] = CanQuery
        9 [string] = CanTouch
        10 [Vector3] = 0, 0, 0
        11 [string] = Size
        12 [string] = Position
        13 [string] = Parent

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
        2 [function] = spawnTracer

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd_fx
        3 [string] = Folder
        4 [string] = IsA
        5 [string] = task
        6 [string] = spawn

====================================================================================================

Function Dump: spawnImpact

Function Upvalues: spawnImpact
        1 [Instance] = Workspace
        2 [Instance] = Debris

Function Constants: spawnImpact
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = Anchored
        6 [string] = Transparency
        7 [string] = CanCollide
        8 [string] = Position
        9 [string] = Parent
        10 [string] = AddItem
        11 [string] = tex
        12 [string] = size
        13 [string] = drag
        15 [string] = rbxassetid://3270017
        16 [string] = NumberSequence
        18 [string] = NumberSequenceKeypoint
        20 [number] = 0.5
        21 [number] = 2.5
        22 [string] = rbxassetid://242203166
        23 [string] = speed
        25 [string] = rbxassetid://243661300
        26 [number] = 0.2
        27 [string] = NumberRange
        29 [string] = pairs
        31 [string] = ParticleEmitter
        32 [string] = Texture
        33 [string] = Size
        34 [string] = Drag
        35 [string] = Lifetime
        36 [string] = Rate
        37 [string] = Speed
        38 [string] = LightEmission
        39 [string] = Emit

====================================================================================================

Function Dump: beam

Function Upvalues: beam
        1 [table]:
        1 [table] table: 0x82f9aaea471de055
                1 [number] = 0.35
                2 [number] = 0.75
                3 [ColorSequence] = 0 1 1 1 0 1 1 1 1 0 
                4 [string] = rbxassetid://93746968407218
                5 [number] = 0.45
                6 [number] = 0.03
                7 [number] = 0.1

Function Constants: beam
        1 [string] = Instance
        2 [string] = new
        4 [string] = Beam
        5 [string] = Attachment0
        6 [string] = Attachment1
        7 [string] = tex
        8 [string] = Texture
        9 [string] = Enum
        10 [string] = TextureMode
        11 [string] = Wrap
        12 [EnumItem] = Enum.TextureMode.Wrap
        13 [string] = TextureLength
        14 [string] = TextureSpeed
        15 [string] = LightEmission
        16 [string] = LightInfluence
        17 [string] = FaceCamera
        18 [string] = col
        19 [string] = Color
        20 [string] = NumberSequence
        22 [string] = Transparency
        23 [string] = Width0
        24 [string] = Width1
        25 [string] = CurveSize0
        26 [string] = CurveSize1
        27 [number] = 0
        28 [string] = ZOffset

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
        9 [string] = trafccer

====================================================================================================

Function Dump: spawnTracer

Function Upvalues: spawnTracer
        1 [Instance] = Workspace
        2 [function] = beam
        3 [table] (Recursive table detected)
        4 [Instance] = TweenService
        5 [function] = spawnImpact
        6 [Instance] = Debris

Function Constants: spawnTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Folder
        5 [string] = Lightning_FX
        6 [string] = Name
        7 [string] = Parent
        8 [string] = Part
        9 [string] = Anchored
        10 [string] = Transparency
        11 [string] = CanCollide
        12 [string] = CanQuery
        13 [string] = CanTouch
        14 [Vector3] = 0, 0, 0
        15 [string] = Size
        16 [string] = Position
        17 [string] = Attachment
        18 [string] = wGlow
        19 [string] = alpha
        20 [number] = 1.35
        21 [string] = wCore
        22 [number] = 0.12
        23 [string] = wStatic
        24 [number] = 0.35
        25 [number] = 0.9
        26 [number] = -0.12
        27 [string] = TweenInfo
        29 [string] = dur
        30 [string] = Enum
        31 [string] = EasingStyle
        32 [string] = Quad
        33 [EnumItem] = Enum.EasingStyle.Quad
        34 [string] = EasingDirection
        35 [string] = Out
        36 [EnumItem] = Enum.EasingDirection.Out
        37 [string] = Width0
        38 [string] = Width1
        40 [string] = Create
        41 [string] = Play
        42 [number] = 1.2
        43 [string] = AddItem

====================================================================================================
]]
