-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame5.toggle.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:54:36
-- Luau version 6, Types version 3
-- Time taken: 0.007816 seconds

local Frame2_upvr = script.Parent.Frame2
local var2_upvw = false
local function _() -- Line 15, Named "getOrCreateBlur"
    if not game.Lighting:FindFirstChild("blurclient1111") then
        local BlurEffect_2 = Instance.new("BlurEffect")
        BlurEffect_2.Name = "blurclient1111"
        BlurEffect_2.Size = 0
        BlurEffect_2.Parent = game.Lighting
    end
    return BlurEffect_2
end
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local function setAvailableEspEnabled_upvr(arg1, arg2) -- Line 27, Named "setAvailableEspEnabled"
    --[[ Upvalues[6]:
        [1]: var2_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var2_upvw = arg1
    local var15
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var15 = udim2_upvr_2
        return var15
    end
    if not var2_upvw or not INLINED_2() then
        var15 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var15;
    }):Play()
    if not game.Lighting:FindFirstChild("blurclient1111") then
        local BlurEffect_3 = Instance.new("BlurEffect")
        BlurEffect_3.Name = "blurclient1111"
        BlurEffect_3.Size = 0
        BlurEffect_3.Parent = game.Lighting
    end
    local var18 = BlurEffect_3
    local var19
    if var18 then
        if var2_upvw then
            var19 = 12
        else
            var19 = 0
        end
        TweenService_upvr:Create(var18, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = var19;
        }):Play()
    end
    if arg2 then
        var19 = _G.ConfigSystem
        if var19 then
            var19 = pcall
            var19(function() -- Line 46
                --[[ Upvalues[1]:
                    [1]: var2_upvw (copied, read and write)
                ]]
                _G.ConfigSystem.onSettingChanged("Blur", var2_upvw)
            end)
        end
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 53
    --[[ Upvalues[2]:
        [1]: setAvailableEspEnabled_upvr (readonly)
        [2]: var2_upvw (read and write)
    ]]
    setAvailableEspEnabled_upvr(not var2_upvw, true)
end)
local function _() -- Line 59, Named "watchVisibility"
    --[[ Upvalues[2]:
        [1]: var2_upvw (read and write)
        [2]: setAvailableEspEnabled_upvr (readonly)
    ]]
    local Parent_upvr = script.Parent.Parent.Parent.Parent.Parent.Parent
    Parent_upvr:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 63
        --[[ Upvalues[3]:
            [1]: Parent_upvr (readonly)
            [2]: var2_upvw (copied, read and write)
            [3]: setAvailableEspEnabled_upvr (copied, readonly)
        ]]
        if not Parent_upvr.Visible and var2_upvw then
            setAvailableEspEnabled_upvr(false, false)
        end
    end)
end
local Parent_upvr_2 = script.Parent.Parent.Parent.Parent.Parent.Parent
Parent_upvr_2:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 63
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: var2_upvw (read and write)
        [3]: setAvailableEspEnabled_upvr (readonly)
    ]]
    if not Parent_upvr_2.Visible and var2_upvw then
        setAvailableEspEnabled_upvr(false, false)
    end
end)
Parent_upvr_2 = task.wait
Parent_upvr_2(1)
Parent_upvr_2 = _G.ConfigSystem
if Parent_upvr_2 then
    Parent_upvr_2 = _G.ConfigSystem.settings
    Parent_upvr_2.Blur = var2_upvw
    Parent_upvr_2 = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 83
        --[[ Upvalues[2]:
            [1]: setAvailableEspEnabled_upvr (readonly)
            [2]: Parent_upvr_2 (readonly)
        ]]
        if arg1 == "Blur" then
            setAvailableEspEnabled_upvr(arg2, false)
        end
        if Parent_upvr_2 then
            Parent_upvr_2(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame5.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Blur

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Visible

====================================================================================================

Function Dump: watchVisibility

Function Upvalues: watchVisibility

Function Constants: watchVisibility
        1 [string] = script
        3 [string] = Parent
        4 [string] = Visible
        5 [string] = GetPropertyChangedSignal
        6 [string] = Connect

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
        5 [string] = game
        7 [string] = Lighting
        8 [string] = blurclient1111
        9 [string] = FindFirstChild
        10 [string] = Instance
        11 [string] = new
        13 [string] = BlurEffect
        14 [string] = Name
        15 [string] = Size
        16 [string] = Parent
        17 [string] = TweenInfo
        19 [number] = 0.5
        20 [string] = Enum
        21 [string] = EasingStyle
        22 [string] = Quad
        24 [string] = EasingDirection
        25 [string] = Out
        28 [string] = _G
        30 [string] = ConfigSystem
        31 [string] = pcall

====================================================================================================

Function Dump: getOrCreateBlur

Function Upvalues: getOrCreateBlur

Function Constants: getOrCreateBlur
        1 [string] = game
        3 [string] = Lighting
        4 [string] = blurclient1111
        5 [string] = FindFirstChild
        6 [string] = Instance
        7 [string] = new
        9 [string] = BlurEffect
        10 [string] = Name
        11 [string] = Size
        12 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAvailableEspEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame
        2 [boolean] = false
        3 [function] = setAvailableEspEnabled

Function Constants: Unknown Name
        1 [string] = Visible

====================================================================================================

Function Dump: setAvailableEspEnabled

Function Upvalues: setAvailableEspEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setAvailableEspEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = game
        6 [Instance] = Ugc
        7 [string] = Lighting
        8 [string] = blurclient1111
        9 [string] = FindFirstChild
        10 [string] = Instance
        11 [string] = new
        13 [string] = BlurEffect
        14 [string] = Name
        15 [string] = Size
        16 [string] = Parent
        17 [string] = TweenInfo
        19 [number] = 0.5
        20 [string] = Enum
        21 [string] = EasingStyle
        22 [string] = Quad
        23 [EnumItem] = Enum.EasingStyle.Quad
        24 [string] = EasingDirection
        25 [string] = Out
        26 [EnumItem] = Enum.EasingDirection.Out
        28 [string] = _G
        30 [string] = ConfigSystem
        31 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAvailableEspEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = Blur

====================================================================================================
]]
