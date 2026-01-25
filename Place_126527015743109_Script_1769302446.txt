-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle4.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.012010 seconds

local TweenService_upvr = game:GetService("TweenService")
local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Frame2_upvr = script.Parent.Frame2
local scope_upvr = game.ReplicatedStorage.cfgg.scope
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var9_upvw = false
local tbl_upvr_2 = {
    dur = 0.75;
    impactLife = 2.15;
    impactFade = 2;
}
local tbl_upvr = {"FXTemplates", "ImpactFX"}
local function _() -- Line 26, Named "getTemplate"
    --[[ Upvalues[2]:
        [1]: ReplicatedStorage_upvr (readonly)
        [2]: tbl_upvr (readonly)
    ]]
    local var14
    for i = 1, #tbl_upvr do
        var14 = var14:FindFirstChild(tbl_upvr[i])
        if not var14 then
            return nil
        end
    end
    return var14
end
local function setEmittersEnabled_upvr(arg1, arg2) -- Line 35, Named "setEmittersEnabled"
    for _, v in ipairs(arg1:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            v.Enabled = arg2
        end
    end
end
local Debris_upvr = game:GetService("Debris")
local function createImpactEffect_upvr(arg1) -- Line 43, Named "createImpactEffect"
    --[[ Upvalues[5]:
        [1]: ReplicatedStorage_upvr (readonly)
        [2]: tbl_upvr (readonly)
        [3]: setEmittersEnabled_upvr (readonly)
        [4]: tbl_upvr_2 (readonly)
        [5]: Debris_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    local _ = 1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [15] 15. Error Block 4 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [15] 15. Error Block 4 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [6] 7. Error Block 14 start (CF ANALYSIS FAILED)
    if not ReplicatedStorage_upvr then
        -- KONSTANTWARNING: GOTO [17] #17
    end
    -- KONSTANTERROR: [6] 7. Error Block 14 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 69, Named "createKillEffect"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: Players_upvr (readonly)
        [3]: createImpactEffect_upvr (readonly)
    ]]
    if not var9_upvw then
    else
        local SOME_2 = Players_upvr:FindFirstChild(arg1)
        if not SOME_2 then return end
        local Character_2 = SOME_2.Character
        if not Character_2 then return end
        local Head = Character_2:FindFirstChild("Head")
        if not Head then return end
        createImpactEffect_upvr(Head.Position)
    end
end
ReplicatedStorage_upvr:WaitForChild("inf").OnClientEvent:Connect(function(arg1) -- Line 84
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: Players_upvr (readonly)
        [3]: createImpactEffect_upvr (readonly)
    ]]
    if not var9_upvw then
    else
        local SOME = Players_upvr:FindFirstChild(arg1)
        if not SOME then return end
        local Character = SOME.Character
        if not Character then return end
        local Head_2 = Character:FindFirstChild("Head")
        if not Head_2 then return end
        createImpactEffect_upvr(Head_2.Position)
    end
end)
local function setAvailableEspEnabled_upvr(arg1, arg2) -- Line 88, Named "setAvailableEspEnabled"
    --[[ Upvalues[7]:
        [1]: var9_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: scope_upvr (readonly)
    ]]
    var9_upvw = arg1
    local var29
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var29 = udim2_upvr_2
        return var29
    end
    if not var9_upvw or not INLINED() then
        var29 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var29;
    }):Play()
    if scope_upvr then
        scope_upvr.Value = var9_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("killeffect", var9_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 103
    --[[ Upvalues[2]:
        [1]: setAvailableEspEnabled_upvr (readonly)
        [2]: var9_upvw (read and write)
    ]]
    setAvailableEspEnabled_upvr(not var9_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.killeffect = var9_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 113
        --[[ Upvalues[8]:
            [1]: var9_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: scope_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "killeffect" then
            var9_upvw = arg2
            if not var9_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if scope_upvr then
                scope_upvr.Value = var9_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle4.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = killeffect
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAvailableEspEnabled

Function Upvalues: setAvailableEspEnabled

Function Constants: setAvailableEspEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = killeffect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FindFirstChild
        2 [string] = Character
        3 [string] = Head
        4 [string] = Position

====================================================================================================

Function Dump: createKillEffect

Function Upvalues: createKillEffect

Function Constants: createKillEffect
        1 [string] = FindFirstChild
        2 [string] = Character
        3 [string] = Head
        4 [string] = Position

====================================================================================================

Function Dump: createImpactEffect

Function Upvalues: createImpactEffect

Function Constants: createImpactEffect
        1 [string] = FindFirstChild
        2 [string] = Clone
        3 [string] = Anchored
        4 [string] = CanCollide
        5 [string] = CanQuery
        6 [string] = CanTouch
        7 [string] = Transparency
        8 [string] = CFrame
        9 [string] = new
        11 [string] = workspace
        13 [string] = Parent
        14 [string] = impactLife
        15 [string] = impactFade
        16 [string] = task
        17 [string] = spawn
        19 [string] = dur
        20 [string] = AddItem

====================================================================================================

Function Dump: setEmittersEnabled

Function Upvalues: setEmittersEnabled

Function Constants: setEmittersEnabled
        1 [string] = ipairs
        3 [string] = GetDescendants
        4 [string] = ParticleEmitter
        5 [string] = IsA
        6 [string] = Enabled

====================================================================================================

Function Dump: getTemplate

Function Upvalues: getTemplate

Function Constants: getTemplate
        1 [string] = FindFirstChild

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = scope
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = killeffect
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAvailableEspEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Players
        3 [function] = createImpactEffect

Function Constants: Unknown Name
        1 [string] = FindFirstChild
        2 [string] = Character
        3 [string] = Head
        4 [string] = Position

====================================================================================================

Function Dump: setEmittersEnabled

Function Upvalues: setEmittersEnabled

Function Constants: setEmittersEnabled
        1 [string] = ipairs
        3 [string] = GetDescendants
        4 [string] = ParticleEmitter
        5 [string] = IsA
        6 [string] = Enabled

====================================================================================================

Function Dump: setAvailableEspEnabled

Function Upvalues: setAvailableEspEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = scope

Function Constants: setAvailableEspEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = killeffect

====================================================================================================

Function Dump: createImpactEffect

Function Upvalues: createImpactEffect
        1 [Instance] = ReplicatedStorage
        2 [table]:
        2 [table] table: 0x855406912d4584b5
                1 [string] = FXTemplates
                2 [string] = ImpactFX
        3 [function] = setEmittersEnabled
        4 [table]:
        4 [table] table: 0xeae552a369518165
                1 [number] = 2
                2 [number] = 0.75
                3 [number] = 2.15
        5 [Instance] = Debris

Function Constants: createImpactEffect
        1 [string] = FindFirstChild
        2 [string] = Clone
        3 [string] = Anchored
        4 [string] = CanCollide
        5 [string] = CanQuery
        6 [string] = CanTouch
        7 [string] = Transparency
        8 [string] = CFrame
        9 [string] = new
        11 [string] = workspace
        12 [Instance] = Workspace
        13 [string] = Parent
        14 [string] = impactLife
        15 [string] = impactFade
        16 [string] = task
        17 [string] = spawn
        19 [string] = dur
        20 [string] = AddItem

====================================================================================================
]]
