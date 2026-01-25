-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton1.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:39:45
-- Luau version 6, Types version 3
-- Time taken: 0.004292 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local Torso_upvr = script.Parent.Parent.Parent.Parent.Parent.Torso
local function setToggleEnabled_upvr(arg1, arg2) -- Line 13, Named "setToggleEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: Torso_upvr (readonly)
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
    if Torso_upvr then
        Torso_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("TorsoSetting", var1_upvw)
    end
end
script.Parent.MouseButton1Click:Connect(function() -- Line 34
    --[[ Upvalues[2]:
        [1]: setToggleEnabled_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    setToggleEnabled_upvr(not var1_upvw, true)
end)
;(function() -- Line 39, Named "initializeWithConfig"
    --[[ Upvalues[2]:
        [1]: var1_upvw (read and write)
        [2]: setToggleEnabled_upvr (readonly)
    ]]
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.TorsoSetting = var1_upvw
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 48
            --[[ Upvalues[2]:
                [1]: setToggleEnabled_upvr (copied, readonly)
                [2]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "TorsoSetting" then
                setToggleEnabled_upvr(arg2, false)
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.TorsoSetting ~= nil then
            setToggleEnabled_upvr(_G.ConfigSystem.settings.TorsoSetting, false)
        end
    end
end)()

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton1.LocalScript

--[[
Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [string] = TorsoSetting
        9 [string] = onConfigLoad

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled

Function Constants: setToggleEnabled
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
        22 [string] = TorsoSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggleEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = TorsoSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggleEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled
        1 [boolean] = false
        2 [Instance] = TweenService
        3 [Instance] = TextButton1
        4 [Instance] = Torso

Function Constants: setToggleEnabled
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
        22 [string] = TorsoSetting

====================================================================================================
]]
