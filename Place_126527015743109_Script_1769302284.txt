-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.7s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.008799 seconds

local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local Parent = script.Parent.Parent
local spin = Parent:WaitForChild("spin")
local visibleb_upvr = Parent:WaitForChild("visibleb")
local ImageLabel_upvr = script.Parent.Parent.Parent.Parent.Parent.Parent.Parent.storage.ImageLabel
ImageLabel_upvr.Visible = false
ImageLabel_upvr.ImageTransparency = 1
ImageLabel_upvr.Rotation = 0
local var12_upvw = false
local var13_upvw
local function _() -- Line 39, Named "startSpin"
    --[[ Upvalues[4]:
        [1]: var12_upvw (read and write)
        [2]: var13_upvw (read and write)
        [3]: RunService_upvr (readonly)
        [4]: ImageLabel_upvr (readonly)
    ]]
    if var12_upvw then
    else
        var12_upvw = true
        var13_upvw = RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 43
            --[[ Upvalues[1]:
                [1]: ImageLabel_upvr (copied, readonly)
            ]]
            ImageLabel_upvr.Rotation = (ImageLabel_upvr.Rotation + 180 * arg1) % 360
        end)
    end
end
local function stopSpin_upvr() -- Line 48, Named "stopSpin"
    --[[ Upvalues[4]:
        [1]: var12_upvw (read and write)
        [2]: var13_upvw (read and write)
        [3]: TweenService_upvr (readonly)
        [4]: ImageLabel_upvr (readonly)
    ]]
    var12_upvw = false
    if var13_upvw then
        var13_upvw:Disconnect()
        var13_upvw = nil
    end
    TweenService_upvr:Create(ImageLabel_upvr, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Rotation = 0;
    }):Play()
end
spin.Changed:Connect(function(arg1) -- Line 64
    --[[ Upvalues[5]:
        [1]: var12_upvw (read and write)
        [2]: var13_upvw (read and write)
        [3]: RunService_upvr (readonly)
        [4]: ImageLabel_upvr (readonly)
        [5]: stopSpin_upvr (readonly)
    ]]
    if arg1 then
        if var12_upvw then
        else
            var12_upvw = true
            var13_upvw = RunService_upvr.RenderStepped:Connect(function(arg1_2) -- Line 43
                --[[ Upvalues[1]:
                    [1]: ImageLabel_upvr (copied, readonly)
                ]]
                ImageLabel_upvr.Rotation = (ImageLabel_upvr.Rotation + 180 * arg1_2) % 360
            end)
        end
    end
    stopSpin_upvr()
end)
visibleb_upvr.Changed:Connect(function() -- Line 75, Named "applyVisibilityOverride"
    --[[ Upvalues[2]:
        [1]: visibleb_upvr (readonly)
        [2]: ImageLabel_upvr (readonly)
    ]]
    if visibleb_upvr.Value then
        ImageLabel_upvr.Visible = true
        ImageLabel_upvr.ImageTransparency = 0
    end
end)
local function setEnabled_upvr(arg1, arg2) -- Line 87, Named "setEnabled"
    --[[ Upvalues[6]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr_2 (readonly)
    ]]
    var7_upvw = arg1
    local var18
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var18 = udim2_upvr_2
        return var18
    end
    if not var7_upvw or not INLINED() then
        var18 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr_2, {
        Position = var18;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("ImageToggle", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 97
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setEnabled_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.ImageToggle = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 109
        --[[ Upvalues[7]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr_2 (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "ImageToggle" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr_2, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
onConfigLoad_upvr = game:GetService("ReplicatedStorage").sf.OnClientEvent
local TweenInfo_new_result1_upvr_3 = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local TweenInfo_new_result1_upvr = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
onConfigLoad_upvr = onConfigLoad_upvr:Connect
onConfigLoad_upvr(function() -- Line 122
    --[[ Upvalues[6]:
        [1]: var7_upvw (read and write)
        [2]: visibleb_upvr (readonly)
        [3]: ImageLabel_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr_3 (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    if not var7_upvw then
    else
        if visibleb_upvr.Value then
            ImageLabel_upvr.Visible = true
            ImageLabel_upvr.ImageTransparency = 0
            return
        end
        ImageLabel_upvr.Visible = true
        ImageLabel_upvr.ImageTransparency = 1
        TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr_3, {
            ImageTransparency = 0;
        }):Play()
        task.wait(0.44)
        local any_Create_result1 = TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr, {
            ImageTransparency = 1;
        })
        any_Create_result1:Play()
        any_Create_result1.Completed:Wait()
        ImageLabel_upvr.Visible = false
    end
end)
onConfigLoad_upvr = visibleb_upvr.Value
if onConfigLoad_upvr then
    onConfigLoad_upvr = true
    ImageLabel_upvr.Visible = onConfigLoad_upvr
    onConfigLoad_upvr = 0
    ImageLabel_upvr.ImageTransparency = onConfigLoad_upvr
end
onConfigLoad_upvr = spin.Value
if onConfigLoad_upvr then
    if var12_upvw then
    else
        var12_upvw = true
        onConfigLoad_upvr = RunService_upvr.RenderStepped
        onConfigLoad_upvr = onConfigLoad_upvr:Connect(function(arg1) -- Line 43
            --[[ Upvalues[1]:
                [1]: ImageLabel_upvr (readonly)
            ]]
            ImageLabel_upvr.Rotation = (ImageLabel_upvr.Rotation + 180 * arg1) % 360
        end)
        var13_upvw = onConfigLoad_upvr
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 360
        2 [string] = Rotation

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 360
        2 [string] = Rotation

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 360
        2 [string] = Rotation

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value
        2 [string] = Visible
        3 [string] = ImageTransparency
        5 [string] = Create
        6 [string] = Play
        7 [string] = task
        8 [string] = wait
        10 [number] = 0.44
        11 [string] = Completed
        12 [string] = Wait

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = ImageToggle
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
        9 [string] = ImageToggle

====================================================================================================

Function Dump: applyVisibilityOverride

Function Upvalues: applyVisibilityOverride

Function Constants: applyVisibilityOverride
        1 [string] = Value
        2 [string] = Visible
        3 [string] = ImageTransparency

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = RenderStepped
        3 [string] = Connect

====================================================================================================

Function Dump: stopSpin

Function Upvalues: stopSpin

Function Constants: stopSpin
        1 [string] = Disconnect
        2 [string] = TweenInfo
        3 [string] = new
        5 [number] = 0.25
        6 [string] = Enum
        7 [string] = EasingStyle
        8 [string] = Quad
        10 [string] = EasingDirection
        11 [string] = Out
        13 [string] = Rotation
        15 [string] = Create
        16 [string] = Play

====================================================================================================

Function Dump: startSpin

Function Upvalues: startSpin

Function Constants: startSpin
        1 [string] = RenderStepped
        3 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = visibleb
        3 [Instance] = ImageLabel
        4 [Instance] = TweenService
        5 [TweenInfo] = Time:0.3 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quad
        6 [TweenInfo] = Time:0.3 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:In EasingStyle:Quad

Function Constants: Unknown Name
        1 [string] = Value
        2 [string] = Visible
        3 [string] = ImageTransparency
        5 [string] = Create
        6 [string] = Play
        7 [string] = task
        8 [string] = wait
        10 [number] = 0.44
        11 [string] = Completed
        12 [string] = Wait

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
        1 [string] = ImageToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [boolean] = false

Function Constants: Unknown Name

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
        9 [string] = ImageToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 360
        2 [string] = Rotation

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        3 [Instance] = Run Service
        4 [Instance] = ImageLabel
        5 [function] = stopSpin

Function Constants: Unknown Name
        1 [string] = RenderStepped
        3 [string] = Connect

====================================================================================================

Function Dump: stopSpin

Function Upvalues: stopSpin
        1 [boolean] = false
        3 [Instance] = TweenService
        4 [Instance] = ImageLabel

Function Constants: stopSpin
        1 [string] = Disconnect
        2 [string] = TweenInfo
        3 [string] = new
        5 [number] = 0.25
        6 [string] = Enum
        7 [string] = EasingStyle
        8 [string] = Quad
        9 [EnumItem] = Enum.EasingStyle.Quad
        10 [string] = EasingDirection
        11 [string] = Out
        12 [EnumItem] = Enum.EasingDirection.Out
        13 [string] = Rotation
        15 [string] = Create
        16 [string] = Play

====================================================================================================

Function Dump: applyVisibilityOverride

Function Upvalues: applyVisibilityOverride
        1 [Instance] = visibleb
        2 [Instance] = ImageLabel

Function Constants: applyVisibilityOverride
        1 [string] = Value
        2 [string] = Visible
        3 [string] = ImageTransparency

====================================================================================================
]]
