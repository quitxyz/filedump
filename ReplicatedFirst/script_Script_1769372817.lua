-- Script Path: game:GetService("ReplicatedFirst").Myrzik
-- Took 0.35s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:26:53
-- Luau version 6, Types version 3
-- Time taken: 0.012685 seconds

local pcall_upvr = pcall
local var3_upvr = tostring(script:GetFullName())..":1:".."attempt to index nil with number"
getfenv().pcall = function(arg1, arg2) -- Line 4
    --[[ Upvalues[2]:
        [1]: pcall_upvr (readonly)
        [2]: var3_upvr (readonly)
    ]]
    local pcall_upvr_result1, pcall_upvr_result2 = pcall_upvr(arg1, arg2)
    if pcall_upvr_result2 and string.find(pcall_upvr_result2, "attempt to index nil with number", 1, true) then
        return pcall_upvr_result1, var3_upvr
    end
    return pcall_upvr_result1, pcall_upvr_result2
end
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local LocalPlayer = game:GetService("Players").LocalPlayer
local var8_upvw = false
local oreo_upvr = ReplicatedStorage_upvr:WaitForChild("oreo", 30)
if not oreo_upvr then
else
    pcall(function() -- Line 23
        --[[ Upvalues[1]:
            [1]: oreo_upvr (readonly)
        ]]
        oreo_upvr:FireServer("alive")
    end)
    task.delay(1, function() -- Line 27
        --[[ Upvalues[2]:
            [1]: var8_upvw (read and write)
            [2]: oreo_upvr (readonly)
        ]]
        if not var8_upvw then
            pcall(function() -- Line 29
                --[[ Upvalues[1]:
                    [1]: oreo_upvr (copied, readonly)
                ]]
                oreo_upvr:FireServer("alive")
            end)
        end
    end)
    LocalPlayer.CharacterAdded:Connect(function() -- Line 35
        --[[ Upvalues[2]:
            [1]: var8_upvw (read and write)
            [2]: oreo_upvr (readonly)
        ]]
        task.wait(0.5)
        if not var8_upvw then
            pcall(function() -- Line 38
                --[[ Upvalues[1]:
                    [1]: oreo_upvr (copied, readonly)
                ]]
                oreo_upvr:FireServer("alive")
            end)
        end
    end)
    task.spawn(function() -- Line 44
        --[[ Upvalues[2]:
            [1]: var8_upvw (read and write)
            [2]: oreo_upvr (readonly)
        ]]
        while task.wait(5) do
            if not var8_upvw then
                pcall(function() -- Line 47
                    --[[ Upvalues[1]:
                        [1]: oreo_upvr (copied, readonly)
                    ]]
                    oreo_upvr:FireServer("alive")
                end)
            end
        end
    end)
    local function report_upvr(arg1) -- Line 56, Named "report"
        --[[ Upvalues[2]:
            [1]: var8_upvw (read and write)
            [2]: oreo_upvr (readonly)
        ]]
        if var8_upvw then
        else
            var8_upvw = true
            pcall(function() -- Line 59
                --[[ Upvalues[2]:
                    [1]: oreo_upvr (copied, readonly)
                    [2]: arg1 (readonly)
                ]]
                oreo_upvr:FireServer(arg1)
            end)
        end
    end
    local var18_upvw = false
    local sfx_cache_upvr = ReplicatedStorage_upvr:WaitForChild("sfx_cache", 30)
    local function requestAdmin_upvr() -- Line 66, Named "requestAdmin"
        --[[ Upvalues[1]:
            [1]: sfx_cache_upvr (readonly)
        ]]
        if sfx_cache_upvr then
            pcall(function() -- Line 68
                --[[ Upvalues[1]:
                    [1]: sfx_cache_upvr (copied, readonly)
                ]]
                sfx_cache_upvr:FireServer("upd_pref")
                print("Sent")
            end)
        end
    end
    local function checkNemesis_upvr() -- Line 75, Named "checkNemesis"
        --[[ Upvalues[3]:
            [1]: var18_upvw (read and write)
            [2]: ReplicatedStorage_upvr (readonly)
            [3]: requestAdmin_upvr (readonly)
        ]]
        if var18_upvw then
        else
            pcall(function() -- Line 77
                --[[ Upvalues[3]:
                    [1]: ReplicatedStorage_upvr (copied, readonly)
                    [2]: var18_upvw (copied, read and write)
                    [3]: requestAdmin_upvr (copied, readonly)
                ]]
                if ReplicatedStorage_upvr:FindFirstChild("QuantumMovementFlags") then
                    var18_upvw = true
                    print("EPO")
                    requestAdmin_upvr()
                end
            end)
        end
    end
    LocalPlayer.CharacterAdded:Connect(function() -- Line 86
        --[[ Upvalues[2]:
            [1]: var18_upvw (read and write)
            [2]: requestAdmin_upvr (readonly)
        ]]
        task.wait(1)
        if var18_upvw then
            requestAdmin_upvr()
        end
    end)
    ReplicatedStorage_upvr.DescendantAdded:Connect(function(arg1) -- Line 93
        --[[ Upvalues[2]:
            [1]: var18_upvw (read and write)
            [2]: requestAdmin_upvr (readonly)
        ]]
        if var18_upvw then
        elseif arg1.Name == "QuantumMovementFlags" and arg1:IsA("Folder") then
            var18_upvw = true
            print("EPO")
            requestAdmin_upvr()
        end
    end)
    task.spawn(function() -- Line 102
        --[[ Upvalues[2]:
            [1]: var18_upvw (read and write)
            [2]: requestAdmin_upvr (readonly)
        ]]
        while task.wait(10) do
            if var18_upvw then
                requestAdmin_upvr()
            end
        end
    end)
    local tbl_upvr_2 = {"Arc", "DebugConsole", "HitLogger", "Hitmarker", "FortniteDmg", "KillGlowBall", "KillCore", "KillParticle", "KillRing", "KillRay"}
    local tbl_upvr = {"HitAirPlatform", "InfinityJumpPlatform", "EnemyAirPlatform", "ShadowDecoy", "BarrelDecoy", "GP_Ring", "GP_Sphere", "GP_AuraOrb", "AIBox_", "AITrace_", "AIPred_", "AP_P", "AimViewLine", "SkyboxStar_"}
    local tbl_upvr_3 = {"ArcanumResolver", "wallbangCache", "collisionCache", "wallbangMapCache", "teleportToCT", "teleportToT", "modelConn", "_ANTI_DUMP_ACTIVE", "_JUNK_TABLES", "_G_DUMP_PROTECT"}
    local CoreGui_upvr = game:GetService("CoreGui")
    local function checkCoreGui_upvr() -- Line 127, Named "checkCoreGui"
        --[[ Upvalues[3]:
            [1]: tbl_upvr_2 (readonly)
            [2]: CoreGui_upvr (readonly)
            [3]: report_upvr (readonly)
        ]]
        pcall(function() -- Line 128
            --[[ Upvalues[3]:
                [1]: tbl_upvr_2 (copied, readonly)
                [2]: CoreGui_upvr (copied, readonly)
                [3]: report_upvr (copied, readonly)
            ]]
            for _, v in ipairs(tbl_upvr_2) do
                if CoreGui_upvr:FindFirstChild(v) then
                    report_upvr("G:"..v)
                    return
                end
            end
        end)
    end
    local function checkWorkspacePart_upvr(arg1) -- Line 138, Named "checkWorkspacePart"
        --[[ Upvalues[2]:
            [1]: tbl_upvr (readonly)
            [2]: report_upvr (readonly)
        ]]
        if not arg1:IsA("BasePart") and not arg1:IsA("Model") then
        else
            for _, v_3 in ipairs(tbl_upvr) do
                if string.find(arg1.Name, v_3, 1, true) then
                    report_upvr("P:"..v_3)
                    return
                end
            end
        end
    end
    local function checkGlobals_upvr() -- Line 148, Named "checkGlobals"
        --[[ Upvalues[2]:
            [1]: tbl_upvr_3 (readonly)
            [2]: report_upvr (readonly)
        ]]
        for _, v_2_upvr in ipairs(tbl_upvr_3) do
            pcall(function() -- Line 150
                --[[ Upvalues[2]:
                    [1]: v_2_upvr (readonly)
                    [2]: report_upvr (copied, readonly)
                ]]
                if getgenv and getgenv()[v_2_upvr] ~= nil then
                    report_upvr("E:"..v_2_upvr)
                end
            end)
            pcall(function() -- Line 156
                --[[ Upvalues[2]:
                    [1]: v_2_upvr (readonly)
                    [2]: report_upvr (copied, readonly)
                ]]
                if getfenv and getfenv()[v_2_upvr] ~= nil then
                    report_upvr("F:"..v_2_upvr)
                end
            end)
            if _G[v_2_upvr] ~= nil then
                report_upvr("_G:"..v_2_upvr)
            end
        end
    end
    game:GetService("Workspace").DescendantAdded:Connect(function(arg1) -- Line 168
        --[[ Upvalues[2]:
            [1]: var8_upvw (read and write)
            [2]: checkWorkspacePart_upvr (readonly)
        ]]
        if var8_upvw then
        else
            task.defer(function() -- Line 170
                --[[ Upvalues[2]:
                    [1]: checkWorkspacePart_upvr (copied, readonly)
                    [2]: arg1 (readonly)
                ]]
                checkWorkspacePart_upvr(arg1)
            end)
        end
    end)
    task.spawn(function() -- Line 175
        --[[ Upvalues[4]:
            [1]: var8_upvw (read and write)
            [2]: checkCoreGui_upvr (readonly)
            [3]: checkGlobals_upvr (readonly)
            [4]: checkNemesis_upvr (readonly)
        ]]
        task.wait(2)
        while not var8_upvw do
            checkCoreGui_upvr()
            checkGlobals_upvr()
            checkNemesis_upvr()
            task.wait(3)
        end
    end)
    task.spawn(function() -- Line 185
        --[[ Upvalues[1]:
            [1]: checkNemesis_upvr (readonly)
        ]]
        task.wait(1)
        checkNemesis_upvr()
    end)
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("ReplicatedFirst").Myrzik

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _G_DUMP_PROTECT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _G_DUMP_PROTECT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _JUNK_TABLES
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _JUNK_TABLES
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _ANTI_DUMP_ACTIVE
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _ANTI_DUMP_ACTIVE
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = modelConn
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = modelConn
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToCT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToCT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangMapCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangMapCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = collisionCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = collisionCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = ArcanumResolver
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = ArcanumResolver
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = ReplicatedStorage
        2 [boolean] = false
        3 [function] = requestAdmin

Function Constants: Unknown Name
        1 [string] = QuantumMovementFlags
        2 [string] = FindFirstChild
        3 [string] = print
        5 [string] = EPO

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _G_DUMP_PROTECT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _G_DUMP_PROTECT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _JUNK_TABLES
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _JUNK_TABLES
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _ANTI_DUMP_ACTIVE
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _ANTI_DUMP_ACTIVE
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = modelConn
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = modelConn
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToCT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = teleportToCT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangMapCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangMapCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = collisionCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = collisionCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = wallbangCache
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = ArcanumResolver
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = ArcanumResolver
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getgenv
        3 [string] = E:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [string] = _G_DUMP_PROTECT
        2 [function] = report

Function Constants: Unknown Name
        1 [string] = getfenv
        3 [string] = F:

====================================================================================================

Function Dump: checkNemesis

Function Upvalues: checkNemesis
        1 [boolean] = false
        2 [Instance] = ReplicatedStorage
        3 [function] = requestAdmin

Function Constants: checkNemesis
        1 [string] = pcall

====================================================================================================

Function Dump: checkCoreGui

Function Upvalues: checkCoreGui
        1 [table]:
        1 [table] table: 0x92f8eaacca92dbaf
                1 [string] = Arc
                2 [string] = DebugConsole
                3 [string] = HitLogger
                4 [string] = Hitmarker
                5 [string] = FortniteDmg
                6 [string] = KillGlowBall
                7 [string] = KillCore
                8 [string] = KillParticle
                9 [string] = KillRing
                10 [string] = KillRay
        3 [function] = report

Function Constants: checkCoreGui
        1 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [table] (Recursive table detected)
        3 [function] = report

Function Constants: Unknown Name
        1 [string] = ipairs
        3 [string] = FindFirstChild
        4 [string] = G:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = checkCoreGui
        3 [function] = checkGlobals
        4 [function] = checkNemesis

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: requestAdmin

Function Upvalues: requestAdmin
        1 [Instance] = sfx_cache

Function Constants: requestAdmin
        1 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = upd_pref
        2 [string] = FireServer
        3 [string] = print
        5 [string] = Sent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = oreo

Function Constants: Unknown Name
        1 [string] = alive
        2 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = oreo

Function Constants: Unknown Name
        1 [string] = alive
        2 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = checkWorkspacePart

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = defer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = requestAdmin

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = requestAdmin

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = QuantumMovementFlags
        3 [string] = Folder
        4 [string] = IsA
        5 [string] = print
        7 [string] = EPO

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = requestAdmin

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: report

Function Upvalues: report
        1 [boolean] = false
        2 [Instance] = oreo

Function Constants: report
        1 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = oreo

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = oreo

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = pcall

====================================================================================================

Function Dump: checkGlobals

Function Upvalues: checkGlobals
        1 [table]:
        1 [table] table: 0xb58cd2c04afec68f
                1 [string] = ArcanumResolver
                2 [string] = wallbangCache
                3 [string] = collisionCache
                4 [string] = wallbangMapCache
                5 [string] = teleportToCT
                6 [string] = teleportToT
                7 [string] = modelConn
                8 [string] = _ANTI_DUMP_ACTIVE
                9 [string] = _JUNK_TABLES
                10 [string] = _G_DUMP_PROTECT
        2 [function] = report

Function Constants: checkGlobals
        1 [string] = ipairs
        3 [string] = pcall
        5 [string] = _G
        7 [string] = _G:

====================================================================================================

Function Dump: checkWorkspacePart

Function Upvalues: checkWorkspacePart
        1 [table]:
        1 [table] table: 0x925213960a24c13f
                1 [string] = HitAirPlatform
                2 [string] = InfinityJumpPlatform
                3 [string] = EnemyAirPlatform
                4 [string] = ShadowDecoy
                5 [string] = BarrelDecoy
                6 [string] = GP_Ring
                7 [string] = GP_Sphere
                8 [string] = GP_AuraOrb
                9 [string] = AIBox_
                10 [string] = AITrace_
                11 [string] = AIPred_
                12 [string] = AP_P
                13 [string] = AimViewLine
                14 [string] = SkyboxStar_
        2 [function] = report

Function Constants: checkWorkspacePart
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Model
        4 [string] = ipairs
        6 [string] = string
        7 [string] = find
        9 [string] = Name
        10 [string] = P:

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = pcall
        2 [string] = ReplicatedFirst.Myrzik:1:attempt to index nil with number

Function Constants: Unknown Name
        1 [string] = string
        2 [string] = find
        4 [string] = attempt to index nil with number

====================================================================================================
]]