--[[
    @author quit (quit.xyz)
    @description contains all current dump files in one
]]


--// ReplicatedFirst
----// ReplicatedFirst/script_Script_1769372817.lua
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


--// StarterCharacterScripts
--//// StarterCharacterScripts/character_DeathSound_1769372105.lua
-- Script Path: game:GetService("StarterPlayer").StarterCharacterScripts.LocalScript1
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:15:01
-- Luau version 6, Types version 3
-- Time taken: 0.001157 seconds

local SoundService_upvr = game:GetService("SoundService")
local Debris_upvr = game:GetService("Debris")
script.Parent:WaitForChild("Humanoid").Died:Connect(function() -- Line 12
    --[[ Upvalues[2]:
        [1]: SoundService_upvr (readonly)
        [2]: Debris_upvr (readonly)
    ]]
    local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://128306955968079"
    Sound.Volume = 0.3
    Sound.Parent = SoundService_upvr
    Sound:Play()
    Debris_upvr:AddItem(Sound, 10)
end)


----// StarterCharacterScripts/character_JumpAndLandEffects_1769372080.lua
-- Script Path: game:GetService("StarterPlayer").StarterCharacterScripts.LocalScript
-- Took 0.38s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:14:32
-- Luau version 6, Types version 3
-- Time taken: 0.045785 seconds

local Parent_upvr = script.Parent
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local HumanoidRootPart_upvr = Parent_upvr:WaitForChild("HumanoidRootPart")
local CurrentCamera_upvr = workspace.CurrentCamera
Humanoid_upvr.JumpPower = 30
local var5_upvw = 80
local var6_upvw = var5_upvw
if not HumanoidRootPart_upvr:FindFirstChild("LandSound") then
    local Sound_upvw = Instance.new("Sound")
    Sound_upvw.Name = "LandSound"
    Sound_upvw.SoundId = "rbxassetid://109962379271807"
    Sound_upvw.Volume = 0.1
    Sound_upvw.RollOffMode = Enum.RollOffMode.InverseTapered
    Sound_upvw.RollOffMinDistance = 8
    Sound_upvw.RollOffMaxDistance = 60
    Sound_upvw.Parent = HumanoidRootPart_upvr
end
local function _() -- Line 44, Named "getFootParts"
    --[[ Upvalues[1]:
        [1]: Parent_upvr (readonly)
    ]]
    local LeftFoot_2 = Parent_upvr:FindFirstChild("LeftFoot")
    if not LeftFoot_2 then
        LeftFoot_2 = Parent_upvr:FindFirstChild("Left Leg")
    end
    local RightFoot_2 = Parent_upvr:FindFirstChild("RightFoot")
    if not RightFoot_2 then
        RightFoot_2 = Parent_upvr:FindFirstChild("Right Leg")
    end
    return LeftFoot_2, RightFoot_2
end
local function makeDustEmitter_upvr(arg1) -- Line 50, Named "makeDustEmitter"
    local ParticleEmitter = Instance.new("ParticleEmitter")
    ParticleEmitter.Texture = "rbxasset://textures/particles/smoke_main.dds"
    ParticleEmitter.Rate = 0
    ParticleEmitter.Lifetime = NumberRange.new(0.3, 0.5)
    ParticleEmitter.Speed = NumberRange.new(6, 10)
    ParticleEmitter.SpreadAngle = Vector2.new(45, 45)
    ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.6), NumberSequenceKeypoint.new(1, 0)})
    ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(1, 1)})
    ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(200, 200, 200))
    ParticleEmitter.EmissionDirection = Enum.NormalId.Top
    ParticleEmitter.Parent = arg1
    return ParticleEmitter
end
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Exclude
RaycastParams_new_result1_upvr.IgnoreWater = true
local function makeBasisFromUp_upvr(arg1) -- Line 75, Named "makeBasisFromUp"
    --[[ Upvalues[1]:
        [1]: HumanoidRootPart_upvr (readonly)
    ]]
    local LookVector = HumanoidRootPart_upvr.CFrame.LookVector
    local var15 = LookVector - arg1 * LookVector:Dot(arg1)
    if var15.Magnitude < 0.001 then
        var15 = Vector3.new(1, 0, 0) - arg1 * Vector3.new(1, 0, 0):Dot(arg1)
    end
    local Unit = var15.Unit:Cross(arg1).Unit
    return Unit, arg1, arg1:Cross(Unit).Unit
end
local Debris_upvr = game:GetService("Debris")
local function emitDustAt_upvr(arg1, arg2) -- Line 87, Named "emitDustAt"
    --[[ Upvalues[5]:
        [1]: RaycastParams_new_result1_upvr (readonly)
        [2]: Parent_upvr (readonly)
        [3]: makeBasisFromUp_upvr (readonly)
        [4]: makeDustEmitter_upvr (readonly)
        [5]: Debris_upvr (readonly)
    ]]
    if not arg1 then
    else
        RaycastParams_new_result1_upvr.FilterDescendantsInstances = {Parent_upvr}
        local workspace_Raycast_result1 = workspace:Raycast(arg1.Position, Vector3.new(0, -(arg1.Size.Y * 0.75 + 2), 0), RaycastParams_new_result1_upvr)
        if not workspace_Raycast_result1 then return end
        local Part = Instance.new("Part")
        Part.Anchored = true
        Part.CanCollide = false
        Part.CanQuery = false
        Part.CanTouch = false
        Part.Transparency = 1
        Part.Size = Vector3.new(0.20000, 0.20000, 0.20000)
        Part.CFrame = CFrame.new(workspace_Raycast_result1.Position)
        Part.Parent = workspace
        local Attachment = Instance.new("Attachment")
        Attachment.Parent = Part
        local makeBasisFromUp_upvr_result1, makeBasisFromUp_upvr_result2, makeBasisFromUp_upvr_result3 = makeBasisFromUp_upvr(workspace_Raycast_result1.Normal.Unit)
        Attachment.WorldCFrame = CFrame.fromMatrix(workspace_Raycast_result1.Position, makeBasisFromUp_upvr_result1, makeBasisFromUp_upvr_result2, makeBasisFromUp_upvr_result3)
        makeDustEmitter_upvr(Attachment):Emit(arg2 or 6)
        Debris_upvr:AddItem(Part, 0.8)
    end
end
local function _() -- Line 120, Named "createLandingParticles"
    --[[ Upvalues[2]:
        [1]: Parent_upvr (readonly)
        [2]: emitDustAt_upvr (readonly)
    ]]
    local LeftFoot_3 = Parent_upvr:FindFirstChild("LeftFoot")
    if not LeftFoot_3 then
        LeftFoot_3 = Parent_upvr:FindFirstChild("Left Leg")
    end
    local RightFoot = Parent_upvr:FindFirstChild("RightFoot")
    if not RightFoot then
        RightFoot = Parent_upvr:FindFirstChild("Right Leg")
    end
    emitDustAt_upvr(LeftFoot_3, 8)
    emitDustAt_upvr(RightFoot, 8)
end
local function _(arg1) -- Line 126, Named "playLandSound"
    --[[ Upvalues[1]:
        [1]: Sound_upvw (read and write)
    ]]
    Sound_upvw.PlaybackSpeed = 0.95 + math.random() * 0.1
    Sound_upvw:Play()
end
local function shakeCamera_upvr(arg1) -- Line 131, Named "shakeCamera"
    --[[ Upvalues[1]:
        [1]: CurrentCamera_upvr (readonly)
    ]]
    local var27 = arg1 * 0
    CurrentCamera_upvr.CFrame *= CFrame.new(Vector3.new(math.random(-100, 100) * var27 / 100, math.random(-100, 100) * var27 / 100, 0) * 0.1)
end
local var29_upvw = true
local var30_upvw = 0
Humanoid_upvr.StateChanged:Connect(function(arg1, arg2) -- Line 142
    --[[ Upvalues[3]:
        [1]: var29_upvw (read and write)
        [2]: var30_upvw (read and write)
        [3]: Humanoid_upvr (readonly)
    ]]
    if arg2 == Enum.HumanoidStateType.Jumping then
        local tick_result1 = tick()
        if not var29_upvw or tick_result1 - var30_upvw < 1 then
            Humanoid_upvr:ChangeState(Enum.HumanoidStateType.Freefall)
            return
        end
        var30_upvw = tick_result1
        var29_upvw = false
        task.wait(1)
        var29_upvw = true
    end
end)
local var33_upvw = false
local var34_upvw = false
local var35_upvw = 0
local var36_upvw = 0
game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 158
    --[[ Upvalues[14]:
        [1]: Humanoid_upvr (readonly)
        [2]: var33_upvw (read and write)
        [3]: var34_upvw (read and write)
        [4]: var35_upvw (read and write)
        [5]: var5_upvw (read and write)
        [6]: var5_upvw (read and write)
        [7]: var36_upvw (read and write)
        [8]: HumanoidRootPart_upvr (readonly)
        [9]: Parent_upvr (readonly)
        [10]: emitDustAt_upvr (readonly)
        [11]: Sound_upvw (read and write)
        [12]: shakeCamera_upvr (readonly)
        [13]: var6_upvw (read and write)
        [14]: CurrentCamera_upvr (readonly)
    ]]
    local var37
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var37 = Humanoid_upvr.Health
        return var37 <= 0
    end
    if not var37 or INLINED() then
    else
        var37 = true
        if Humanoid_upvr:GetState() ~= Enum.HumanoidStateType.Freefall then
            if Humanoid_upvr:GetState() ~= Enum.HumanoidStateType.Flying then
                var37 = false
            else
                var37 = true
            end
        end
        if var37 and not var33_upvw then
            var34_upvw = true
            var35_upvw = tick()
            var5_upvw += 3
        end
        if var33_upvw and not var37 then
            var34_upvw = false
            var36_upvw = tick()
            var5_upvw -= 1
            local LeftFoot = Parent_upvr:FindFirstChild("LeftFoot")
            if not LeftFoot then
                LeftFoot = Parent_upvr:FindFirstChild("Left Leg")
            end
            local RightFoot_3 = Parent_upvr:FindFirstChild("RightFoot")
            if not RightFoot_3 then
                RightFoot_3 = Parent_upvr:FindFirstChild("Right Leg")
            end
            emitDustAt_upvr(LeftFoot, 8)
            emitDustAt_upvr(RightFoot_3, 8)
            Sound_upvw.PlaybackSpeed = 0.95 + math.random() * 0.1
            Sound_upvw:Play()
            shakeCamera_upvr(math.clamp(math.abs(HumanoidRootPart_upvr.AssemblyLinearVelocity.Y) / 50, 0.1, 1))
            if 5 < HumanoidRootPart_upvr.AssemblyLinearVelocity.Magnitude then
                local AssemblyLinearVelocity = HumanoidRootPart_upvr.AssemblyLinearVelocity
                HumanoidRootPart_upvr.AssemblyLinearVelocity = Vector3.new(AssemblyLinearVelocity.X * 0.85, AssemblyLinearVelocity.Y, AssemblyLinearVelocity.Z * 0.85)
            end
        end
        if not var34_upvw and 0.15 < tick() - var36_upvw then
            var5_upvw = var5_upvw
        end
        var6_upvw += (var5_upvw - var6_upvw) * 0.15
        CurrentCamera_upvr.FieldOfView = var6_upvw
        if tick() - var36_upvw < 0.2 then
            CurrentCamera_upvr.CFrame *= CFrame.Angles(0, 0, math.rad(math.sin((tick() - var36_upvw) / 0.2 * math.pi) * 0))
        end
        var33_upvw = var37
    end
end)
CurrentCamera_upvr:GetPropertyChangedSignal("FieldOfView"):Connect(function() -- Line 208
    --[[ Upvalues[3]:
        [1]: CurrentCamera_upvr (readonly)
        [2]: var6_upvw (read and write)
        [3]: var5_upvw (read and write)
    ]]
    if 5 < math.abs(CurrentCamera_upvr.FieldOfView - var6_upvw) then
        var5_upvw = CurrentCamera_upvr.FieldOfView
        var6_upvw = CurrentCamera_upvr.FieldOfView
    end
end)


----// StarterCharacterScripts/character_Movement_1769372098.lua
-- Script Path: game:GetService("StarterPlayer").StarterCharacterScripts:GetChildren()[2]
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:14:55
-- Luau version 6, Types version 3
-- Time taken: 0.011495 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Humanoid_upvr = Parent:WaitForChild("Humanoid")
local HumanoidRootPart_upvr = Parent:WaitForChild("HumanoidRootPart")
local C_upvr = Enum.KeyCode.C
local LeftControl_upvr = Enum.KeyCode.LeftControl
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = 0
local WalkSpeed_upvw = Humanoid_upvr.WalkSpeed
local var11_upvw
local var12_upvw
local var13_upvw
local function _() -- Line 31, Named "getAnimator"
    --[[ Upvalues[2]:
        [1]: var13_upvw (read and write)
        [2]: Humanoid_upvr (readonly)
    ]]
    if not var13_upvw then
        var13_upvw = Humanoid_upvr:FindFirstChildOfClass("Animator")
        if not var13_upvw then
            var13_upvw = Instance.new("Animator")
            var13_upvw.Parent = Humanoid_upvr
        end
    end
    return var13_upvw
end
local function _() -- Line 58, Named "stopCrouchAnimations"
    --[[ Upvalues[2]:
        [1]: var11_upvw (read and write)
        [2]: var12_upvw (read and write)
    ]]
    if var11_upvw then
        if var11_upvw.IsPlaying then
            var11_upvw:Stop()
        end
    end
    if var12_upvw and var12_upvw.IsPlaying then
        var12_upvw:Stop()
    end
end
local function _() -- Line 68, Named "isMoving"
    --[[ Upvalues[1]:
        [1]: HumanoidRootPart_upvr (readonly)
    ]]
    local Velocity = HumanoidRootPart_upvr.Velocity
    local vector3 = Vector3.new(Velocity.X, 0, Velocity.Z)
    if 0.5 >= vector3.Magnitude then
        vector3 = false
    else
        vector3 = true
    end
    return vector3
end
local function updateCrouchAnimation_upvr() -- Line 75, Named "updateCrouchAnimation"
    --[[ Upvalues[4]:
        [1]: var7_upvw (read and write)
        [2]: HumanoidRootPart_upvr (readonly)
        [3]: var11_upvw (read and write)
        [4]: var12_upvw (read and write)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
    local var21
    if not var21 then return end
    local Velocity_2 = HumanoidRootPart_upvr.Velocity
    if 0.5 >= Vector3.new(Velocity_2.X, 0, Velocity_2.Z).Magnitude then
        var21 = false
    else
        var21 = true
    end
    -- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [39] 31. Error Block 12 start (CF ANALYSIS FAILED)
    var21 = var12_upvw:Play
    var21()
    do
        return
    end
    -- KONSTANTERROR: [39] 31. Error Block 12 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [44] 35. Error Block 24 start (CF ANALYSIS FAILED)
    var21 = var12_upvw
    if var21 then
        var21 = var12_upvw.IsPlaying
        if var21 then
            var21 = var12_upvw:Stop
            var21()
        end
    end
    var21 = var11_upvw
    if var21 then
        var21 = var11_upvw.IsPlaying
        if not var21 then
            var21 = var11_upvw:Play
            var21()
        end
    end
    -- KONSTANTERROR: [44] 35. Error Block 24 end (CF ANALYSIS FAILED)
end
local function _() -- Line 96, Named "applyCrouch"
    --[[ Upvalues[5]:
        [1]: var7_upvw (read and write)
        [2]: var9_upvw (read and write)
        [3]: Humanoid_upvr (readonly)
        [4]: WalkSpeed_upvw (read and write)
        [5]: var11_upvw (read and write)
    ]]
    if var7_upvw then
    else
        var7_upvw = true
        var9_upvw = -1
        Humanoid_upvr.WalkSpeed = WalkSpeed_upvw * 0.5
        Humanoid_upvr.JumpPower = 0
        if var11_upvw then
            var11_upvw:Play()
        end
    end
end
local function _() -- Line 114, Named "removeCrouch"
    --[[ Upvalues[6]:
        [1]: var7_upvw (read and write)
        [2]: var9_upvw (read and write)
        [3]: Humanoid_upvr (readonly)
        [4]: WalkSpeed_upvw (read and write)
        [5]: var11_upvw (read and write)
        [6]: var12_upvw (read and write)
    ]]
    if not var7_upvw then
    else
        var7_upvw = false
        var9_upvw = 0
        Humanoid_upvr.WalkSpeed = WalkSpeed_upvw
        Humanoid_upvr.JumpPower = 30
        if var11_upvw and var11_upvw.IsPlaying then
            var11_upvw:Stop()
        end
        if var12_upvw and var12_upvw.IsPlaying then
            var12_upvw:Stop()
        end
    end
end
local CurrentCamera_upvr = workspace.CurrentCamera
game:GetService("RunService").RenderStepped:Connect(function() -- Line 128
    --[[ Upvalues[5]:
        [1]: var8_upvw (read and write)
        [2]: var9_upvw (read and write)
        [3]: CurrentCamera_upvr (readonly)
        [4]: Humanoid_upvr (readonly)
        [5]: updateCrouchAnimation_upvr (readonly)
    ]]
    var8_upvw += (var9_upvw - var8_upvw) * 0.2
    if CurrentCamera_upvr.CameraSubject == Humanoid_upvr then
        CurrentCamera_upvr.CFrame *= CFrame.new(0, var8_upvw, 0)
    end
    updateCrouchAnimation_upvr()
end)
UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 143
    --[[ Upvalues[7]:
        [1]: C_upvr (readonly)
        [2]: LeftControl_upvr (readonly)
        [3]: var7_upvw (read and write)
        [4]: var9_upvw (read and write)
        [5]: Humanoid_upvr (readonly)
        [6]: WalkSpeed_upvw (read and write)
        [7]: var11_upvw (read and write)
    ]]
    if arg2 then
    elseif arg1.KeyCode == C_upvr or arg1.KeyCode == LeftControl_upvr or not var7_upvw then
        if var7_upvw then return end
        var7_upvw = true
        var9_upvw = -1
        Humanoid_upvr.WalkSpeed = WalkSpeed_upvw * 0.5
        Humanoid_upvr.JumpPower = 0
        if var11_upvw then
            var11_upvw:Play()
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1, arg2) -- Line 153
    --[[ Upvalues[9]:
        [1]: C_upvr (readonly)
        [2]: LeftControl_upvr (readonly)
        [3]: UserInputService_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: var9_upvw (read and write)
        [6]: Humanoid_upvr (readonly)
        [7]: WalkSpeed_upvw (read and write)
        [8]: var11_upvw (read and write)
        [9]: var12_upvw (read and write)
    ]]
    if arg1.KeyCode == C_upvr or arg1.KeyCode == LeftControl_upvr or not UserInputService_upvr:IsKeyDown(C_upvr) and not UserInputService_upvr:IsKeyDown(LeftControl_upvr) then
        if not var7_upvw then return end
        var7_upvw = false
        var9_upvw = 0
        Humanoid_upvr.WalkSpeed = WalkSpeed_upvw
        Humanoid_upvr.JumpPower = 30
        if var11_upvw and var11_upvw.IsPlaying then
            var11_upvw:Stop()
        end
        if var12_upvw and var12_upvw.IsPlaying then
            var12_upvw:Stop()
        end
    end
end)
WalkSpeed_upvw = Humanoid_upvr.WalkSpeed
Humanoid_upvr.JumpPower = 30
;(function() -- Line 43, Named "loadAnimations"
    --[[ Upvalues[4]:
        [1]: var13_upvw (read and write)
        [2]: Humanoid_upvr (readonly)
        [3]: var11_upvw (read and write)
        [4]: var12_upvw (read and write)
    ]]
    if not var13_upvw then
        var13_upvw = Humanoid_upvr:FindFirstChildOfClass("Animator")
        if not var13_upvw then
            var13_upvw = Instance.new("Animator")
            var13_upvw.Parent = Humanoid_upvr
        end
    end
    local var14 = var13_upvw
    if not var14 then
    else
        local Animation_2 = Instance.new("Animation")
        Animation_2.AnimationId = "rbxassetid://102226306945117"
        var11_upvw = var14:LoadAnimation(Animation_2)
        var11_upvw.Priority = Enum.AnimationPriority.Action
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://124458965304788"
        var12_upvw = var14:LoadAnimation(Animation)
        var12_upvw.Priority = Enum.AnimationPriority.Action
    end
end)()
Humanoid_upvr.Died:Connect(function() -- Line 174
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: var8_upvw (read and write)
        [3]: var9_upvw (read and write)
        [4]: Humanoid_upvr (readonly)
        [5]: WalkSpeed_upvw (read and write)
        [6]: var11_upvw (read and write)
        [7]: var12_upvw (read and write)
    ]]
    if var7_upvw then
        var7_upvw = false
        var8_upvw = 0
        var9_upvw = 0
        Humanoid_upvr.WalkSpeed = WalkSpeed_upvw
        Humanoid_upvr.JumpPower = 30
        if var11_upvw and var11_upvw.IsPlaying then
            var11_upvw:Stop()
        end
        if var12_upvw and var12_upvw.IsPlaying then
            var12_upvw:Stop()
        end
    end
end)


--// StarterPlayerScripts
----// StarterPlayerScripts/CommonUtils_CharacterUtil.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.PlayerModule.CommonUtils.CharacterUtil
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:54:27
-- Luau version 6, Types version 3
-- Time taken: 0.006257 seconds

local Players_upvr = game:GetService("Players")
local module_upvr = {
    LOCAL_PLAYER = "LOCAL_PLAYER";
    ON_LOCAL_PLAYER = "ON_LOCAL_PLAYER";
    CHARACTER_ADDED = "CHARACTER_ADDED";
    ON_CHARACTER = "ON_CHARACTER";
    CHARACTER_CHILD_ADDED = "CHARACTER_CHILD_ADDED";
}
local module_upvr_2 = {
    _connectionUtil = require(script.Parent:WaitForChild("ConnectionUtil")).new();
    _boundEvents = {};
    getLocalPlayer = function() -- Line 53, Named "getLocalPlayer"
        --[[ Upvalues[1]:
            [1]: Players_upvr (readonly)
        ]]
        return Players_upvr.LocalPlayer
    end;
}
function module_upvr_2.onLocalPlayer(arg1) -- Line 57
    --[[ Upvalues[3]:
        [1]: module_upvr_2 (readonly)
        [2]: module_upvr (readonly)
        [3]: Players_upvr (readonly)
    ]]
    local any_getLocalPlayer_result1 = module_upvr_2.getLocalPlayer()
    if any_getLocalPlayer_result1 then
        arg1(any_getLocalPlayer_result1)
    end
    module_upvr_2._connectionUtil:trackConnection(module_upvr.LOCAL_PLAYER, Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Connect(function() -- Line 66
        --[[ Upvalues[2]:
            [1]: module_upvr_2 (copied, readonly)
            [2]: module_upvr (copied, readonly)
        ]]
        local any_getLocalPlayer_result1_2 = module_upvr_2.getLocalPlayer()
        assert(any_getLocalPlayer_result1_2)
        module_upvr_2._getOrCreateBoundEvent(module_upvr.LOCAL_PLAYER):Fire(any_getLocalPlayer_result1_2)
    end))
    return module_upvr_2._getOrCreateBoundEvent(module_upvr.LOCAL_PLAYER).Event:Connect(arg1)
end
function module_upvr_2.getCharacter() -- Line 77
    --[[ Upvalues[1]:
        [1]: module_upvr_2 (readonly)
    ]]
    local any_getLocalPlayer_result1_3 = module_upvr_2.getLocalPlayer()
    if not any_getLocalPlayer_result1_3 then
        return nil
    end
    return any_getLocalPlayer_result1_3.Character
end
function module_upvr_2.onCharacter(arg1) -- Line 85
    --[[ Upvalues[2]:
        [1]: module_upvr_2 (readonly)
        [2]: module_upvr (readonly)
    ]]
    module_upvr_2._connectionUtil:trackConnection(module_upvr.ON_LOCAL_PLAYER, module_upvr_2.onLocalPlayer(function(arg1_2) -- Line 89
        --[[ Upvalues[3]:
            [1]: module_upvr_2 (copied, readonly)
            [2]: arg1 (readonly)
            [3]: module_upvr (copied, readonly)
        ]]
        local any_getCharacter_result1 = module_upvr_2.getCharacter()
        if any_getCharacter_result1 then
            arg1(any_getCharacter_result1)
        end
        module_upvr_2._connectionUtil:trackConnection(module_upvr.CHARACTER_ADDED, arg1_2.CharacterAdded:Connect(function(arg1_3) -- Line 98
            --[[ Upvalues[2]:
                [1]: module_upvr_2 (copied, readonly)
                [2]: module_upvr (copied, readonly)
            ]]
            assert(arg1_3)
            module_upvr_2._getOrCreateBoundEvent(module_upvr.CHARACTER_ADDED):Fire(arg1_3)
        end))
    end))
    return module_upvr_2._getOrCreateBoundEvent(module_upvr.CHARACTER_ADDED).Event:Connect(arg1)
end
function module_upvr_2.getChild(arg1, arg2) -- Line 110
    --[[ Upvalues[1]:
        [1]: module_upvr_2 (readonly)
    ]]
    local any_getCharacter_result1_2 = module_upvr_2.getCharacter()
    if not any_getCharacter_result1_2 then
        return nil
    end
    local SOME = any_getCharacter_result1_2:FindFirstChild(arg1)
    if SOME and SOME:IsA(arg2) then
        return SOME
    end
    return nil
end
function module_upvr_2.onChild(arg1, arg2, arg3) -- Line 122
    --[[ Upvalues[2]:
        [1]: module_upvr_2 (readonly)
        [2]: module_upvr (readonly)
    ]]
    module_upvr_2._connectionUtil:trackConnection(module_upvr.ON_CHARACTER, module_upvr_2.onCharacter(function(arg1_4) -- Line 126
        --[[ Upvalues[5]:
            [1]: module_upvr_2 (copied, readonly)
            [2]: arg1 (readonly)
            [3]: arg2 (readonly)
            [4]: arg3 (readonly)
            [5]: module_upvr (copied, readonly)
        ]]
        local any_getChild_result1 = module_upvr_2.getChild(arg1, arg2)
        if any_getChild_result1 then
            arg3(any_getChild_result1)
        end
        module_upvr_2._connectionUtil:trackConnection(module_upvr.CHARACTER_CHILD_ADDED, arg1_4.ChildAdded:Connect(function(arg1_5) -- Line 135
            --[[ Upvalues[4]:
                [1]: arg1 (copied, readonly)
                [2]: arg2 (copied, readonly)
                [3]: module_upvr_2 (copied, readonly)
                [4]: module_upvr (copied, readonly)
            ]]
            if arg1_5.Name == arg1 and arg1_5:IsA(arg2) then
                module_upvr_2._getOrCreateBoundEvent(module_upvr.CHARACTER_CHILD_ADDED..arg1..arg2):Fire(arg1_5)
            end
        end))
    end))
    return module_upvr_2._getOrCreateBoundEvent(module_upvr.CHARACTER_CHILD_ADDED..arg1..arg2).Event:Connect(arg3)
end
function module_upvr_2._getOrCreateBoundEvent(arg1) -- Line 149
    --[[ Upvalues[1]:
        [1]: module_upvr_2 (readonly)
    ]]
    if not module_upvr_2._boundEvents[arg1] then
        module_upvr_2._boundEvents[arg1] = Instance.new("BindableEvent")
    end
    return module_upvr_2._boundEvents[arg1]
end
return module_upvr_2


----// StarterPlayerScripts/CommonUtils_ConnectionUtil.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.PlayerModule.CommonUtils.ConnectionUtil
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:54:22
-- Luau version 6, Types version 3
-- Time taken: 0.002614 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 25
    --[[ Upvalues[1]:
        [1]: module_upvr (readonly)
    ]]
    local setmetatable_result1 = setmetatable({}, module_upvr)
    setmetatable_result1._connections = {}
    return setmetatable_result1
end
function module_upvr.trackConnection(arg1, arg2, arg3) -- Line 33
    if arg1._connections[arg2] then
        arg1._connections[arg2]()
    end
    arg1._connections[arg2] = function() -- Line 38
        --[[ Upvalues[1]:
            [1]: arg3 (readonly)
        ]]
        arg3:Disconnect()
    end
end
function module_upvr.trackBoundFunction(arg1, arg2, arg3) -- Line 41
    if arg1._connections[arg2] then
        arg1._connections[arg2]()
    end
    arg1._connections[arg2] = arg3
end
function module_upvr.disconnect(arg1, arg2) -- Line 48
    if arg1._connections[arg2] then
        arg1._connections[arg2]()
        arg1._connections[arg2] = nil
    end
end
function module_upvr.disconnectAll(arg1) -- Line 55
    for _, v in pairs(arg1._connections) do
        v()
    end
    arg1._connections = {}
end
return module_upvr


----// StarterPlayerScripts/CommonUtils_ConnectionUtil.spec.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.PlayerModule.CommonUtils["ConnectionUtil.spec"]
-- Took 0.33s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:54:34
-- Luau version 6, Types version 3
-- Time taken: 0.007665 seconds

local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
local it_upvr = JestGlobals.it
local ConnectionUtil_upvr = require(script.Parent.ConnectionUtil)
local expect_upvr = JestGlobals.expect
local Signal_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
JestGlobals.describe("ConnectionUtil", function() -- Line 13
    --[[ Upvalues[4]:
        [1]: it_upvr (readonly)
        [2]: ConnectionUtil_upvr (readonly)
        [3]: expect_upvr (readonly)
        [4]: Signal_upvr (readonly)
    ]]
    it_upvr("should instantiate", function() -- Line 14
        --[[ Upvalues[2]:
            [1]: ConnectionUtil_upvr (copied, readonly)
            [2]: expect_upvr (copied, readonly)
        ]]
        expect_upvr(ConnectionUtil_upvr.new()).never.toBeNil()
    end)
    it_upvr("should track a connection", function() -- Line 20
        --[[ Upvalues[3]:
            [1]: ConnectionUtil_upvr (copied, readonly)
            [2]: Signal_upvr (copied, readonly)
            [3]: expect_upvr (copied, readonly)
        ]]
        local any_new_result1_2 = Signal_upvr.new()
        local var11_upvw = ""
        ConnectionUtil_upvr.new():trackConnection("Signal", any_new_result1_2:Connect(function(arg1) -- Line 27
            --[[ Upvalues[1]:
                [1]: var11_upvw (read and write)
            ]]
            var11_upvw = arg1
        end))
        any_new_result1_2:fire("Testing")
        expect_upvr(var11_upvw).toBe("Testing")
    end)
    it_upvr("should disconnect from signal", function() -- Line 36
        --[[ Upvalues[3]:
            [1]: ConnectionUtil_upvr (copied, readonly)
            [2]: Signal_upvr (copied, readonly)
            [3]: expect_upvr (copied, readonly)
        ]]
        local any_new_result1_5 = ConnectionUtil_upvr.new()
        local any_new_result1_6 = Signal_upvr.new()
        local var16_upvw = ""
        any_new_result1_5:trackConnection("Signal", any_new_result1_6:Connect(function(arg1) -- Line 43
            --[[ Upvalues[1]:
                [1]: var16_upvw (read and write)
            ]]
            var16_upvw = arg1
        end))
        any_new_result1_5:disconnect("Signal")
        any_new_result1_6:fire("Testing")
        expect_upvr(var16_upvw).toBe("")
    end)
    it_upvr("should disconnect from all", function() -- Line 53
        --[[ Upvalues[3]:
            [1]: ConnectionUtil_upvr (copied, readonly)
            [2]: Signal_upvr (copied, readonly)
            [3]: expect_upvr (copied, readonly)
        ]]
        local any_new_result1_3 = ConnectionUtil_upvr.new()
        local any_new_result1_4 = Signal_upvr.new()
        local var21_upvw = ""
        local var22_upvw = ""
        local var23_upvw = ""
        any_new_result1_3:trackConnection("Signal", any_new_result1_4:Connect(function(arg1) -- Line 65
            --[[ Upvalues[1]:
                [1]: var21_upvw (read and write)
            ]]
            var21_upvw = arg1
        end))
        any_new_result1_3:trackConnection("Signal1", Signal_upvr.new():Connect(function(arg1) -- Line 71
            --[[ Upvalues[1]:
                [1]: var22_upvw (read and write)
            ]]
            var22_upvw = arg1
        end))
        any_new_result1_3:trackConnection("Signal2", Signal_upvr.new():Connect(function(arg1) -- Line 77
            --[[ Upvalues[1]:
                [1]: var23_upvw (read and write)
            ]]
            var23_upvw = arg1
        end))
        any_new_result1_3:disconnectAll()
        any_new_result1_4:fire("TestingPrimary")
        any_new_result1_4:fire("TestingSecondary")
        any_new_result1_4:fire("TestingTertiary")
        expect_upvr(var21_upvw).toBe("")
        expect_upvr(var22_upvw).toBe("")
        expect_upvr(var23_upvw).toBe("")
    end)
    it_upvr("should call manual disconnect", function() -- Line 92
        --[[ Upvalues[2]:
            [1]: ConnectionUtil_upvr (copied, readonly)
            [2]: expect_upvr (copied, readonly)
        ]]
        local any_new_result1 = ConnectionUtil_upvr.new()
        local var29_upvw = ""
        any_new_result1:trackBoundFunction("Manual", function() -- Line 96
            --[[ Upvalues[1]:
                [1]: var29_upvw (read and write)
            ]]
            var29_upvw = "Disconnected"
        end)
        any_new_result1:disconnect("Manual")
        expect_upvr(var29_upvw).toBe("Disconnected")
    end)
end)


----// StarterPlayerScripts/CommonUtils_FlagUtil.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.PlayerModule.CommonUtils.FlagUtil
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:54:47
-- Luau version 6, Types version 3
-- Time taken: 0.001091 seconds

return {
    getUserFlag = function(arg1) -- Line 11, Named "getUserFlag"
        local pcall_result1, pcall_result2 = pcall(function() -- Line 12
            --[[ Upvalues[1]:
                [1]: arg1 (readonly)
            ]]
            return UserSettings():IsUserFeatureEnabled(arg1)
        end)
        return pcall_result1 and pcall_result2
    end;
}


----// StarterPlayerScripts/LocalScript.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.LocalScript
-- Took 0.5s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:51:46
-- Luau version 6, Types version 3
-- Time taken: 0.027637 seconds

local Players_upvr = game:GetService("Players")
local TweenService_upvr = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local PlayerGui_upvr = Players_upvr.LocalPlayer:WaitForChild("PlayerGui")
if _G.__CustomChatClientRunning then
else
    _G.__CustomChatClientRunning = true
    local StarterGui_upvr = game:GetService("StarterGui")
    pcall(function() -- Line 16
        --[[ Upvalues[1]:
            [1]: StarterGui_upvr (readonly)
        ]]
        StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
    end)
    if TextChatService:FindFirstChild("ChatWindowConfiguration") then
        TextChatService.ChatWindowConfiguration.Enabled = false
    end
    if TextChatService:FindFirstChild("ChatInputBarConfiguration") then
        TextChatService.ChatInputBarConfiguration.Enabled = false
    end
    local chat = PlayerGui_upvr:WaitForChild("chat")
    local chat_upvr = chat:WaitForChild("chat")
    local InputBox_upvr = chat_upvr:WaitForChild("InputBox")
    local CloseButton = chat_upvr:WaitForChild("Header"):FindFirstChild("CloseButton")
    local ChatButton_upvr = chat:WaitForChild("ChatButton")
    local RemoteEvents = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents")
    local VoteEvent_upvr = RemoteEvents:WaitForChild("VoteEvent")
    local ChatEvent_upvr = RemoteEvents:WaitForChild("ChatEvent")
    local var16_upvw = false
    local tbl_3_upvr = {}
    local TweenInfo_new_result1_upvr = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    local var19_upvw
    local var20_upvw
    local var21_upvw
    local var22_upvw
    local var23_upvw
    local var24_upvw = false
    ;(function() -- Line 49, Named "CreateVoteGUI"
        --[[ Upvalues[8]:
            [1]: PlayerGui_upvr (readonly)
            [2]: var22_upvw (read and write)
            [3]: var23_upvw (read and write)
            [4]: var20_upvw (read and write)
            [5]: var21_upvw (read and write)
            [6]: var24_upvw (read and write)
            [7]: VoteEvent_upvr (readonly)
            [8]: var19_upvw (read and write)
        ]]
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "VoteKickGUI"
        ScreenGui.ResetOnSpawn = false
        ScreenGui.Parent = PlayerGui_upvr
        local Frame_3 = Instance.new("Frame")
        Frame_3.Name = "MainFrame"
        Frame_3.Size = UDim2.new(0, 280, 0, 140)
        Frame_3.Position = UDim2.new(0, 20, 0.5, -70)
        Frame_3.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        Frame_3.BorderSizePixel = 0
        Frame_3.BackgroundTransparency = 0.2
        Frame_3.Visible = false
        Frame_3.Parent = ScreenGui
        local UIGradient = Instance.new("UIGradient")
        UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 45)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 25))})
        UIGradient.Parent = Frame_3
        local Frame_2 = Instance.new("Frame")
        Frame_2.Size = UDim2.new(0, 4, 1, 0)
        Frame_2.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        Frame_2.BorderSizePixel = 0
        Frame_2.Parent = Frame_3
        local TextLabel_5 = Instance.new("TextLabel")
        TextLabel_5.Text = "votekick"
        TextLabel_5.Size = UDim2.new(1, -20, 0, 25)
        TextLabel_5.Position = UDim2.new(0, 15, 0, 5)
        TextLabel_5.BackgroundTransparency = 1
        TextLabel_5.Font = Enum.Font.GothamBold
        TextLabel_5.TextColor3 = Color3.fromRGB(255, 50, 50)
        TextLabel_5.TextSize = 18
        TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel_5.Parent = Frame_3
        var22_upvw = Instance.new("TextLabel")
        var22_upvw.Text = "PlayerName"
        var22_upvw.Size = UDim2.new(1, -70, 0, 25)
        var22_upvw.Position = UDim2.new(0, 65, 0, 35)
        var22_upvw.BackgroundTransparency = 1
        var22_upvw.Font = Enum.Font.Gotham
        var22_upvw.TextColor3 = Color3.fromRGB(255, 255, 255)
        var22_upvw.TextSize = 16
        var22_upvw.TextXAlignment = Enum.TextXAlignment.Left
        var22_upvw.Parent = Frame_3
        var23_upvw = Instance.new("ImageLabel")
        var23_upvw.Size = UDim2.new(0, 40, 0, 40)
        var23_upvw.Position = UDim2.new(0, 15, 0, 35)
        var23_upvw.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        var23_upvw.Parent = Frame_3
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = var23_upvw
        local Frame_5 = Instance.new("Frame")
        Frame_5.Size = UDim2.new(1, -20, 0, 25)
        Frame_5.Position = UDim2.new(0, 15, 0, 80)
        Frame_5.BackgroundTransparency = 1
        Frame_5.Parent = Frame_3
        local TextLabel_2 = Instance.new("TextLabel")
        TextLabel_2.Text = "[8]"
        TextLabel_2.Size = UDim2.new(0, 30, 1, 0)
        TextLabel_2.BackgroundTransparency = 1
        TextLabel_2.TextColor3 = Color3.fromRGB(150, 150, 150)
        TextLabel_2.Font = Enum.Font.GothamBold
        TextLabel_2.TextSize = 14
        TextLabel_2.Parent = Frame_5
        local TextLabel = Instance.new("TextLabel")
        TextLabel.Text = "YES"
        TextLabel.Position = UDim2.new(0, 35, 0, 0)
        TextLabel.Size = UDim2.new(0, 50, 1, 0)
        TextLabel.BackgroundTransparency = 1
        TextLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextSize = 14
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.Parent = Frame_5
        var20_upvw = Instance.new("TextLabel")
        var20_upvw.Text = '0'
        var20_upvw.Size = UDim2.new(0, 30, 1, 0)
        var20_upvw.Position = UDim2.new(1, -30, 0, 0)
        var20_upvw.BackgroundTransparency = 1
        var20_upvw.TextColor3 = Color3.fromRGB(255, 255, 255)
        var20_upvw.Font = Enum.Font.Gotham
        var20_upvw.TextXAlignment = Enum.TextXAlignment.Right
        var20_upvw.Parent = Frame_5
        local Frame = Instance.new("Frame")
        Frame.Size = UDim2.new(1, -20, 0, 25)
        Frame.Position = UDim2.new(0, 15, 0, 105)
        Frame.BackgroundTransparency = 1
        Frame.Parent = Frame_3
        local TextLabel_4 = Instance.new("TextLabel")
        TextLabel_4.Text = "[9]"
        TextLabel_4.Size = UDim2.new(0, 30, 1, 0)
        TextLabel_4.BackgroundTransparency = 1
        TextLabel_4.TextColor3 = Color3.fromRGB(150, 150, 150)
        TextLabel_4.Font = Enum.Font.GothamBold
        TextLabel_4.TextSize = 14
        TextLabel_4.Parent = Frame
        local TextLabel_3 = Instance.new("TextLabel")
        TextLabel_3.Text = "NO"
        TextLabel_3.Position = UDim2.new(0, 35, 0, 0)
        TextLabel_3.Size = UDim2.new(0, 50, 1, 0)
        TextLabel_3.BackgroundTransparency = 1
        TextLabel_3.TextColor3 = Color3.fromRGB(255, 100, 100)
        TextLabel_3.Font = Enum.Font.GothamBold
        TextLabel_3.TextSize = 14
        TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel_3.Parent = Frame
        var21_upvw = Instance.new("TextLabel")
        var21_upvw.Text = '0'
        var21_upvw.Size = UDim2.new(0, 30, 1, 0)
        var21_upvw.Position = UDim2.new(1, -30, 0, 0)
        var21_upvw.BackgroundTransparency = 1
        var21_upvw.TextColor3 = Color3.fromRGB(255, 255, 255)
        var21_upvw.Font = Enum.Font.Gotham
        var21_upvw.TextXAlignment = Enum.TextXAlignment.Right
        var21_upvw.Parent = Frame
        local TextButton = Instance.new("TextButton")
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.BackgroundTransparency = 1
        TextButton.Text = ""
        TextButton.Parent = Frame_5
        TextButton.MouseButton1Click:Connect(function() -- Line 186
            --[[ Upvalues[2]:
                [1]: var24_upvw (copied, read and write)
                [2]: VoteEvent_upvr (copied, readonly)
            ]]
            if var24_upvw then
                VoteEvent_upvr:FireServer("VoteYes")
            end
        end)
        local TextButton_2 = Instance.new("TextButton")
        TextButton_2.Size = UDim2.new(1, 0, 1, 0)
        TextButton_2.BackgroundTransparency = 1
        TextButton_2.Text = ""
        TextButton_2.Parent = Frame
        TextButton_2.MouseButton1Click:Connect(function() -- Line 195
            --[[ Upvalues[2]:
                [1]: var24_upvw (copied, read and write)
                [2]: VoteEvent_upvr (copied, readonly)
            ]]
            if var24_upvw then
                VoteEvent_upvr:FireServer("VoteNo")
            end
        end)
        var19_upvw = Frame_3
    end)()
    VoteEvent_upvr.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 204
        --[[ Upvalues[7]:
            [1]: var24_upvw (read and write)
            [2]: var22_upvw (read and write)
            [3]: Players_upvr (readonly)
            [4]: var23_upvw (read and write)
            [5]: var20_upvw (read and write)
            [6]: var21_upvw (read and write)
            [7]: var19_upvw (read and write)
        ]]
        if arg1 == "StartVote" then
            var24_upvw = true
            var22_upvw.Text = arg2
            var23_upvw.Image = Players_upvr:GetUserThumbnailAsync(arg3, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
            var20_upvw.Text = '1'
            var21_upvw.Text = '0'
            var19_upvw.Visible = true
        else
            if arg1 == "UpdateVotes" then
                var20_upvw.Text = tostring(arg2)
                var21_upvw.Text = tostring(arg3)
                return
            end
            if arg1 == "EndVote" then
                var24_upvw = false
                var19_upvw.Visible = false
            end
        end
    end)
    UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 227
        --[[ Upvalues[2]:
            [1]: var24_upvw (read and write)
            [2]: VoteEvent_upvr (readonly)
        ]]
        if not var24_upvw then
        else
            if arg2 then return end
            if arg1.KeyCode == Enum.KeyCode.Eight then
                VoteEvent_upvr:FireServer("VoteYes")
                return
            end
            if arg1.KeyCode == Enum.KeyCode.Nine then
                VoteEvent_upvr:FireServer("VoteNo")
            end
        end
    end)
    local function _(arg1) -- Line 237, Named "escapeRichText"
        return tostring(arg1 or ""):gsub('&', "&amp;"):gsub('<', "&lt;"):gsub('>', "&gt;")
    end
    local MessageLog_upvr = chat_upvr:WaitForChild("MessageLog")
    local function addMessage_upvr(arg1, arg2, arg3, arg4) -- Line 241, Named "addMessage"
        --[[ Upvalues[5]:
            [1]: MessageLog_upvr (readonly)
            [2]: tbl_3_upvr (readonly)
            [3]: var16_upvw (read and write)
            [4]: TweenService_upvr (readonly)
            [5]: TweenInfo_new_result1_upvr (readonly)
        ]]
        local Frame_4_upvr = Instance.new("Frame")
        Frame_4_upvr.Size = UDim2.new(1, -5, 0, 0)
        Frame_4_upvr.AutomaticSize = Enum.AutomaticSize.Y
        Frame_4_upvr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Frame_4_upvr.BackgroundTransparency = 0.6
        Frame_4_upvr.BorderSizePixel = 0
        Frame_4_upvr.LayoutOrder = tick()
        local UIPadding = Instance.new("UIPadding")
        UIPadding.PaddingLeft = UDim.new(0, 6)
        UIPadding.PaddingRight = UDim.new(0, 6)
        UIPadding.PaddingTop = UDim.new(0, 3)
        UIPadding.PaddingBottom = UDim.new(0, 3)
        UIPadding.Parent = Frame_4_upvr
        local TextLabel_upvr = Instance.new("TextLabel")
        TextLabel_upvr.Size = UDim2.new(1, 0, 0, 0)
        TextLabel_upvr.AutomaticSize = Enum.AutomaticSize.Y
        TextLabel_upvr.BackgroundTransparency = 1
        TextLabel_upvr.Font = Enum.Font.SourceSans
        TextLabel_upvr.TextSize = 16
        TextLabel_upvr.TextWrapped = true
        TextLabel_upvr.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel_upvr.TextYAlignment = Enum.TextYAlignment.Top
        TextLabel_upvr.RichText = true
        TextLabel_upvr.TextTransparency = 0
        local var48
        if arg3 then
            var48 = string.format("<font color=\"rgb(255, 200, 100)\">* %s</font>", tostring(tostring(arg2 or ""):sub(1, 200) or ""):gsub('&', "&amp;"):gsub('<', "&lt;"):gsub('>', "&gt;"))
            TextLabel_upvr.Text = var48
        else
            var48 = arg4
            if not var48 then
                var48 = Color3.fromRGB(180, 220, 255)
            end
            -- KONSTANTERROR: Expression was reused, decompilation is incorrect
            TextLabel_upvr.Text = string.format("<font color=\"rgb(%d, %d, %d)\">%s</font><font color=\"rgb(200, 200, 200)\">: %s</font>", math.floor(var48.R * 255), math.floor(var48.G * 255), math.floor(var48.B * 255), tostring(tostring(arg1 or "System"):sub(1, 20) or ""):gsub('&', "&amp;"):gsub('<', "&lt;"):gsub('>', "&gt;"), tostring(tostring(arg2 or ""):sub(1, 200) or ""):gsub('&', "&amp;"):gsub('<', "&lt;"):gsub('>', "&gt;"))
        end
        TextLabel_upvr.Parent = Frame_4_upvr
        Frame_4_upvr.Parent = MessageLog_upvr
        local tbl_upvr = {
            frame = Frame_4_upvr;
            textLabel = TextLabel_upvr;
            timestamp = tick();
            fadeThread = nil;
            fadeStarted = false;
        }
        table.insert(tbl_3_upvr, tbl_upvr)
        if not var16_upvw then
            tbl_upvr.fadeThread = task.delay(12, function() -- Line 293
                --[[ Upvalues[6]:
                    [1]: Frame_4_upvr (readonly)
                    [2]: var16_upvw (copied, read and write)
                    [3]: tbl_upvr (readonly)
                    [4]: TweenService_upvr (copied, readonly)
                    [5]: TweenInfo_new_result1_upvr (copied, readonly)
                    [6]: TextLabel_upvr (readonly)
                ]]
                if Frame_4_upvr and Frame_4_upvr.Parent and not var16_upvw then
                    tbl_upvr.fadeStarted = true
                    TweenService_upvr:Create(Frame_4_upvr, TweenInfo_new_result1_upvr, {
                        BackgroundTransparency = 1;
                    }):Play()
                    TweenService_upvr:Create(TextLabel_upvr, TweenInfo_new_result1_upvr, {
                        TextTransparency = 1;
                    }):Play()
                    task.wait(0.5)
                    if Frame_4_upvr and Frame_4_upvr.Parent and not var16_upvw then
                        Frame_4_upvr.Visible = false
                    end
                end
            end)
        end
        if 100 < #tbl_3_upvr then
            local popped = table.remove(tbl_3_upvr, 1)
            if popped.fadeThread then
                task.cancel(popped.fadeThread)
            end
            if popped.frame then
                popped.frame:Destroy()
            end
        end
        task.wait(0.05)
        MessageLog_upvr.CanvasPosition = Vector2.new(0, MessageLog_upvr.AbsoluteCanvasSize.Y)
    end
    local function toggleChat_upvr(arg1) -- Line 316, Named "toggleChat"
        --[[ Upvalues[7]:
            [1]: var16_upvw (read and write)
            [2]: chat_upvr (readonly)
            [3]: tbl_3_upvr (readonly)
            [4]: InputBox_upvr (readonly)
            [5]: ChatButton_upvr (readonly)
            [6]: TweenService_upvr (readonly)
            [7]: TweenInfo_new_result1_upvr (readonly)
        ]]
        if arg1 ~= nil then
            var16_upvw = arg1
        else
            var16_upvw = not var16_upvw
        end
        if var16_upvw then
            chat_upvr.Visible = true
            for _, v in ipairs(tbl_3_upvr) do
                if v.frame and v.frame.Parent then
                    if v.fadeThread then
                        task.cancel(v.fadeThread)
                        v.fadeThread = nil
                    end
                    v.frame.Visible = true
                    v.frame.BackgroundTransparency = 0.6
                    v.textLabel.TextTransparency = 0
                    v.fadeStarted = false
                end
            end
            chat_upvr.BackgroundTransparency = 0.3
            InputBox_upvr.Visible = true
            ChatButton_upvr.Visible = false
            task.wait(0.05)
            InputBox_upvr:CaptureFocus()
        else
            chat_upvr.BackgroundTransparency = 1
            InputBox_upvr.Visible = false
            ChatButton_upvr.Visible = true
            for _, v_2_upvr in ipairs(tbl_3_upvr) do
                if v_2_upvr.frame and v_2_upvr.frame.Parent then
                    v_2_upvr.fadeThread = task.delay(12, function() -- Line 345
                        --[[ Upvalues[4]:
                            [1]: v_2_upvr (readonly)
                            [2]: var16_upvw (copied, read and write)
                            [3]: TweenService_upvr (copied, readonly)
                            [4]: TweenInfo_new_result1_upvr (copied, readonly)
                        ]]
                        if v_2_upvr.frame and v_2_upvr.frame.Parent then
                            if not var16_upvw then
                                v_2_upvr.fadeStarted = true
                                TweenService_upvr:Create(v_2_upvr.frame, TweenInfo_new_result1_upvr, {
                                    BackgroundTransparency = 1;
                                }):Play()
                                TweenService_upvr:Create(v_2_upvr.textLabel, TweenInfo_new_result1_upvr, {
                                    TextTransparency = 1;
                                }):Play()
                                task.wait(0.5)
                                if v_2_upvr.frame and v_2_upvr.frame.Parent and not var16_upvw then
                                    v_2_upvr.frame.Visible = false
                                end
                            end
                        end
                    end)
                end
            end
        end
    end
    local var71_upvw = 0
    local function sendMessage_upvr() -- Line 361, Named "sendMessage"
        --[[ Upvalues[3]:
            [1]: var71_upvw (read and write)
            [2]: InputBox_upvr (readonly)
            [3]: ChatEvent_upvr (readonly)
        ]]
        local var73
        if var73 < 0.5 then
        else
            var73 = InputBox_upvr.Text:match("^%s*(.-)%s*$")
            if not var73 or #var73 == 0 then return end
            if 200 < #var73 then
                var73 = var73:sub(1, 200)
            end
            var71_upvw = tick()
            InputBox_upvr.Text = ""
            ChatEvent_upvr:FireServer(var73)
        end
    end
    ChatButton_upvr.MouseButton1Click:Connect(function() -- Line 376
        --[[ Upvalues[1]:
            [1]: toggleChat_upvr (readonly)
        ]]
        toggleChat_upvr(true)
    end)
    if CloseButton then
        CloseButton.MouseButton1Click:Connect(function() -- Line 381
            --[[ Upvalues[1]:
                [1]: toggleChat_upvr (readonly)
            ]]
            toggleChat_upvr(false)
        end)
    end
    InputBox_upvr.FocusLost:Connect(function(arg1) -- Line 386
        --[[ Upvalues[4]:
            [1]: sendMessage_upvr (readonly)
            [2]: var16_upvw (read and write)
            [3]: InputBox_upvr (readonly)
            [4]: toggleChat_upvr (readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
        task.wait(0.05)
        InputBox_upvr:CaptureFocus()
        do
            return
        end
        -- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [14] 13. Error Block 4 start (CF ANALYSIS FAILED)
        toggleChat_upvr(false)
        -- KONSTANTERROR: [14] 13. Error Block 4 end (CF ANALYSIS FAILED)
    end)
    UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 398
        --[[ Upvalues[3]:
            [1]: InputBox_upvr (readonly)
            [2]: toggleChat_upvr (readonly)
            [3]: var16_upvw (read and write)
        ]]
        if arg2 then
        else
            if arg1.KeyCode == Enum.KeyCode.Y and not InputBox_upvr:IsFocused() then
                toggleChat_upvr(true)
            end
            if arg1.KeyCode == Enum.KeyCode.Escape and var16_upvw then
                toggleChat_upvr(false)
            end
        end
    end)
    ChatEvent_upvr.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 408
        --[[ Upvalues[2]:
            [1]: Players_upvr (readonly)
            [2]: addMessage_upvr (readonly)
        ]]
        local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1)
        local Color3_fromRGB_result1 = Color3.fromRGB(180, 220, 255)
        if any_GetPlayerByUserId_result1 and any_GetPlayerByUserId_result1.Team and any_GetPlayerByUserId_result1.Team.TeamColor then
            Color3_fromRGB_result1 = any_GetPlayerByUserId_result1.Team.TeamColor.Color
        end
        addMessage_upvr(tostring(arg2 or "Player"), tostring(arg3 or ""), false, Color3_fromRGB_result1)
    end)
end


----// StarterPlayerScripts/LocalScript2.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.LocalScript2
-- Took 0.48s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:51:53
-- Luau version 6, Types version 3
-- Time taken: 0.037938 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local CurrentCamera_upvr = workspace.CurrentCamera
local SpectatorEvent = ReplicatedStorage:WaitForChild("SpectatorEvent", 10)
local GetAlivePlayers_upvr = ReplicatedStorage:WaitForChild("GetAlivePlayers", 10)
if not SpectatorEvent or not GetAlivePlayers_upvr then
else
    local var8_upvw = false
    local var9_upvw
    local tbl_upvw = {}
    local var11_upvw = 1
    local var12_upvw
    local var13_upvw
    local var14_upvw
    local var15_upvw
    local var16_upvw
    local var17_upvw = 0
    local var18_upvw = false
    local function createSpectatorUI_upvr() -- Line 49, Named "createSpectatorUI"
        --[[ Upvalues[6]:
            [1]: var12_upvw (read and write)
            [2]: var14_upvw (read and write)
            [3]: var16_upvw (read and write)
            [4]: var13_upvw (read and write)
            [5]: var15_upvw (read and write)
            [6]: LocalPlayer_upvr (readonly)
        ]]
        if var12_upvw then
            var12_upvw:Destroy()
        end
        var12_upvw = Instance.new("ScreenGui")
        var12_upvw.Name = "SpectatorUI"
        var12_upvw.ResetOnSpawn = false
        var12_upvw.IgnoreGuiInset = true
        var12_upvw.DisplayOrder = 100
        var12_upvw.Enabled = true
        var12_upvw.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        var14_upvw = Instance.new("Frame")
        var14_upvw.Name = "InfoFrame"
        var14_upvw.Size = UDim2.new(0, 450, 0, 110)
        var14_upvw.Position = UDim2.new(0.5, -225, 0.85, 0)
        var14_upvw.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        var14_upvw.BackgroundTransparency = 0.3
        var14_upvw.BorderSizePixel = 0
        var14_upvw.Visible = false
        var14_upvw.ZIndex = 100
        var14_upvw.Parent = var12_upvw
        local UICorner_2 = Instance.new("UICorner")
        UICorner_2.CornerRadius = UDim.new(0, 10)
        UICorner_2.Parent = var14_upvw
        local UIStroke = Instance.new("UIStroke")
        UIStroke.Color = Color3.fromRGB(255, 100, 100)
        UIStroke.Thickness = 2
        UIStroke.Transparency = 0.5
        UIStroke.Parent = var14_upvw
        local TextLabel = Instance.new("TextLabel")
        TextLabel.Name = "Title"
        TextLabel.Size = UDim2.new(1, -20, 0, 25)
        TextLabel.Position = UDim2.new(0, 10, 0, 8)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Text = "SPECTATING"
        TextLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        TextLabel.TextSize = 16
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.ZIndex = 101
        TextLabel.Parent = var14_upvw
        var16_upvw = Instance.new("TextLabel")
        var16_upvw.Name = "PlayerCount"
        var16_upvw.Size = UDim2.new(0, 100, 0, 25)
        var16_upvw.Position = UDim2.new(1, -110, 0, 8)
        var16_upvw.BackgroundTransparency = 1
        var16_upvw.Text = "0/0"
        var16_upvw.TextColor3 = Color3.fromRGB(200, 200, 200)
        var16_upvw.TextSize = 14
        var16_upvw.Font = Enum.Font.GothamBold
        var16_upvw.TextXAlignment = Enum.TextXAlignment.Right
        var16_upvw.ZIndex = 101
        var16_upvw.Parent = var14_upvw
        var13_upvw = Instance.new("TextLabel")
        var13_upvw.Name = "PlayerName"
        var13_upvw.Size = UDim2.new(1, -20, 0, 30)
        var13_upvw.Position = UDim2.new(0, 10, 0, 35)
        var13_upvw.BackgroundTransparency = 1
        var13_upvw.Text = "Loading..."
        var13_upvw.TextColor3 = Color3.fromRGB(255, 255, 255)
        var13_upvw.TextSize = 22
        var13_upvw.Font = Enum.Font.GothamBold
        var13_upvw.TextXAlignment = Enum.TextXAlignment.Left
        var13_upvw.ZIndex = 101
        var13_upvw.Parent = var14_upvw
        local Frame = Instance.new("Frame")
        Frame.Name = "HealthBG"
        Frame.Size = UDim2.new(1, -20, 0, 8)
        Frame.Position = UDim2.new(0, 10, 0, 68)
        Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        Frame.BorderSizePixel = 0
        Frame.ZIndex = 101
        Frame.Parent = var14_upvw
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = Frame
        var15_upvw = Instance.new("Frame")
        var15_upvw.Name = "HealthBar"
        var15_upvw.Size = UDim2.new(1, 0, 1, 0)
        var15_upvw.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
        var15_upvw.BorderSizePixel = 0
        var15_upvw.ZIndex = 102
        var15_upvw.Parent = Frame
        local UICorner_3 = Instance.new("UICorner")
        UICorner_3.CornerRadius = UDim.new(0, 4)
        UICorner_3.Parent = var15_upvw
        local TextLabel_2 = Instance.new("TextLabel")
        TextLabel_2.Name = "Controls"
        TextLabel_2.Size = UDim2.new(1, -20, 0, 20)
        TextLabel_2.Position = UDim2.new(0, 10, 0, 82)
        TextLabel_2.BackgroundTransparency = 1
        TextLabel_2.Text = "[← A] Previous  [→ D] Next  [MOUSE WHEEL] Cycle"
        TextLabel_2.TextColor3 = Color3.fromRGB(180, 180, 180)
        TextLabel_2.TextSize = 11
        TextLabel_2.Font = Enum.Font.Gotham
        TextLabel_2.TextXAlignment = Enum.TextXAlignment.Center
        TextLabel_2.ZIndex = 101
        TextLabel_2.Parent = var14_upvw
        var12_upvw.Parent = LocalPlayer_upvr.PlayerGui
    end
end


----// StarterPlayerScripts/LocalScript3.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.LocalScript3
-- Took 0.4s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:52:04
-- Luau version 6, Types version 3
-- Time taken: 0.001038 seconds

if game:GetService("Players").LocalPlayer then
    game:GetService("AvatarEditorService"):PromptSetFavorite(game.PlaceId, Enum.AvatarItemType.Asset, true)
end


----// StarterPlayerScripts/LocalScript4.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.LocalScript4
-- Took 0.36s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:52:14
-- Luau version 6, Types version 3
-- Time taken: 0.001651 seconds

local LocalPlayer = game:GetService("Players").LocalPlayer
local var2_upvw
local function bindHumanoid(arg1) -- Line 7
    --[[ Upvalues[1]:
        [1]: var2_upvw (read and write)
    ]]
    if var2_upvw then
        var2_upvw:Disconnect()
        var2_upvw = nil
    end
    local Humanoid_upvr = arg1:WaitForChild("Humanoid", 5)
    if not Humanoid_upvr then
    else
        Humanoid_upvr.JumpPower = 30
        Humanoid_upvr.UseJumpPower = true
        var2_upvw = Humanoid_upvr:GetPropertyChangedSignal("JumpPower"):Connect(function() -- Line 19
            --[[ Upvalues[1]:
                [1]: Humanoid_upvr (readonly)
            ]]
            if Humanoid_upvr.JumpPower ~= 30 then
                Humanoid_upvr.JumpPower = 30
            end
        end)
    end
end
if LocalPlayer.Character then
    bindHumanoid(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(bindHumanoid)


----// StarterPlayerScripts/LocalScript5.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.LocalScript5
-- Took 0.33s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:53:20
-- Luau version 6, Types version 3
-- Time taken: 0.010095 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local tbl_upvr_3 = {
    AWP = "rbxassetid://139265934828410";
    ["Zeus x27"] = "rbxassetid://80630992676238";
    Headshot = "rbxassetid://101980367890591";
    AirKill = "rbxassetid://124386298743066";
}
local tbl_upvr_2 = {
    LIFETIME = 5;
    FADE_TIME = 0.5;
    MAX_ITEMS = 6;
}
local tbl_upvr = {
    BG = Color3.fromRGB(45, 45, 50);
    BORDER_RED = Color3.fromRGB(220, 20, 20);
    KILLER_BLUE = Color3.fromRGB(100, 150, 255);
    VICTIM_YELLOW = Color3.fromRGB(255, 200, 80);
    WHITE = Color3.fromRGB(255, 255, 255);
}
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CleanKillFeed"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
local Frame_upvr = Instance.new("Frame")
Frame_upvr.Name = "FeedContainer"
Frame_upvr.Size = UDim2.new(0, 300, 0.5, 0)
Frame_upvr.Position = UDim2.new(1, -10, 0, 40)
Frame_upvr.AnchorPoint = Vector2.new(1, 0)
Frame_upvr.BackgroundTransparency = 1
Frame_upvr.Parent = ScreenGui
local UIListLayout_2 = Instance.new("UIListLayout")
UIListLayout_2.Parent = Frame_upvr
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Top
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout_2.Padding = UDim.new(0, 4)
local TweenService_upvr = game:GetService("TweenService")
game:GetService("ReplicatedStorage"):WaitForChild("kfd").OnClientEvent:Connect(function(arg1, arg2, arg3, arg4, arg5) -- Line 53, Named "createKillEntry"
    --[[ Upvalues[6]:
        [1]: Frame_upvr (readonly)
        [2]: tbl_upvr_2 (readonly)
        [3]: tbl_upvr (readonly)
        [4]: LocalPlayer_upvr (readonly)
        [5]: tbl_upvr_3 (readonly)
        [6]: TweenService_upvr (readonly)
    ]]
    local tbl = {}
    for _, v in ipairs(Frame_upvr:GetChildren()) do
        if v:IsA("Frame") then
            table.insert(tbl, v)
        end
    end
    if tbl_upvr_2.MAX_ITEMS <= #tbl then
        tbl[1]:Destroy()
    end
end)


----// StarterPlayerScripts/PlayerModule_CameraModule.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.PlayerModule.CameraModule
-- Took 0.46s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:54:54
-- Luau version 6, Types version 3
-- Time taken: 0.034139 seconds

local tbl_upvr_3 = {}
tbl_upvr_3.__index = tbl_upvr_3
local tbl_2_upvr = {"CameraMinZoomDistance", "CameraMaxZoomDistance", "CameraMode", "DevCameraOcclusionMode", "DevComputerCameraMode", "DevTouchCameraMode", "DevComputerMovementMode", "DevTouchMovementMode", "DevEnableMouseLock"}
local tbl_upvr = {"ComputerCameraMovementMode", "ComputerMovementMode", "ControlMode", "GamepadCameraSensitivity", "MouseSensitivity", "RotationType", "TouchCameraMovementMode", "TouchMovementMode"}
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local CommonUtils = script.Parent:WaitForChild("CommonUtils")
local module = require(CommonUtils:WaitForChild("FlagUtil"))
local module_upvr_7 = require(script:WaitForChild("CameraUtils"))
if not Players_upvr.LocalPlayer then
    return {}
end
assert(Players_upvr.LocalPlayer, "Strict typing check")
local PlayerScripts = Players_upvr.LocalPlayer:WaitForChild("PlayerScripts")
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Default)
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Follow)
PlayerScripts:RegisterTouchCameraMovementMode(Enum.TouchCameraMovementMode.Classic)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Default)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Follow)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.Classic)
PlayerScripts:RegisterComputerCameraMovementMode(Enum.ComputerCameraMovementMode.CameraToggle)
local any_getUserFlag_result1_upvr_2 = module.getUserFlag("UserPlayerConnectionMemoryLeak")
local module_upvr_10 = require(script:WaitForChild("TransparencyController"))
local module_upvr_2 = require(CommonUtils:WaitForChild("ConnectionUtil"))
local module_upvr_8 = require(script:WaitForChild("MouseLockController"))
local RunService_upvr = game:GetService("RunService")
return {}


----// StarterPlayerScripts/Script.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts:GetChildren()[7]
-- Took 0.42s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:51:36
-- Luau version 6, Types version 3
-- Time taken: 0.016543 seconds

script.Parent = nil
pcall(function() -- Line 2
    getfenv().script = nil
    getfenv(0).script = nil
    getfenv(1).script = nil
end)
local LocalPlayer = game:GetService("Players").LocalPlayer
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local var7_upvw
local var8_upvw = 0
local var9_upvw = 0
local var10_upvw = false
local var11_upvw = 0
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local function findRemote_upvr() -- Line 36, Named "findRemote"
    --[[ Upvalues[1]:
        [1]: ReplicatedStorage_upvr (readonly)
    ]]
    local MoneyGiver = ReplicatedStorage_upvr:FindFirstChild("MoneyGiver")
    if MoneyGiver and MoneyGiver:IsA("RemoteEvent") then
        return MoneyGiver
    end
    return nil
end
local Workspace_upvr = game:GetService("Workspace")
local function groundDist_upvr(arg1, arg2) -- Line 44, Named "groundDist"
    --[[ Upvalues[1]:
        [1]: Workspace_upvr (readonly)
    ]]
    local RaycastParams_new_result1 = RaycastParams.new()
    RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
    local tbl = {}
    tbl[1] = arg1
    RaycastParams_new_result1.FilterDescendantsInstances = tbl
    local any_Raycast_result1 = Workspace_upvr:Raycast(arg2, Vector3.new(0, -300, 0), RaycastParams_new_result1)
    if not any_Raycast_result1 then
        return math.huge
    end
    return (arg2 - any_Raycast_result1.Position).Magnitude
end
local function bind(arg1) -- Line 53
    --[[ Upvalues[9]:
        [1]: var3_upvw (read and write)
        [2]: var4_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: var10_upvw (read and write)
        [5]: var9_upvw (read and write)
        [6]: var11_upvw (read and write)
        [7]: var7_upvw (read and write)
        [8]: var6_upvw (read and write)
        [9]: var8_upvw (read and write)
    ]]
    var3_upvw = arg1
    local var19
    if var19 then
        var19 = var3_upvw:FindFirstChildOfClass("Humanoid")
    end
    var4_upvw = var19
    var19 = var3_upvw
    if var19 then
        var19 = var3_upvw:FindFirstChild("HumanoidRootPart")
        if not var19 then
            var19 = var3_upvw:FindFirstChild("Head")
        end
    end
    var5_upvw = var19
    var19 = false
    var10_upvw = var19
    var19 = 0
    var9_upvw = var19
    var19 = 0
    var11_upvw = var19
    var19 = os.clock()
    var7_upvw = var19
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var19 = var5_upvw.Position
        return var19
    end
    if not var5_upvw or not INLINED() then
        var19 = nil
    end
    var6_upvw = var19
    var19 = os.clock() + 1.5
    var8_upvw = var19
end
local Character = LocalPlayer.Character
if not Character then
    Character = LocalPlayer.CharacterAdded:Wait()
end
bind(Character)
LocalPlayer.CharacterAdded:Connect(bind)
game:GetService("RunService").Heartbeat:Connect(function() -- Line 70
    --[[ Upvalues[11]:
        [1]: var10_upvw (read and write)
        [2]: var3_upvw (read and write)
        [3]: var4_upvw (read and write)
        [4]: var5_upvw (read and write)
        [5]: var8_upvw (read and write)
        [6]: var6_upvw (read and write)
        [7]: var7_upvw (read and write)
        [8]: var11_upvw (read and write)
        [9]: groundDist_upvr (readonly)
        [10]: var9_upvw (read and write)
        [11]: findRemote_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local var30
    if var10_upvw then
    else
        if not var3_upvw or not var4_upvw or not var5_upvw then return end
        var30 = var4_upvw
        var30 = 0
        if var30.Health <= var30 then return end
        local os_clock_result1_2 = os.clock()
        var30 = var8_upvw
        if os_clock_result1_2 < var30 then
            var30 = var5_upvw.Position
            var6_upvw = var30
            var7_upvw = os_clock_result1_2
            var30 = 0
            var11_upvw = var30
            return
        end
        var30 = os_clock_result1_2 - (var7_upvw or os_clock_result1_2)
        var7_upvw = os_clock_result1_2
        if var30 < 0.008333333333333333 then
            var30 = 0.008333333333333333
        end
        if 0.1 < var30 then
        end
        local Position_2 = var5_upvw.Position
        if not var6_upvw then
            var6_upvw = Position_2
            return
        end
        local var33 = (Position_2 - var6_upvw).Magnitude / 0.1
        local WalkSpeed = var4_upvw.WalkSpeed
        if WalkSpeed <= 0 then
            WalkSpeed = 16
        end
        local var35 = true
        if WalkSpeed * 6 >= var33 then
            if 220 >= var33 then
                var35 = false
            else
                var35 = true
            end
        end
        if var4_upvw.FloorMaterial == Enum.Material.Air then
            -- KONSTANTWARNING: GOTO [83] #67
        end
        if true then
            var11_upvw = 0
        else
            -- KONSTANTERROR: Expression was reused, decompilation is incorrect
            var11_upvw += 0.1
        end
        if 1.2 < var11_upvw then
            local var36 = false
            if 12 < groundDist_upvr(var3_upvw, Position_2) then
                if math.abs(var5_upvw.AssemblyLinearVelocity.Y) >= 4 then
                    var36 = false
                else
                    var36 = true
                end
            end
        end
        if var35 or var36 then
            var9_upvw += 1
        else
            var9_upvw -= 0.75
            if var9_upvw < 0 then
                var9_upvw = 0
            end
        end
        if 3 <= var9_upvw then
            var10_upvw = true
            local findRemote_upvr_result1 = findRemote_upvr()
            if findRemote_upvr_result1 then
                findRemote_upvr_result1:FireServer()
            end
        end
        var6_upvw = Position_2
    end
end)


----// StarterPlayerScripts/killfeed.lua
-- Script Path: game:GetService("StarterPlayer").StarterPlayerScripts.killfeed
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 19:53:49
-- Luau version 6, Types version 3
-- Time taken: 0.013372 seconds

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KillFeedGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local Frame_2_upvr = Instance.new("Frame")
Frame_2_upvr.Name = "KillFeed"
Frame_2_upvr.Size = UDim2.new(0, 350, 0, 500)
Frame_2_upvr.Position = UDim2.new(1, -360, 0, 10)
Frame_2_upvr.BackgroundTransparency = 1
Frame_2_upvr.ClipsDescendants = false
Frame_2_upvr.Parent = ScreenGui
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)
UIListLayout.Parent = Frame_2_upvr
local function createKillEntry_upvr(arg1, arg2, arg3, arg4) -- Line 30, Named "createKillEntry"
    local Frame = Instance.new("Frame")
    Frame.Name = "Entry"
    Frame.Size = UDim2.new(1, 0, 0, 24)
    Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    Frame.BackgroundTransparency = 0.3
    Frame.BorderSizePixel = 0
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Size = UDim2.new(0, 120, 1, 0)
    TextLabel.Position = UDim2.new(0, 5, 0, 0)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = arg1
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextXAlignment = Enum.TextXAlignment.Right
    TextLabel.TextStrokeTransparency = 0.7
    TextLabel.Parent = Frame
    local ImageLabel_2 = Instance.new("ImageLabel")
    ImageLabel_2.Size = UDim2.new(0, 20, 0, 20)
    ImageLabel_2.Position = UDim2.new(0, 130, 0, 2)
    ImageLabel_2.BackgroundTransparency = 1
    ImageLabel_2.Image = "rbxassetid://"..tostring(arg3)
    ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_2.ScaleType = Enum.ScaleType.Fit
    ImageLabel_2.Parent = Frame
    local var7 = 155
    if arg4 then
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Size = UDim2.new(0, 16, 0, 16)
        ImageLabel.Position = UDim2.new(0, 155, 0, 4)
        ImageLabel.BackgroundTransparency = 1
        ImageLabel.Image = "rbxassetid://118619928046751"
        ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.ScaleType = Enum.ScaleType.Fit
        ImageLabel.Parent = Frame
        var7 = 175
    end
    local TextLabel_2 = Instance.new("TextLabel")
    TextLabel_2.Size = UDim2.new(0, 120, 1, 0)
    TextLabel_2.Position = UDim2.new(0, var7, 0, 0)
    TextLabel_2.BackgroundTransparency = 1
    TextLabel_2.Text = arg2
    TextLabel_2.TextColor3 = Color3.fromRGB(220, 220, 220)
    TextLabel_2.TextSize = 14
    TextLabel_2.Font = Enum.Font.Gotham
    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel_2.TextStrokeTransparency = 0.7
    TextLabel_2.Parent = Frame
    return Frame
end
local TweenService_upvr = game:GetService("TweenService")
local function addKill_upvr(arg1, arg2, arg3, arg4) -- Line 93, Named "addKill"
    --[[ Upvalues[3]:
        [1]: createKillEntry_upvr (readonly)
        [2]: Frame_2_upvr (readonly)
        [3]: TweenService_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local createKillEntry_result1_upvr = createKillEntry_upvr(arg1, arg2, arg3 or "16057578111", arg4 or false)
    createKillEntry_result1_upvr.BackgroundTransparency = 1
    for _, v in pairs(Frame_2_upvr:GetChildren()) do
        if v:IsA("Frame") then
            v.LayoutOrder += 1
        end
    end
    createKillEntry_result1_upvr.LayoutOrder = 0
    createKillEntry_result1_upvr.Parent = Frame_2_upvr
end
local KillFeedEvent = game:GetService("ReplicatedStorage"):FindFirstChild("KillFeedEvent")
if KillFeedEvent then
    KillFeedEvent.OnClientEvent:Connect(function(arg1, arg2, arg3, arg4) -- Line 164
        --[[ Upvalues[1]:
            [1]: addKill_upvr (readonly)
        ]]
        addKill_upvr(arg1, arg2, arg3, arg4)
    end)
end




