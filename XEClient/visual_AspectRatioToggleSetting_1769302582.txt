-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle1.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:56:20
-- Luau version 6, Types version 3
-- Time taken: 0.011097 seconds

local Frame2_upvr = script.Parent.Frame2
local AspectRatio_upvr = script.Parent.Parent.AspectRatio
local var3_upvw = false
local var4_upvw = 1
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local function setToggleEnabled_upvr(arg1, arg2) -- Line 25, Named "setToggleEnabled"
    --[[ Upvalues[7]:
        [1]: var3_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: AspectRatio_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    var3_upvw = arg1
    local var9
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var9 = udim2_upvr
        return var9
    end
    if not var3_upvw or not INLINED() then
        var9 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var9;
    }):Play()
    if var3_upvw then
    else
    end
    TweenService_upvr:Create(AspectRatio_upvr, TweenInfo.new(0.35, Enum.EasingStyle.Quad), {
        Value = 1;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AspectRatioToggleSetting", var3_upvw)
    end
end
AspectRatio_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 43
    --[[ Upvalues[2]:
        [1]: var4_upvw (read and write)
        [2]: AspectRatio_upvr (readonly)
    ]]
    var4_upvw = AspectRatio_upvr.Value
end)
local var14_upvw = 1
local CurrentCamera_upvr = workspace.CurrentCamera
game:GetService("RunService").RenderStepped:Connect(function() -- Line 48
    --[[ Upvalues[4]:
        [1]: var3_upvw (read and write)
        [2]: var14_upvw (read and write)
        [3]: var4_upvw (read and write)
        [4]: CurrentCamera_upvr (readonly)
    ]]
    if var3_upvw then
        var14_upvw += (var4_upvw - var14_upvw) * 0.12
        CurrentCamera_upvr.CFrame *= CFrame.new(0, 0, 0, 1, 0, 0, 0, var14_upvw, 0, 0, 0, 1)
    end
end)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 56
    --[[ Upvalues[2]:
        [1]: Frame2_upvr (readonly)
        [2]: setToggleEnabled_upvr (readonly)
    ]]
    local var17
    if 0.1 >= Frame2_upvr.Position.X.Scale then
        var17 = false
    else
        var17 = true
    end
    setToggleEnabled_upvr(not var17, true)
end)
;(function() -- Line 62, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: var3_upvw (read and write)
        [2]: setToggleEnabled_upvr (readonly)
        [3]: AspectRatio_upvr (readonly)
    ]]
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.AspectRatioToggleSetting = var3_upvw
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 71
            --[[ Upvalues[2]:
                [1]: setToggleEnabled_upvr (copied, readonly)
                [2]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "AspectRatioToggleSetting" then
                setToggleEnabled_upvr(arg2, false)
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.AspectRatioToggleSetting ~= nil then
            local AspectRatioToggleSetting = _G.ConfigSystem.settings.AspectRatioToggleSetting
            setToggleEnabled_upvr(AspectRatioToggleSetting, false)
            if AspectRatioToggleSetting then
                AspectRatio_upvr.Value = 0.8
                return
            end
            AspectRatio_upvr.Value = 1
        end
    end
end)()

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle1.LocalScript

--[[
Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [string] = AspectRatioToggleSetting
        9 [string] = onConfigLoad
        10 [number] = 0.8
        11 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = X
        3 [string] = Scale
        4 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 0.12
        2 [string] = CFrame
        3 [string] = new

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.8
        6 [string] = TweenInfo
        7 [string] = new
        9 [number] = 0.35
        10 [string] = Enum
        11 [string] = EasingStyle
        12 [string] = Quad
        14 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = AspectRatioToggleSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggleEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AspectRatioToggleSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = 1
        3 [number] = 1
        4 [Instance] = Camera

Function Constants: Unknown Name
        1 [number] = 0.12
        2 [string] = CFrame
        3 [string] = new

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 1
        2 [Instance] = AspectRatio

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = AspectRatio

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.8
        6 [string] = TweenInfo
        7 [string] = new
        9 [number] = 0.35
        10 [string] = Enum
        11 [string] = EasingStyle
        12 [string] = Quad
        13 [EnumItem] = Enum.EasingStyle.Quad
        14 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = AspectRatioToggleSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [function] = setToggleEnabled

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = X
        3 [string] = Scale
        4 [number] = 0.1

====================================================================================================
]]
