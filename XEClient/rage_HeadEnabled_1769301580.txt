-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:39:34
-- Luau version 6, Types version 3
-- Time taken: 0.003092 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local Head_upvr = script.Parent.Parent.Parent.Parent.Parent.Head
local function setHeadEnabled_upvr(arg1, arg2) -- Line 9, Named "setHeadEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: Head_upvr (readonly)
    ]]
    var1_upvw = arg1
    local var5
    if var1_upvw then
        var5 = 0.8
    else
        var5 = 1
    end
    TweenService_upvr:Create(Parent_upvr, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = var5;
    }):Play()
    if Head_upvr then
        Head_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("HeadEnabled", var1_upvw)
    end
end
script.Parent.MouseButton1Click:Connect(function() -- Line 30
    --[[ Upvalues[2]:
        [1]: setHeadEnabled_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    setHeadEnabled_upvr(not var1_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.HeadEnabled = var1_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 44
        --[[ Upvalues[2]:
            [1]: setHeadEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "HeadEnabled" then
            setHeadEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = HeadEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setHeadEnabled

Function Upvalues: setHeadEnabled

Function Constants: setHeadEnabled
        1 [number] = 0.8
        2 [string] = TweenInfo
        3 [string] = new
        5 [number] = 0.2
        6 [string] = Enum
        7 [string] = EasingStyle
        8 [string] = Quad
        10 [string] = EasingDirection
        11 [string] = Out
        13 [string] = BackgroundTransparency
        15 [string] = Create
        16 [string] = Play
        17 [string] = Value
        18 [string] = _G
        20 [string] = ConfigSystem
        21 [string] = onSettingChanged
        22 [string] = HeadEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setHeadEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setHeadEnabled

Function Upvalues: setHeadEnabled
        1 [boolean] = false
        2 [Instance] = TweenService
        3 [Instance] = TextButton
        4 [Instance] = Head

Function Constants: setHeadEnabled
        1 [number] = 0.8
        2 [string] = TweenInfo
        3 [string] = new
        5 [number] = 0.2
        6 [string] = Enum
        7 [string] = EasingStyle
        8 [string] = Quad
        9 [EnumItem] = Enum.EasingStyle.Quad
        10 [string] = EasingDirection
        11 [string] = Out
        12 [EnumItem] = Enum.EasingDirection.Out
        13 [string] = BackgroundTransparency
        15 [string] = Create
        16 [string] = Play
        17 [string] = Value
        18 [string] = _G
        20 [string] = ConfigSystem
        21 [string] = onSettingChanged
        22 [string] = HeadEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setHeadEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = HeadEnabled

====================================================================================================
]]
