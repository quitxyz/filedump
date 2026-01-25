-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle3.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:53:54
-- Luau version 6, Types version 3
-- Time taken: 0.013914 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local tbl_upvr_2 = {-- : First try: K:0: attempt to index nil with 't'

local var8_upvw = false
local ScreenGui_upvr = Instance.new("ScreenGui")
ScreenGui_upvr.Name = "XEIndicator"
ScreenGui_upvr.ResetOnSpawn = false
ScreenGui_upvr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_upvr.Enabled = false
local Frame = Instance.new("Frame")
Frame.Name = "IndicatorFrame"
Frame.Active = false
Frame.Selectable = false
Frame.Size = UDim2.new(0, 80, 0, 32)
Frame.Position = UDim2.new(0.5, -40, 0.55, 0)
Frame.AnchorPoint = Vector2.new(0, 0)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui_upvr
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Title"
TextLabel.Active = false
TextLabel.Selectable = false
TextLabel.Size = UDim2.new(1, 0, 0, 10)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "xescripts"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12
TextLabel.Font = Enum.Font.Code
TextLabel.TextStrokeTransparency = 0.4
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.Parent = Frame
local TextLabel_2_upvr = Instance.new("TextLabel")
TextLabel_2_upvr.Name = "State"
TextLabel_2_upvr.Active = false
TextLabel_2_upvr.Selectable = false
TextLabel_2_upvr.Size = UDim2.new(1, 0, 0, 14)
TextLabel_2_upvr.Position = UDim2.new(0, 0, 0, 13)
TextLabel_2_upvr.BackgroundTransparency = 1
TextLabel_2_upvr.Text = "standing"
TextLabel_2_upvr.TextColor3 = Color3.fromRGB(150, 255, 150)
TextLabel_2_upvr.TextSize = 11
TextLabel_2_upvr.Font = Enum.Font.Code
TextLabel_2_upvr.TextStrokeTransparency = 0.4
TextLabel_2_upvr.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2_upvr.TextXAlignment = Enum.TextXAlignment.Center
TextLabel_2_upvr.Parent = Frame
local tbl_upvr = {
    AIR = {
        name = "in air";
        color = Color3.fromRGB(255, 180, 80);
    };
    STAND = {
        name = "standing";
        color = Color3.fromRGB(150, 255, 150);
    };
    WALK = {
        name = "moving";
        color = Color3.fromRGB(130, 200, 255);
    };
    CROUCH = {
        name = "ducking";
        color = Color3.fromRGB(255, 100, 100);
    };
}
local function isCrouching_upvr(arg1) -- Line 90, Named "isCrouching"
    --[[ Upvalues[1]:
        [1]: tbl_upvr_2 (readonly)
    ]]
    local var33 = arg1
    if var33 then
        var33 = arg1:FindFirstChildOfClass("Humanoid")
    end
    if not var33 then
        return false
    end
    local class_Animator_2 = var33:FindFirstChildOfClass("Animator")
    if not class_Animator_2 then
        return false
    end
    for _, v in pairs(class_Animator_2:GetPlayingAnimationTracks()) do
        local Animation = v.Animation
        if Animation then
            Animation = v.Animation.AnimationId
        end
        if Animation then
            local tonumber_result1_2 = tonumber(Animation:match("%d+"))
            if tonumber_result1_2 and tbl_upvr_2[tonumber_result1_2] then
                return true
            end
        end
    end
    return false
end
local function getPlayerState_upvr(arg1) -- Line 110, Named "getPlayerState"
    --[[ Upvalues[1]:
        [1]: isCrouching_upvr (readonly)
    ]]
    local var40 = arg1
    if var40 then
        var40 = arg1:FindFirstChildOfClass("Humanoid")
    end
    local var41 = arg1
    if var41 then
        var41 = arg1:FindFirstChild("HumanoidRootPart")
    end
    if not var40 or not var41 then
        return "STAND"
    end
    if isCrouching_upvr(arg1) then
        return "CROUCH"
    end
    if var40.FloorMaterial == Enum.Material.Air then
        return "AIR"
    end
    local AssemblyLinearVelocity = var41.AssemblyLinearVelocity
    if 0.5 < math.sqrt(AssemblyLinearVelocity.X ^ 2 + AssemblyLinearVelocity.Z ^ 2) then
        return "WALK"
    end
    return "STAND"
end
local var43_upvw = "STAND"
local TweenInfo_new_result1_upvr = TweenInfo.new(0.08, Enum.EasingStyle.Linear)
local function updateIndicator_upvr(arg1) -- Line 137, Named "updateIndicator"
    --[[ Upvalues[5]:
        [1]: var43_upvw (read and write)
        [2]: tbl_upvr (readonly)
        [3]: TextLabel_2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    if arg1 == var43_upvw then
    else
        var43_upvw = arg1
        local var45 = tbl_upvr[arg1]
        if not var45 then
            var45 = tbl_upvr.STAND
        end
        TextLabel_2_upvr.Text = var45.name
        TweenService_upvr:Create(TextLabel_2_upvr, TweenInfo_new_result1_upvr, {
            TextColor3 = var45.color;
        }):Play()
    end
end
local function setIndicatorEnabled_upvr(arg1, arg2) -- Line 148, Named "setIndicatorEnabled"
    --[[ Upvalues[7]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr_2 (readonly)
        [7]: ScreenGui_upvr (readonly)
    ]]
    var8_upvw = arg1
    local var47
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var47 = udim2_upvr
        return var47
    end
    if not var8_upvw or not INLINED() then
        var47 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr_2, {
        Position = var47;
    }):Play()
    ScreenGui_upvr.Enabled = var8_upvw
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("indicator", var8_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 165
    --[[ Upvalues[2]:
        [1]: setIndicatorEnabled_upvr (readonly)
        [2]: var8_upvw (read and write)
    ]]
    setIndicatorEnabled_upvr(not var8_upvw, true)
end)
if LocalPlayer_upvr.Character then
    ScreenGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 170, Named "onCharacterAdded"
    --[[ Upvalues[2]:
        [1]: ScreenGui_upvr (readonly)
        [2]: LocalPlayer_upvr (readonly)
    ]]
    ScreenGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
end)
game:GetService("RunService").RenderStepped:Connect(function() -- Line 180
    --[[ Upvalues[4]:
        [1]: var8_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: getPlayerState_upvr (readonly)
        [4]: updateIndicator_upvr (readonly)
    ]]
    if not var8_upvw then
    else
        local Character = LocalPlayer_upvr.Character
        if Character then
            updateIndicator_upvr(getPlayerState_upvr(Character))
        end
    end
end)
ScreenGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.indicator = var8_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 199
        --[[ Upvalues[8]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr_2 (readonly)
            [7]: ScreenGui_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "indicator" then
            var8_upvw = arg2
            if not var8_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr_2, {
                Position = udim2_upvr_2;
            }):Play()
            ScreenGui_upvr.Enabled = var8_upvw
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle3.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = indicator
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Enabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded

Function Constants: onCharacterAdded
        1 [string] = PlayerGui
        2 [string] = WaitForChild
        3 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setIndicatorEnabled

Function Upvalues: setIndicatorEnabled

Function Constants: setIndicatorEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Enabled
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = indicator

====================================================================================================

Function Dump: updateIndicator

Function Upvalues: updateIndicator

Function Constants: updateIndicator
        1 [string] = STAND
        2 [string] = name
        3 [string] = Text
        4 [string] = TextColor3
        6 [string] = color
        7 [string] = Create
        8 [string] = Play

====================================================================================================

Function Dump: getPlayerState

Function Upvalues: getPlayerState

Function Constants: getPlayerState
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = HumanoidRootPart
        4 [string] = FindFirstChild
        5 [string] = STAND
        6 [string] = CROUCH
        7 [string] = FloorMaterial
        8 [string] = Enum
        9 [string] = Material
        10 [string] = Air
        12 [string] = AIR
        13 [string] = AssemblyLinearVelocity
        14 [number] = 2
        15 [string] = X
        16 [string] = Z
        17 [string] = math
        18 [string] = sqrt
        20 [number] = 0.5
        21 [string] = WALK

====================================================================================================

Function Dump: isCrouching

Function Upvalues: isCrouching

Function Constants: isCrouching
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = Animator
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = Animation
        8 [string] = AnimationId
        9 [string] = %d+
        10 [string] = match
        11 [string] = tonumber

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = XEIndicator
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = indicator
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Enabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = quit_xyz
        3 [function] = getPlayerState
        4 [function] = updateIndicator

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setIndicatorEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: getPlayerState

Function Upvalues: getPlayerState
        1 [function] = isCrouching

Function Constants: getPlayerState
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = HumanoidRootPart
        4 [string] = FindFirstChild
        5 [string] = STAND
        6 [string] = CROUCH
        7 [string] = FloorMaterial
        8 [string] = Enum
        9 [string] = Material
        10 [string] = Air
        11 [EnumItem] = Enum.Material.Air
        12 [string] = AIR
        13 [string] = AssemblyLinearVelocity
        14 [number] = 2
        15 [string] = X
        16 [string] = Z
        17 [string] = math
        18 [string] = sqrt
        20 [number] = 0.5
        21 [string] = WALK

====================================================================================================

Function Dump: isCrouching

Function Upvalues: isCrouching
        1 [table]:
        1 [table] table: 0x3f19d763c07d4bc5
                1 [boolean] = true
                2 [boolean] = true

Function Constants: isCrouching
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = Animator
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = Animation
        8 [string] = AnimationId
        9 [string] = %d+
        10 [string] = match
        11 [string] = tonumber

====================================================================================================

Function Dump: setIndicatorEnabled

Function Upvalues: setIndicatorEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = XEIndicator

Function Constants: setIndicatorEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Enabled
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = indicator

====================================================================================================

Function Dump: updateIndicator

Function Upvalues: updateIndicator
        1 [string] = STAND
        2 [table]:
        2 [table] table: 0x88cbe11154c8c415
                1 [table]:
                CROUCH [table] table: 0x3db3e0db2407d0d5
                        1 [string] = ducking
                        2 [Color3] = 1, 0.392157, 0.392157
                2 [table]:
                STAND [table] table: 0x556fc0bc04264a75
                        1 [string] = standing
                        2 [Color3] = 0.588235, 1, 0.588235
                3 [table]:
                AIR [table] table: 0x26bdf34e68ccc325
                        1 [string] = in air
                        2 [Color3] = 1, 0.705882, 0.313726
                4 [table]:
                WALK [table] table: 0xcdddf0aa901f5485
                        1 [string] = moving
                        2 [Color3] = 0.509804, 0.784314, 1
        3 [Instance] = State
        4 [Instance] = TweenService
        5 [TweenInfo] = Time:0.08 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Linear

Function Constants: updateIndicator
        1 [string] = STAND
        2 [string] = name
        3 [string] = Text
        4 [string] = TextColor3
        6 [string] = color
        7 [string] = Create
        8 [string] = Play

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded
        1 [Instance] = XEIndicator
        2 [Instance] = quit_xyz

Function Constants: onCharacterAdded
        1 [string] = PlayerGui
        2 [string] = WaitForChild
        3 [string] = Parent

====================================================================================================
]]
