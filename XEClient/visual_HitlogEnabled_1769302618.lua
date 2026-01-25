-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle4.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:56:56
-- Luau version 6, Types version 3
-- Time taken: 0.014499 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var6_upvw = false
local function setHitlogEnabled_upvr(arg1, arg2) -- Line 20, Named "setHitlogEnabled"
    --[[ Upvalues[6]:
        [1]: var6_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var6_upvw = arg1
    local var7
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var7 = udim2_upvr
        return var7
    end
    if not var6_upvw or not INLINED() then
        var7 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var7;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("HitlogEnabled", var6_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 31
    --[[ Upvalues[2]:
        [1]: setHitlogEnabled_upvr (readonly)
        [2]: var6_upvw (read and write)
    ]]
    setHitlogEnabled_upvr(not var6_upvw, true)
end)
local var10_upvw
local var11_upvw
local var12_upvw
task.spawn(function() -- Line 44
    --[[ Upvalues[3]:
        [1]: var10_upvw (read and write)
        [2]: var11_upvw (read and write)
        [3]: var12_upvw (read and write)
    ]]
    local _, _ = pcall(function() -- Line 45
        --[[ Upvalues[3]:
            [1]: var10_upvw (copied, read and write)
            [2]: var11_upvw (copied, read and write)
            [3]: var12_upvw (copied, read and write)
        ]]
        var10_upvw = script.Parent.Parent.Parent.Parent.Parent.Parent.Parent:WaitForChild("storage", 10):WaitForChild("ScrollingFrame", 10)
        if var10_upvw then
            var11_upvw = var10_upvw:WaitForChild("Miss", 5)
            var12_upvw = var10_upvw:WaitForChild("Hit", 5)
        end
    end)
end)
local TweenInfo_new_result1_upvr_3 = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
local function showHitlog_upvr(arg1, arg2) -- Line 61, Named "showHitlog"
    --[[ Upvalues[5]:
        [1]: var6_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: TweenService_upvr (readonly)
        [4]: TweenInfo_new_result1_upvr_3 (readonly)
        [5]: TweenInfo_new_result1_upvr_2 (readonly)
    ]]
    if not var6_upvw then
    else
        if not arg1 or not var10_upvw then return end
        local clone_upvr = arg1:Clone()
        clone_upvr.Parent = var10_upvw
        clone_upvr.Visible = true
        clone_upvr.BackgroundTransparency = 1
        local shadow_upvr = clone_upvr:FindFirstChild("shadow")
        if shadow_upvr then
            shadow_upvr.ImageTransparency = 1
        end
        local TextLabel_upvr = clone_upvr:FindFirstChild("TextLabel")
        if TextLabel_upvr then
            TextLabel_upvr.TextTransparency = 1
            if arg2.type == "Hit" and arg2.info then
                TextLabel_upvr.Text = string.format("%s | %d DMG | %d studs", tostring(arg2.info.bodyPart or "Body"), math.floor(arg2.info.damage or 0), math.floor(arg2.info.distance or 0))
            elseif arg2.type == "Miss" and arg2.info then
                local var26 = arg2.info.reason or "unknown"
                local var27 = "MISS"
                if var26 == "hitchance_failed" then
                    var27 = string.format("MISS | %d%% (%d) | %d studs", arg2.info.hitchance or 0, arg2.info.roll or 0, arg2.info.distance or 0)
                elseif var26 == "wall_blocking_target" then
                    var27 = string.format("MISS | WALL | %d studs", arg2.info.distance or 0)
                elseif var26 == "too_far" then
                    var27 = string.format("MISS | TOO FAR | %d studs", arg2.info.distance or 0)
                elseif var26 == "bad_angle" then
                    var27 = string.format("MISS | ANGLE | %d\xB0", arg2.info.angle or 0)
                elseif var26 == "no_target" then
                    var27 = "MISS | NO TARGET"
                elseif var26 == "target_dead" then
                    var27 = "MISS | DEAD"
                elseif var26 == "friendly_fire" then
                    var27 = "MISS | TEAM"
                end
                TextLabel_upvr.Text = var27
            else
                TextLabel_upvr.Text = "MISS"
            end
        end
        local tbl_3 = {}
        table.insert(tbl_3, TweenService_upvr:Create(clone_upvr, TweenInfo_new_result1_upvr_3, {
            BackgroundTransparency = 0.4;
        }))
        if shadow_upvr then
            table.insert(tbl_3, TweenService_upvr:Create(shadow_upvr, TweenInfo_new_result1_upvr_3, {
                ImageTransparency = 0.69;
            }))
        end
        if TextLabel_upvr then
            table.insert(tbl_3, TweenService_upvr:Create(TextLabel_upvr, TweenInfo_new_result1_upvr_3, {
                TextTransparency = 0;
            }))
        end
        for _, v in ipairs(tbl_3) do
            v:Play()
        end
        task.spawn(function() -- Line 125
            --[[ Upvalues[5]:
                [1]: clone_upvr (readonly)
                [2]: TweenService_upvr (copied, readonly)
                [3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
                [4]: shadow_upvr (readonly)
                [5]: TextLabel_upvr (readonly)
            ]]
            task.wait(2.5)
            if not clone_upvr or not clone_upvr.Parent then
            else
                local tbl_2 = {}
                table.insert(tbl_2, TweenService_upvr:Create(clone_upvr, TweenInfo_new_result1_upvr_2, {
                    BackgroundTransparency = 1;
                }))
                if shadow_upvr then
                    table.insert(tbl_2, TweenService_upvr:Create(shadow_upvr, TweenInfo_new_result1_upvr_2, {
                        ImageTransparency = 1;
                    }))
                end
                if TextLabel_upvr then
                    table.insert(tbl_2, TweenService_upvr:Create(TextLabel_upvr, TweenInfo_new_result1_upvr_2, {
                        TextTransparency = 1;
                    }))
                end
                for _, v_2 in ipairs(tbl_2) do
                    v_2:Play()
                end
                if 0 < #tbl_2 then
                    tbl_2[1].Completed:Connect(function() -- Line 141
                        --[[ Upvalues[1]:
                            [1]: clone_upvr (copied, readonly)
                        ]]
                        clone_upvr:Destroy()
                    end)
                    return
                end
                clone_upvr:Destroy()
            end
        end)
    end
end
game:GetService("ReplicatedStorage"):WaitForChild("htl").OnClientEvent:Connect(function(arg1, arg2) -- Line 153
    --[[ Upvalues[4]:
        [1]: var6_upvw (read and write)
        [2]: var11_upvw (read and write)
        [3]: var12_upvw (read and write)
        [4]: showHitlog_upvr (readonly)
    ]]
    if var6_upvw and var11_upvw then
        local var49
        if var49 then
            local function INLINED_3() -- Internal function, doesn't exist in bytecode
                var49 = var12_upvw
                return var49
            end
            if arg1 ~= "Hit" or not INLINED_3() then
                var49 = var11_upvw
            end
            local tbl = {}
            tbl.type = arg1
            tbl.info = arg2
            showHitlog_upvr(var49, tbl)
        end
    end
end)
task.wait(0.5)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.HitlogEnabled = var6_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 168
        --[[ Upvalues[7]:
            [1]: var6_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [5] 5. Error Block 12 start (CF ANALYSIS FAILED)
        local var53 = udim2_upvr
        if not var53 then
            -- KONSTANTERROR: [7] 7. Error Block 4 start (CF ANALYSIS FAILED)
            var53 = udim2_upvr_2
            -- KONSTANTERROR: [7] 7. Error Block 4 end (CF ANALYSIS FAILED)
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var53;
        }):Play()
        -- KONSTANTERROR: [5] 5. Error Block 12 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [20] 17. Error Block 13 start (CF ANALYSIS FAILED)
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
        -- KONSTANTERROR: [20] 17. Error Block 13 end (CF ANALYSIS FAILED)
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle4.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = HitlogEnabled
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Hit
        2 [string] = type
        3 [string] = info

====================================================================================================

Function Dump: showHitlog

Function Upvalues: showHitlog

Function Constants: showHitlog
        1 [string] = Clone
        2 [string] = Parent
        3 [string] = Visible
        4 [string] = BackgroundTransparency
        5 [string] = shadow
        6 [string] = FindFirstChild
        7 [string] = ImageTransparency
        8 [string] = TextLabel
        9 [string] = TextTransparency
        10 [string] = type
        11 [string] = Hit
        12 [string] = info
        13 [string] = string
        14 [string] = format
        16 [string] = %s | %d DMG | %d studs
        17 [string] = Body
        18 [string] = bodyPart
        19 [string] = tostring
        21 [number] = 0
        22 [string] = damage
        23 [string] = math
        24 [string] = floor
        26 [string] = distance
        27 [string] = Text
        28 [string] = Miss
        29 [string] = unknown
        30 [string] = reason
        31 [string] = MISS
        32 [string] = hitchance_failed
        33 [string] = MISS | %d%% (%d) | %d studs
        34 [string] = hitchance
        35 [string] = roll
        36 [string] = wall_blocking_target
        37 [string] = MISS | WALL | %d studs
        38 [string] = too_far
        39 [string] = MISS | TOO FAR | %d studs
        40 [string] = bad_angle
        41 [string] = MISS | ANGLE | %d°
        42 [string] = angle
        43 [string] = no_target
        44 [string] = MISS | NO TARGET
        45 [string] = target_dead
        46 [string] = MISS | DEAD
        47 [string] = friendly_fire
        48 [string] = MISS | TEAM
        50 [number] = 0.4
        51 [string] = Create
        52 [string] = table
        53 [string] = insert
        56 [number] = 0.69
        58 [string] = ipairs
        60 [string] = Play
        61 [string] = task
        62 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setHitlogEnabled

Function Upvalues: setHitlogEnabled

Function Constants: setHitlogEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = HitlogEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Miss
        3 [Instance] = Hit
        4 [function] = showHitlog

Function Constants: Unknown Name
        1 [string] = Hit
        2 [string] = type
        3 [string] = info

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setHitlogEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setHitlogEnabled

Function Upvalues: setHitlogEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setHitlogEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = HitlogEnabled

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
        1 [string] = HitlogEnabled
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: showHitlog

Function Upvalues: showHitlog
        1 [boolean] = false
        2 [Instance] = ScrollingFrame
        3 [Instance] = TweenService
        4 [TweenInfo] = Time:0.3 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        5 [TweenInfo] = Time:0.4 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:In EasingStyle:Quint

Function Constants: showHitlog
        1 [string] = Clone
        2 [string] = Parent
        3 [string] = Visible
        4 [string] = BackgroundTransparency
        5 [string] = shadow
        6 [string] = FindFirstChild
        7 [string] = ImageTransparency
        8 [string] = TextLabel
        9 [string] = TextTransparency
        10 [string] = type
        11 [string] = Hit
        12 [string] = info
        13 [string] = string
        14 [string] = format
        16 [string] = %s | %d DMG | %d studs
        17 [string] = Body
        18 [string] = bodyPart
        19 [string] = tostring
        21 [number] = 0
        22 [string] = damage
        23 [string] = math
        24 [string] = floor
        26 [string] = distance
        27 [string] = Text
        28 [string] = Miss
        29 [string] = unknown
        30 [string] = reason
        31 [string] = MISS
        32 [string] = hitchance_failed
        33 [string] = MISS | %d%% (%d) | %d studs
        34 [string] = hitchance
        35 [string] = roll
        36 [string] = wall_blocking_target
        37 [string] = MISS | WALL | %d studs
        38 [string] = too_far
        39 [string] = MISS | TOO FAR | %d studs
        40 [string] = bad_angle
        41 [string] = MISS | ANGLE | %d°
        42 [string] = angle
        43 [string] = no_target
        44 [string] = MISS | NO TARGET
        45 [string] = target_dead
        46 [string] = MISS | DEAD
        47 [string] = friendly_fire
        48 [string] = MISS | TEAM
        50 [number] = 0.4
        51 [string] = Create
        52 [string] = table
        53 [string] = insert
        56 [number] = 0.69
        58 [string] = ipairs
        60 [string] = Play
        61 [string] = task
        62 [string] = spawn

====================================================================================================
]]
