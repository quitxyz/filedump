-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:48:06
-- Luau version 6, Types version 3
-- Time taken: 0.016961 seconds 

local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local TextButton_upvr = script.Parent.TextButton
local Frame2_upvr = script.Parent.Frame2
local aahelp1_upvr = game:GetService("ReplicatedStorage"):WaitForChild("aahelp1")
local var6_upvw = false
local down_upvr = script.Parent.Parent:FindFirstChild("down")
local up_upvr = script.Parent.Parent:FindFirstChild("up")
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(200, 50, 50)
TextButton_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
local var10_upvw = false
local function applyAntiAimToServer_upvr() -- Line 35, Named "applyAntiAimToServer"
    --[[ Upvalues[4]:
        [1]: var6_upvw (read and write)
        [2]: down_upvr (readonly)
        [3]: up_upvr (readonly)
        [4]: aahelp1_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local var11
    if not var11 then
    else
        var11 = down_upvr
        if var11 then
            var11 = down_upvr.Value
        end
        if up_upvr then
        end
        if var11 and not up_upvr.Value then
            aahelp1_upvr:FireServer("apply", -70, 70)
            return
        end
        -- KONSTANTERROR: Expression was reused, decompilation is incorrect
        if up_upvr.Value and not var11 then
            aahelp1_upvr:FireServer("apply", 70, -70)
            return
        end
        aahelp1_upvr:FireServer("reset")
    end
end
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(50, 200, 100)
local function setAntiAimEnabled_upvr(arg1, arg2) -- Line 51, Named "setAntiAimEnabled"
    --[[ Upvalues[11]:
        [1]: var6_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: TextButton_upvr (readonly)
        [8]: Color3_fromRGB_result1_upvr (readonly)
        [9]: Color3_fromRGB_result1_upvr_2 (readonly)
        [10]: aahelp1_upvr (readonly)
        [11]: applyAntiAimToServer_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    var6_upvw = arg1
    local var17
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var17 = udim2_upvr
        return var17
    end
    if not var6_upvw or not INLINED() then
        var17 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var17;
    }):Play()
    if not var6_upvw or not Color3_fromRGB_result1_upvr then
    end
    TextButton_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
    if var6_upvw then
        aahelp1_upvr:FireServer("enable")
        applyAntiAimToServer_upvr()
    else
        aahelp1_upvr:FireServer("disable")
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AntiAim", var6_upvw)
    end
end
TextButton_upvr.MouseButton1Click:Connect(function() -- Line 71
    --[[ Upvalues[2]:
        [1]: setAntiAimEnabled_upvr (readonly)
        [2]: var6_upvw (read and write)
    ]]
    setAntiAimEnabled_upvr(not var6_upvw, true)
end)
local function _(arg1) -- Line 75, Named "setupCharacter"
    --[[ Upvalues[1]:
        [1]: var10_upvw (read and write)
    ]]
    arg1:WaitForChild("UpperTorso")
    arg1:WaitForChild("Humanoid").Died:Connect(function() -- Line 80
        --[[ Upvalues[1]:
            [1]: var10_upvw (copied, read and write)
        ]]
        var10_upvw = true
    end)
end
if LocalPlayer_upvr.Character then
    local Character_2 = LocalPlayer_upvr.Character
    Character_2:WaitForChild("UpperTorso")
    Character_2:WaitForChild("Humanoid").Died:Connect(function() -- Line 80
        --[[ Upvalues[1]:
            [1]: var10_upvw (read and write)
        ]]
        var10_upvw = true
    end)
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 90
    --[[ Upvalues[4]:
        [1]: var10_upvw (read and write)
        [2]: var6_upvw (read and write)
        [3]: aahelp1_upvr (readonly)
        [4]: applyAntiAimToServer_upvr (readonly)
    ]]
    var10_upvw = true
    arg1:WaitForChild("UpperTorso")
    arg1:WaitForChild("Humanoid").Died:Connect(function() -- Line 80
        --[[ Upvalues[1]:
            [1]: var10_upvw (copied, read and write)
        ]]
        var10_upvw = true
    end)
    task.wait(0.1)
    if var6_upvw then
        aahelp1_upvr:FireServer("enable")
        applyAntiAimToServer_upvr()
    end
    task.wait(0.1)
    var10_upvw = false
end)
if down_upvr then
    down_upvr.Changed:Connect(function() -- Line 104
        --[[ Upvalues[4]:
            [1]: LocalPlayer_upvr (readonly)
            [2]: var6_upvw (read and write)
            [3]: var10_upvw (read and write)
            [4]: applyAntiAimToServer_upvr (readonly)
        ]]
        if LocalPlayer_upvr.Character and var6_upvw and not var10_upvw then
            applyAntiAimToServer_upvr()
        end
    end)
end
if up_upvr then
    up_upvr.Changed:Connect(function() -- Line 112
        --[[ Upvalues[4]:
            [1]: LocalPlayer_upvr (readonly)
            [2]: var6_upvw (read and write)
            [3]: var10_upvw (read and write)
            [4]: applyAntiAimToServer_upvr (readonly)
        ]]
        if LocalPlayer_upvr.Character and var6_upvw and not var10_upvw then
            applyAntiAimToServer_upvr()
        end
    end)
end
local localview_upvr = script.Parent.Parent:FindFirstChild("localview")
local attargets_upvr = script.Parent.Parent:FindFirstChild("attargets")
local spinbott_upvr = script.Parent.Parent:FindFirstChild("spinbott")
local spinbotangle_upvr = script.Parent.Parent:FindFirstChild("spinbotangle")
local Workspace_upvr = game:GetService("Workspace")
game:GetService("RunService").RenderStepped:Connect(function() -- Line 122
    --[[ Upvalues[10]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var6_upvw (read and write)
        [3]: var10_upvw (read and write)
        [4]: applyAntiAimToServer_upvr (readonly)
        [5]: localview_upvr (readonly)
        [6]: attargets_upvr (readonly)
        [7]: spinbott_upvr (readonly)
        [8]: spinbotangle_upvr (readonly)
        [9]: Workspace_upvr (readonly)
        [10]: Players_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local Character = LocalPlayer_upvr.Character
    local var42
    if not Character or not Character:FindFirstChild("HumanoidRootPart") then
    else
        local HumanoidRootPart = Character.HumanoidRootPart
        local Position = HumanoidRootPart.Position
        if var6_upvw and not var10_upvw then
            applyAntiAimToServer_upvr()
        end
        local var45 = localview_upvr
        if var45 then
            var45 = localview_upvr.Value
        end
        local var46 = attargets_upvr
        if var46 then
            var42 = attargets_upvr
            var46 = var42.Value
        end
        var42 = spinbott_upvr
        if var42 then
            var42 = spinbott_upvr.Value
        end
        if not spinbotangle_upvr or not spinbotangle_upvr.Value then
        end
        if var45 then
            local LookVector = Workspace_upvr.CurrentCamera.CFrame.LookVector
            local _ = CFrame.lookAt(Position, Position - Vector3.new(LookVector.X, 0, LookVector.Z).Unit)
        elseif var46 then
            local var52
            for i, v in ipairs(Players_upvr:GetPlayers()) do
                if v ~= LocalPlayer_upvr and v.Team ~= LocalPlayer_upvr.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and (v.Character.HumanoidRootPart.Position - Position).Magnitude <= 120 then
                    var52 = v
                end
            end
            if var52 and var52.Character then
                local Position_2 = var52.Character.HumanoidRootPart.Position
                i = Position.Y
                v = Position_2.Z
                i = Position
                v = (Position) - (Vector3.new(Position_2.X, i, v) - Position)
            elseif var42 then
                v = 20
                i = math.rad(v)
                v = 0
                -- KONSTANTWARNING: GOTO [172] #127
            end
        elseif var42 then
            var52 = HumanoidRootPart.CFrame
        end
        if var52 * CFrame.Angles(0, math.rad(20), 0) then
            -- KONSTANTERROR: Expression was reused, decompilation is incorrect
            var52 = CFrame.new(Position) * (var52 * CFrame.Angles(0, math.rad(20), 0)).Rotation
            HumanoidRootPart.CFrame = var52
        end
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AntiAim = var6_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 205
        --[[ Upvalues[2]:
            [1]: setAntiAimEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AntiAim" then
            setAntiAimEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Position
        5 [string] = Value
        6 [string] = CurrentCamera
        7 [string] = CFrame
        8 [string] = LookVector
        9 [string] = X
        10 [string] = Z
        11 [string] = Vector3
        12 [string] = new
        14 [string] = Unit
        15 [string] = lookAt
        17 [string] = ipairs
        19 [string] = GetPlayers
        20 [string] = Team
        21 [string] = Magnitude
        22 [string] = Y
        23 [string] = Angles
        25 [string] = math
        26 [string] = rad
        29 [string] = Rotation

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = UpperTorso
        4 [string] = Died
        5 [string] = Connect
        6 [string] = task
        7 [string] = wait
        9 [number] = 0.1
        10 [string] = enable
        11 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setupCharacter

Function Upvalues: setupCharacter

Function Constants: setupCharacter
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = UpperTorso
        4 [string] = Died
        5 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAntiAimEnabled

Function Upvalues: setAntiAimEnabled

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = BackgroundColor3
        6 [string] = enable
        7 [string] = FireServer
        8 [string] = disable
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = AntiAim

====================================================================================================

Function Dump: applyAntiAimToServer

Function Upvalues: applyAntiAimToServer

Function Constants: applyAntiAimToServer
        1 [string] = Value
        2 [string] = apply
        3 [string] = FireServer
        4 [string] = reset

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [boolean] = false
        3 [boolean] = false
        4 [function] = applyAntiAimToServer

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [boolean] = false
        3 [boolean] = false
        4 [function] = applyAntiAimToServer

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [boolean] = false
        3 [Instance] = aahelp1
        4 [function] = applyAntiAimToServer

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = UpperTorso
        4 [string] = Died
        5 [string] = Connect
        6 [string] = task
        7 [string] = wait
        9 [number] = 0.1
        10 [string] = enable
        11 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAntiAimEnabled

Function Upvalues: setAntiAimEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = TextButton
        8 [Color3] = 0.196078, 0.784314, 0.392157
        9 [Color3] = 0.784314, 0.196078, 0.196078
        10 [Instance] = aahelp1
        11 [function] = applyAntiAimToServer

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = BackgroundColor3
        6 [string] = enable
        7 [string] = FireServer
        8 [string] = disable
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = AntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [boolean] = false
        3 [boolean] = false
        4 [function] = applyAntiAimToServer
        5 [Instance] = localview
        6 [Instance] = attargets
        7 [Instance] = spinbott
        8 [Instance] = spinbotangle
        9 [Instance] = Workspace
        10 [Instance] = Players

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Position
        5 [string] = Value
        6 [string] = CurrentCamera
        7 [string] = CFrame
        8 [string] = LookVector
        9 [string] = X
        10 [string] = Z
        11 [string] = Vector3
        12 [string] = new
        14 [string] = Unit
        15 [string] = lookAt
        17 [string] = ipairs
        19 [string] = GetPlayers
        20 [string] = Team
        21 [string] = Magnitude
        22 [string] = Y
        23 [string] = Angles
        25 [string] = math
        26 [string] = rad
        29 [string] = Rotation

====================================================================================================

Function Dump: applyAntiAimToServer

Function Upvalues: applyAntiAimToServer
        1 [boolean] = false
        2 [Instance] = down
        3 [Instance] = up
        4 [Instance] = aahelp1

Function Constants: applyAntiAimToServer
        1 [string] = Value
        2 [string] = apply
        3 [string] = FireServer
        4 [string] = reset

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AntiAim

====================================================================================================
]]
