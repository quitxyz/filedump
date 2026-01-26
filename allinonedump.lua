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


--// WorkspaceLocalPlayer
----// WorkspaceLocalPlayer/Animate.lua
-- Script Path: game:GetService("Workspace").Komarhvh.Animate
-- Took 0.55s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:25
-- Luau version 6, Types version 3
-- Time taken: 0.066486 seconds

local Parent_upvr = script.Parent
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local var11_upvw = "Standing"
local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 7
    return UserSettings():IsUserFeatureEnabled("UserNoUpdateOnLoop")
end)
local var15_upvr = pcall_result1_3 and pcall_result2_2
local pcall_result1_2, pcall_result2 = pcall(function() -- Line 10
    return UserSettings():IsUserFeatureEnabled("UserAnimateScaleRun")
end)
local var19_upvr = pcall_result1_2 and pcall_result2
local function getRigScale_upvr() -- Line 13, Named "getRigScale"
    --[[ Upvalues[2]:
        [1]: var19_upvr (readonly)
        [2]: Parent_upvr (readonly)
    ]]
    if var19_upvr then
        return Parent_upvr:GetScale()
    end
    return 1
end


----// WorkspaceLocalPlayer/Crouch.lua
-- Script Path: Nil parented
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:37
-- Luau version 6, Types version 3
-- Time taken: 0.012507 seconds

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


----// WorkspaceLocalPlayer/Crouch2.lua
-- Script Path: game:GetService("Workspace").Komarhvh:GetChildren()[11]
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:59
-- Luau version 6, Types version 3
-- Time taken: 0.012074 seconds

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


----// WorkspaceLocalPlayer/DeathSound.lua
-- Script Path: game:GetService("Workspace").Komarhvh.LocalScript1
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:38:03
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


----// WorkspaceLocalPlayer/GunClient.lua
-- Script Path: game:GetService("Workspace").FATTg00s3["SSG-08"].GunClient
-- Took 0.65s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:36:24
-- Luau version 6, Types version 3
-- Time taken: 0.169179 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Debris_upvr = game:GetService("Debris")
local Parent_4_upvr = script.Parent
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Configuration_upvr = Parent_4_upvr:WaitForChild("Configuration")
local Remotes = Parent_4_upvr:WaitForChild("Remotes")
local FireShot_upvr = Remotes:WaitForChild("FireShot")
local GunGui_upvr = script:WaitForChild("GunGui")
local var10_upvw = true
local var11_upvw = false
local var12_upvw = false
local var13_upvw
local var14_upvw
local var15_upvw = false
local var16_upvw = Vector3.new(0, 0, 0)
local CurrentCamera_upvr = workspace.CurrentCamera
local var18_upvw
local var19_upvw
local var20_upvw
local var21_upvw = false
local var22_upvw = true
local var23_upvw
local function _() -- Line 42, Named "checkScopeConfig"
    --[[ Upvalues[2]:
        [1]: ReplicatedStorage_upvr (readonly)
        [2]: var22_upvw (read and write)
    ]]
    local cfgg = ReplicatedStorage_upvr:FindFirstChild("cfgg")
    if cfgg then
        local scope_4 = cfgg:FindFirstChild("scope")
        if scope_4 then
            var22_upvw = scope_4.Value
            return var22_upvw
        end
    end
    return true
end


----// WorkspaceLocalPlayer/JumpAndLandEffects.lua
-- Script Path: game:GetService("Workspace").Komarhvh.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 20:37:52
-- Luau version 6, Types version 3
-- Time taken: 0.016362 seconds

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


--// XEClient
----// XEClient/antiaim_AntiAim_1769302088.lua
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


----// XEClient/antiaim_DefensiveAntiAim_1769302126.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle2.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:48:32
-- Luau version 6, Types version 3
-- Time taken: 0.019207 seconds

local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local aahelp1_upvr = game:GetService("ReplicatedStorage"):WaitForChild("aahelp1")
local jitters = script.Parent.Parent:FindFirstChild("jitters")
local var6_upvw
local function INLINED() -- Internal function, doesn't exist in bytecode
    var6_upvw = jitters.Value
    return var6_upvw
end
if not jitters or not INLINED() then
    var6_upvw = 0.5
end
local var7_upvw = false
local var8_upvw
local const_number_upvw = 0
local tbl_upvr = {{
    pitch = -50;
    yaw = 0;
}, {
    pitch = 50;
    yaw = 0;
}, {
    pitch = 0;
    yaw = -60;
}, {
    pitch = 0;
    yaw = 60;
}, {
    pitch = -40;
    yaw = 40;
}, {
    pitch = 40;
    yaw = -40;
}, {
    pitch = -30;
    yaw = -30;
}, {
    pitch = 30;
    yaw = 30;
}, {
    pitch = 0;
    yaw = -90;
}, {
    pitch = 0;
    yaw = 90;
}}
if jitters then
    jitters.Changed:Connect(function(arg1) -- Line 41
        --[[ Upvalues[1]:
            [1]: var6_upvw (read and write)
        ]]
        var6_upvw = arg1
    end)
end
local function _(arg1) -- Line 46, Named "isJumping"
    local Humanoid = arg1:FindFirstChild("Humanoid")
    if not Humanoid then
        return false
    end
    local any_GetState_result1_2 = Humanoid:GetState()
    local var27 = true
    if any_GetState_result1_2 ~= Enum.HumanoidStateType.Jumping then
        var27 = true
        if any_GetState_result1_2 ~= Enum.HumanoidStateType.Freefall then
            if any_GetState_result1_2 ~= Enum.HumanoidStateType.Flying then
                var27 = false
            else
                var27 = true
            end
        end
    end
    return var27
end
local function _() -- Line 55, Named "startLoop"
    --[[ Upvalues[8]:
        [1]: var8_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: var7_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
        [5]: const_number_upvw (read and write)
        [6]: var6_upvw (read and write)
        [7]: tbl_upvr (readonly)
        [8]: aahelp1_upvr (readonly)
    ]]
    if var8_upvw then
        var8_upvw:Disconnect()
    end
    var8_upvw = RunService_upvr.Heartbeat:Connect(function(arg1) -- Line 58
        --[[ Upvalues[7]:
            [1]: var7_upvw (copied, read and write)
            [2]: var8_upvw (copied, read and write)
            [3]: LocalPlayer_upvr (copied, readonly)
            [4]: const_number_upvw (copied, read and write)
            [5]: var6_upvw (copied, read and write)
            [6]: tbl_upvr (copied, readonly)
            [7]: aahelp1_upvr (copied, readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
        if var8_upvw then
            var8_upvw:Disconnect()
        end
        do
            return
        end
        -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
    end)
end
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local defensive_upvr = script.Parent.Parent:FindFirstChild("defensive")
local function setAntiAimEnabled_upvr(arg1, arg2) -- Line 86, Named "setAntiAimEnabled"
    --[[ Upvalues[14]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: defensive_upvr (readonly)
        [8]: aahelp1_upvr (readonly)
        [9]: LocalPlayer_upvr (readonly)
        [10]: var8_upvw (read and write)
        [11]: RunService_upvr (readonly)
        [12]: const_number_upvw (read and write)
        [13]: var6_upvw (read and write)
        [14]: tbl_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    var7_upvw = arg1
    local var34
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var34 = udim2_upvr
        return var34
    end
    if not var7_upvw or not INLINED_2() then
        var34 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var34;
    }):Play()
    if defensive_upvr then
        defensive_upvr.Value = var7_upvw
    end
    if arg1 then
    else
    end
    aahelp1_upvr:FireServer("disable")
    if var7_upvw then
        if LocalPlayer_upvr.Character then
            if var8_upvw then
                var8_upvw:Disconnect()
            end
            var8_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 58
                --[[ Upvalues[7]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: var8_upvw (copied, read and write)
                    [3]: LocalPlayer_upvr (copied, readonly)
                    [4]: const_number_upvw (copied, read and write)
                    [5]: var6_upvw (copied, read and write)
                    [6]: tbl_upvr (copied, readonly)
                    [7]: aahelp1_upvr (copied, readonly)
                ]]
                -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
                if var8_upvw then
                    var8_upvw:Disconnect()
                end
                do
                    return
                end
                -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
            end)
            -- KONSTANTWARNING: GOTO [66] #57
        end
    elseif var8_upvw then
        var8_upvw:Disconnect()
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("DefensiveAntiAim", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 109
    --[[ Upvalues[2]:
        [1]: setAntiAimEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setAntiAimEnabled_upvr(not var7_upvw, true)
end)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 114
    --[[ Upvalues[8]:
        [1]: var8_upvw (read and write)
        [2]: var7_upvw (read and write)
        [3]: RunService_upvr (readonly)
        [4]: LocalPlayer_upvr (readonly)
        [5]: const_number_upvw (read and write)
        [6]: var6_upvw (read and write)
        [7]: tbl_upvr (readonly)
        [8]: aahelp1_upvr (readonly)
    ]]
    if var8_upvw then
        var8_upvw:Disconnect()
    end
    task.wait(0.5)
    if var7_upvw then
        if var8_upvw then
            var8_upvw:Disconnect()
        end
        var8_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_3) -- Line 58
            --[[ Upvalues[7]:
                [1]: var7_upvw (copied, read and write)
                [2]: var8_upvw (copied, read and write)
                [3]: LocalPlayer_upvr (copied, readonly)
                [4]: const_number_upvw (copied, read and write)
                [5]: var6_upvw (copied, read and write)
                [6]: tbl_upvr (copied, readonly)
                [7]: aahelp1_upvr (copied, readonly)
            ]]
            -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
            if var8_upvw then
                var8_upvw:Disconnect()
            end
            do
                return
            end
            -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
        end)
    end
end)
local var40_upvw
if LocalPlayer_upvr.Character and var7_upvw then
    if var40_upvw then
        var40_upvw:Disconnect()
    end
    var40_upvw = RunService_upvr.Heartbeat:Connect(function(arg1) -- Line 58
        --[[ Upvalues[7]:
            [1]: var7_upvw (read and write)
            [2]: var40_upvw (read and write)
            [3]: LocalPlayer_upvr (readonly)
            [4]: const_number_upvw (read and write)
            [5]: var6_upvw (read and write)
            [6]: tbl_upvr (readonly)
            [7]: aahelp1_upvr (readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [2] 3. Error Block 25 start (CF ANALYSIS FAILED)
        if var40_upvw then
            var40_upvw:Disconnect()
        end
        do
            return
        end
        -- KONSTANTERROR: [2] 3. Error Block 25 end (CF ANALYSIS FAILED)
    end)
end
script.Destroying:Connect(function() -- Line 129
    --[[ Upvalues[2]:
        [1]: var40_upvw (read and write)
        [2]: aahelp1_upvr (readonly)
    ]]
    if var40_upvw then
        var40_upvw:Disconnect()
    end
    aahelp1_upvr:FireServer("reset")
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.DefensiveAntiAim = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 138
        --[[ Upvalues[2]:
            [1]: setAntiAimEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "DefensiveAntiAim" then
            setAntiAimEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = Character
        3 [string] = Humanoid
        4 [string] = FindFirstChild
        5 [string] = Health
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = Flying
        15 [string] = math
        16 [string] = random
        18 [string] = apply
        19 [string] = pitch
        20 [string] = yaw
        21 [string] = FireServer
        22 [string] = reset

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

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
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: startLoop

Function Upvalues: startLoop

Function Constants: startLoop
        1 [string] = Disconnect
        2 [string] = Heartbeat
        3 [string] = Connect

====================================================================================================

Function Dump: isJumping

Function Upvalues: isJumping

Function Constants: isJumping
        1 [string] = Humanoid
        2 [string] = FindFirstChild
        3 [string] = GetState
        4 [string] = Enum
        5 [string] = HumanoidStateType
        6 [string] = Jumping
        8 [string] = Freefall
        10 [string] = Flying

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

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
        7 [Instance] = defensive
        8 [Instance] = aahelp1
        9 [Instance] = quit_xyz
        11 [Instance] = Run Service
        12 [number] = 0
        13 [number] = -20
        14 [table]:
        14 [table] table: 0x20539c4e26880fe5
                1 [table]:
                1 [table] table: 0x71fd5478567d0e35
                        1 [number] = -50
                        2 [number] = 0
                2 [table]:
                2 [table] table: 0xcd0c046ac7a20f45
                        1 [number] = 50
                        2 [number] = 0
                3 [table]:
                3 [table] table: 0xdc5db456d7f2f095
                        1 [number] = 0
                        2 [number] = -60
                4 [table]:
                4 [table] table: 0x6aeba48096442ea5
                        1 [number] = 0
                        2 [number] = 60
                5 [table]:
                5 [table] table: 0x37261cb2065b6ef5
                        1 [number] = -40
                        2 [number] = 40
                6 [table]:
                6 [table] table: 0xf857cd3b961a2005
                        1 [number] = 40
                        2 [number] = -40
                7 [table]:
                7 [table] table: 0x2f89ff09e603ed55
                        1 [number] = -30
                        2 [number] = -30
                8 [table]:
                8 [table] table: 0x5b3beadf46702e65
                        1 [number] = 30
                        2 [number] = 30
                9 [table]:
                9 [table] table: 0xc469daec562371b5
                        1 [number] = 0
                        2 [number] = -90
                10 [table]:
                10 [table] table: 0x329f86f221facdc5
                        1 [number] = 0
                        2 [number] = 90

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [boolean] = false
        3 [Instance] = Run Service
        4 [Instance] = quit_xyz
        5 [number] = 0
        6 [number] = -20
        7 [table] (Recursive table detected)
        8 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = Character
        3 [string] = Humanoid
        4 [string] = FindFirstChild
        5 [string] = Health
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = Flying
        15 [string] = math
        16 [string] = random
        18 [string] = apply
        19 [string] = pitch
        20 [string] = yaw
        21 [string] = FireServer
        22 [string] = reset

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

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
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: startLoop

Function Upvalues: startLoop

Function Constants: startLoop
        1 [string] = Disconnect
        2 [string] = Heartbeat
        3 [string] = Connect

====================================================================================================

Function Dump: isJumping

Function Upvalues: isJumping

Function Constants: isJumping
        1 [string] = Humanoid
        2 [string] = FindFirstChild
        3 [string] = GetState
        4 [string] = Enum
        5 [string] = HumanoidStateType
        6 [string] = Jumping
        8 [string] = Freefall
        10 [string] = Flying

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

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
        7 [Instance] = defensive
        8 [Instance] = aahelp1
        9 [Instance] = quit_xyz
        11 [Instance] = Run Service
        12 [number] = 0
        13 [number] = -20
        14 [table]:
        14 [table] table: 0x20539c4e26880fe5
                1 [table]:
                1 [table] table: 0x71fd5478567d0e35
                        1 [number] = -50
                        2 [number] = 0
                2 [table]:
                2 [table] table: 0xcd0c046ac7a20f45
                        1 [number] = 50
                        2 [number] = 0
                3 [table]:
                3 [table] table: 0xdc5db456d7f2f095
                        1 [number] = 0
                        2 [number] = -60
                4 [table]:
                4 [table] table: 0x6aeba48096442ea5
                        1 [number] = 0
                        2 [number] = 60
                5 [table]:
                5 [table] table: 0x37261cb2065b6ef5
                        1 [number] = -40
                        2 [number] = 40
                6 [table]:
                6 [table] table: 0xf857cd3b961a2005
                        1 [number] = 40
                        2 [number] = -40
                7 [table]:
                7 [table] table: 0x2f89ff09e603ed55
                        1 [number] = -30
                        2 [number] = -30
                8 [table]:
                8 [table] table: 0x5b3beadf46702e65
                        1 [number] = 30
                        2 [number] = 30
                9 [table]:
                9 [table] table: 0xc469daec562371b5
                        1 [number] = 0
                        2 [number] = -90
                10 [table]:
                10 [table] table: 0x329f86f221facdc5
                        1 [number] = 0
                        2 [number] = 90

Function Constants: setAntiAimEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = enable
        7 [string] = disable
        8 [string] = FireServer
        9 [string] = Character
        10 [string] = Disconnect
        11 [string] = Heartbeat
        12 [string] = Connect
        13 [string] = _G
        15 [string] = ConfigSystem
        16 [string] = onSettingChanged
        17 [string] = DefensiveAntiAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = reset
        3 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [boolean] = false
        3 [Instance] = Run Service
        4 [Instance] = quit_xyz
        5 [number] = 0
        6 [number] = -20
        7 [table] (Recursive table detected)
        8 [Instance] = aahelp1

Function Constants: Unknown Name
        1 [string] = Disconnect
        2 [string] = task
        3 [string] = wait
        5 [number] = 0.5
        6 [string] = Heartbeat
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAntiAimEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = DefensiveAntiAim

====================================================================================================
]]


----// XEClient/antiaim_DowwwwnEnabled_1769302070.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:47:48
-- Luau version 6, Types version 3
-- Time taken: 0.003075 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local down_upvr = script.Parent.Parent.Parent.Parent.Parent.down
local function setEnabled_upvr(arg1, arg2) -- Line 13, Named "setEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: down_upvr (readonly)
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
    if down_upvr then
        down_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("DowwwwnEnabled", var1_upvw)
    end
end
script.Parent.MouseButton1Click:Connect(function() -- Line 34
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    setEnabled_upvr(not var1_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.DowwwwnEnabled = var1_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 44
        --[[ Upvalues[2]:
            [1]: setEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "DowwwwnEnabled" then
            setEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = DowwwwnEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setEnabled

Function Upvalues: setEnabled

Function Constants: setEnabled
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
        22 [string] = DowwwwnEnabled

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
        2 [Instance] = TweenService
        3 [Instance] = TextButton
        4 [Instance] = down

Function Constants: setEnabled
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
        22 [string] = DowwwwnEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = DowwwwnEnabled

====================================================================================================
]]


----// XEClient/antiaim_FOVAngle_1769301991.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:46:29
-- Luau version 6, Types version 3
-- Time taken: 0.021045 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character_upvw = LocalPlayer.Character
if not Character_upvw then
    Character_upvw = LocalPlayer.CharacterAdded:Wait()
end
local HumanoidRootPart_upvw = Character_upvw:WaitForChild("HumanoidRootPart")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local Fov_upvr = Parent_2_upvr.Parent.Fov
local update_upvr = game.ReplicatedStorage:WaitForChild("update")
local var11_upvw = false
local var12_upvw = 0
local var13_upvw
local var14_upvw = -180
local var15_upvw = -180
local var16_upvw = 0
local function _(arg1) -- Line 38, Named "fireUpdate"
    --[[ Upvalues[2]:
        [1]: var16_upvw (read and write)
        [2]: update_upvr (readonly)
    ]]
    local tick_result1_2 = tick()
    if 0.05 <= tick_result1_2 - var16_upvw then
        var16_upvw = tick_result1_2
        pcall(function() -- Line 42
            --[[ Upvalues[2]:
                [1]: update_upvr (copied, readonly)
                [2]: arg1 (readonly)
            ]]
            update_upvr:FireServer(arg1)
        end)
    end
end
local function _(arg1) -- Line 48, Named "applyRotationToCharacter"
    --[[ Upvalues[2]:
        [1]: HumanoidRootPart_upvw (read and write)
        [2]: var15_upvw (read and write)
    ]]
    if not HumanoidRootPart_upvw or not HumanoidRootPart_upvw.Parent then
    else
        if var15_upvw == arg1 then return end
        var15_upvw = arg1
        HumanoidRootPart_upvw.CFrame = CFrame.new(HumanoidRootPart_upvw.CFrame.Position) * CFrame.Angles(0, math.rad(arg1), 0)
    end
end
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 62, Named "updateSliderPositionFromFov"
    --[[ Upvalues[8]:
        [1]: var14_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: Fov_upvr (readonly)
        [5]: HumanoidRootPart_upvw (read and write)
        [6]: var15_upvw (read and write)
        [7]: var16_upvw (read and write)
        [8]: update_upvr (readonly)
    ]]
    local rounded_upvr = math.floor(math.clamp(arg1, -180, 181) + 0.5)
    if var14_upvw == rounded_upvr and not arg2 then
    else
        var14_upvw = rounded_upvr
        Parent_upvr.Position = UDim2.new((rounded_upvr - -180) / 361 * 0.803, 0, -0.192, 0)
        TextBox_upvr.Text = tostring(rounded_upvr)
        Fov_upvr.Value = rounded_upvr
        local var20 = rounded_upvr
        if HumanoidRootPart_upvw then
            if not HumanoidRootPart_upvw.Parent then
            elseif var15_upvw == var20 then
            else
                var15_upvw = var20
                HumanoidRootPart_upvw.CFrame = CFrame.new(HumanoidRootPart_upvw.CFrame.Position) * CFrame.Angles(0, math.rad(var20), 0)
            end
        end
        local tick_result1_3 = tick()
        if 0.05 <= tick_result1_3 - var16_upvw then
            var16_upvw = tick_result1_3
            pcall(function() -- Line 42
                --[[ Upvalues[2]:
                    [1]: update_upvr (copied, readonly)
                    [2]: rounded_upvr (readonly)
                ]]
                update_upvr:FireServer(rounded_upvr)
            end)
        end
        if arg2 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("FOVAngle", rounded_upvr)
        end
    end
end
local function updateSliderFromMouse_upvr() -- Line 96, Named "updateSliderFromMouse"
    --[[ Upvalues[11]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var12_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: TextBox_upvr (readonly)
        [6]: Fov_upvr (readonly)
        [7]: var14_upvw (read and write)
        [8]: HumanoidRootPart_upvw (read and write)
        [9]: var15_upvw (read and write)
        [10]: var16_upvw (read and write)
        [11]: update_upvr (readonly)
    ]]
    local X = Parent_2_upvr.AbsoluteSize.X
    if X <= 0 then
    else
        local X_2 = Parent_2_upvr.AbsolutePosition.X
        local clamped = math.clamp((math.clamp(UserInputService_upvr:GetMouseLocation().X - var12_upvw, X_2 + 0 * X, X_2 + 0.803 * X) - X_2) / X, 0, 0.803)
        local rounded_upvr_2 = math.floor(clamped / 0.803 * 361 + -180 + 0.5)
        Parent_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        TextBox_upvr.Text = tostring(rounded_upvr_2)
        Fov_upvr.Value = rounded_upvr_2
        var14_upvw = rounded_upvr_2
        if HumanoidRootPart_upvw then
            if not HumanoidRootPart_upvw.Parent then
            elseif var15_upvw == rounded_upvr_2 then
            else
                var15_upvw = rounded_upvr_2
                HumanoidRootPart_upvw.CFrame = CFrame.new(HumanoidRootPart_upvw.CFrame.Position) * CFrame.Angles(0, math.rad(rounded_upvr_2), 0)
            end
        end
        local tick_result1 = tick()
        if 0.05 <= tick_result1 - var16_upvw then
            var16_upvw = tick_result1
            pcall(function() -- Line 42
                --[[ Upvalues[2]:
                    [1]: update_upvr (copied, readonly)
                    [2]: rounded_upvr_2 (readonly)
                ]]
                update_upvr:FireServer(rounded_upvr_2)
            end)
        end
    end
end
task.wait(0.1)
updateSliderPositionFromFov_upvr(-180, false)
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 132
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var12_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var11_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var13_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var12_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var11_upvw = true
        updateSliderFromMouse_upvr()
        if not var13_upvw then
            var13_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 140
                --[[ Upvalues[3]:
                    [1]: var11_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var13_upvw (copied, read and write)
                ]]
                if var11_upvw then
                    updateSliderFromMouse_upvr()
                elseif var13_upvw then
                    var13_upvw:Disconnect()
                    var13_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 155
    --[[ Upvalues[2]:
        [1]: var11_upvw (read and write)
        [2]: var14_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var11_upvw then
            var11_upvw = false
            if _G.ConfigSystem then
                task.wait(0.1)
                _G.ConfigSystem.onSettingChanged("FOVAngle", var14_upvw)
            end
        end
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 170
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: var14_upvw (read and write)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(math.clamp(tonumber_result1, -180, 181), true)
    else
        TextBox_upvr.Text = tostring(var14_upvw)
    end
end)
LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 182
    --[[ Upvalues[5]:
        [1]: Character_upvw (read and write)
        [2]: HumanoidRootPart_upvw (read and write)
        [3]: var15_upvw (read and write)
        [4]: updateSliderPositionFromFov_upvr (readonly)
        [5]: var14_upvw (read and write)
    ]]
    Character_upvw = arg1
    HumanoidRootPart_upvw = Character_upvw:WaitForChild("HumanoidRootPart")
    task.wait(0.3)
    var15_upvw = nil
    updateSliderPositionFromFov_upvr(var14_upvw, false)
end)
task.spawn(function() -- Line 197
    --[[ Upvalues[3]:
        [1]: var15_upvw (read and write)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: var14_upvw (read and write)
    ]]
    while not _G.ConfigSystem and 0 < 5 do
        task.wait(0.1)
    end
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.FOVAngle = _G.ConfigSystem.settings.FOVAngle or -180
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 213
            --[[ Upvalues[3]:
                [1]: var15_upvw (copied, read and write)
                [2]: updateSliderPositionFromFov_upvr (copied, readonly)
                [3]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "FOVAngle" then
                var15_upvw = nil
                updateSliderPositionFromFov_upvr(arg2, false)
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        local FOVAngle = _G.ConfigSystem.settings.FOVAngle
        if FOVAngle ~= nil and FOVAngle ~= var14_upvw then
            var15_upvw = nil
            updateSliderPositionFromFov_upvr(FOVAngle, false)
        end
    end
end)
script.Destroying:Connect(function() -- Line 234
    --[[ Upvalues[1]:
        [1]: var13_upvw (read and write)
    ]]
    if var13_upvw then
        var13_upvw:Disconnect()
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = _G
        3 [string] = ConfigSystem
        4 [string] = task
        5 [string] = wait
        7 [number] = 0.1
        8 [string] = settings
        9 [number] = -180
        10 [string] = FOVAngle
        11 [string] = onConfigLoad

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = HumanoidRootPart
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.3

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.1
        12 [string] = onSettingChanged
        13 [string] = FOVAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [number] = 0.5
        10 [number] = -180
        11 [number] = 361
        12 [string] = floor
        14 [string] = UDim2
        15 [string] = new
        17 [number] = -0.192
        18 [string] = Position
        19 [string] = tostring
        21 [string] = Text
        22 [string] = Value
        23 [string] = Parent
        24 [string] = CFrame
        26 [string] = Angles
        28 [string] = rad
        30 [string] = tick
        32 [number] = 0.05
        33 [string] = pcall

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 0.5
        5 [string] = floor
        7 [number] = 361
        8 [number] = -180
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value
        19 [string] = Parent
        20 [string] = CFrame
        22 [string] = Angles
        24 [string] = rad
        26 [string] = tick
        28 [number] = 0.05
        29 [string] = pcall
        31 [string] = _G
        33 [string] = ConfigSystem
        34 [string] = onSettingChanged
        35 [string] = FOVAngle

====================================================================================================

Function Dump: applyRotationToCharacter

Function Upvalues: applyRotationToCharacter

Function Constants: applyRotationToCharacter
        1 [string] = Parent
        2 [string] = CFrame
        3 [string] = Position
        4 [string] = new
        6 [string] = Angles
        8 [string] = math
        9 [string] = rad

====================================================================================================

Function Dump: fireUpdate

Function Upvalues: fireUpdate

Function Constants: fireUpdate
        1 [string] = tick
        3 [number] = 0.05
        4 [string] = pcall

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = Fov
        5 [Instance] = HumanoidRootPart
        7 [number] = 0
        8 [Instance] = update

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 0.5
        5 [string] = floor
        7 [number] = 361
        8 [number] = -180
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value
        19 [string] = Parent
        20 [string] = CFrame
        22 [string] = Angles
        24 [string] = rad
        26 [string] = tick
        28 [number] = 0.05
        29 [string] = pcall
        31 [string] = _G
        33 [string] = ConfigSystem
        34 [string] = onSettingChanged
        35 [string] = FOVAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = UserInputService
        2 [number] = 0
        3 [Instance] = Frame2
        4 [boolean] = false
        5 [function] = updateSliderFromMouse
        7 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = TextBox
        6 [Instance] = Fov
        7 [number] = -180
        8 [Instance] = HumanoidRootPart
        10 [number] = 0
        11 [Instance] = update

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [number] = 0.5
        10 [number] = -180
        11 [number] = 361
        12 [string] = floor
        14 [string] = UDim2
        15 [string] = new
        17 [number] = -0.192
        18 [string] = Position
        19 [string] = tostring
        21 [string] = Text
        22 [string] = Value
        23 [string] = Parent
        24 [string] = CFrame
        26 [string] = Angles
        28 [string] = rad
        30 [string] = tick
        32 [number] = 0.05
        33 [string] = pcall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [Instance] = HumanoidRootPart
        4 [function] = updateSliderPositionFromFov
        5 [number] = -180

Function Constants: Unknown Name
        1 [string] = HumanoidRootPart
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.3

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        3 [function] = Unknown Name
        2 [function] = updateSliderPositionFromFov

Function Constants: Unknown Name
        1 [string] = FOVAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [number] = -180

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = -180

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.1
        12 [string] = onSettingChanged
        13 [string] = FOVAngle

====================================================================================================
]]

----// XEClient/antiaim_JitterAngle_1769302022.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar1.Frame2.TextButton.LocalScript
-- Took 0.29s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:46:58
-- Luau version 6, Types version 3
-- Time taken: 0.007812 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local jittera_upvr = Parent_2_upvr.Parent.Parent.Frame.jittera
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = -180
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[4]:
        [1]: var9_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: jittera_upvr (readonly)
    ]]
    local clamped_4 = math.clamp(arg1, -180, 181)
    var9_upvw = clamped_4
    Parent_upvr.Position = UDim2.new((clamped_4 - -180) / 361 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_4)
    jittera_upvr.Value = clamped_4
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("JitterAngle", clamped_4)
    end
end
local function updateSliderFromMouse_upvr() -- Line 42, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: var9_upvw (read and write)
        [6]: jittera_upvr (readonly)
        [7]: TextBox_upvr (readonly)
    ]]
    local X = Parent_2_upvr.AbsoluteSize.X
    local var12
    if X <= 0 then
    else
        var12 = Parent_2_upvr.AbsolutePosition
        local X_2 = var12.X
        var12 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var14 = X_2 + 0 * X
        local var15 = X_2 + 0.803 * X
        if var12 < var14 then
            var12 = var14
        end
        if var15 < var12 then
        end
        local clamped = math.clamp((var15 - X_2) / X, 0, 0.803)
        Parent_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        local floored = math.floor(clamped / 0.803 * 361 + -180)
        var9_upvw = floored
        jittera_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
    end
end
local clamped_3 = math.clamp(-180, -180, 181)
var9_upvw = clamped_3
local var19_upvw = var9_upvw
Parent_upvr.Position = UDim2.new((clamped_3 - -180) / 361 * 0.803, 0, -0.192, 0)
TextBox_upvr.Text = tostring(clamped_3)
jittera_upvr.Value = clamped_3
local var21_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 71
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var21_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var21_upvw then
            var21_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 79
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var21_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var21_upvw then
                    var21_upvw:Disconnect()
                    var21_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 94
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: var19_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            var7_upvw = false
            if _G.ConfigSystem then
                _G.ConfigSystem.onSettingChanged("JitterAngle", var19_upvw)
            end
        end
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 107
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: jittera_upvr (readonly)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(tonumber_result1, true)
    else
        TextBox_upvr.Text = tostring(jittera_upvr.Value)
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.JitterAngle = var19_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 123
        --[[ Upvalues[5]:
            [1]: var19_upvw (read and write)
            [2]: Parent_upvr (readonly)
            [3]: TextBox_upvr (readonly)
            [4]: jittera_upvr (readonly)
            [5]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "JitterAngle" then
            local clamped_2 = math.clamp(arg2, -180, 181)
            var19_upvw = clamped_2
            Parent_upvr.Position = UDim2.new((clamped_2 - -180) / 361 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_2)
            jittera_upvr.Value = clamped_2
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar1.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = JitterAngle
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JitterAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = JitterAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = jittera
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = JitterAngle
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = -180

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JitterAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = UserInputService
        2 [number] = 0
        3 [Instance] = Frame2
        4 [boolean] = false
        5 [function] = updateSliderFromMouse
        7 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar1
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = -180
        6 [Instance] = jittera
        7 [Instance] = TextBox

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = jittera

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = jittera

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = JitterAngle

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar1.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = JitterAngle
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JitterAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = JitterAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = jittera
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = JitterAngle
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = -180

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JitterAngle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = UserInputService
        2 [number] = 0
        3 [Instance] = Frame2
        4 [boolean] = false
        5 [function] = updateSliderFromMouse
        7 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar1
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = -180
        6 [Instance] = jittera
        7 [Instance] = TextBox

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = jittera

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = jittera

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = JitterAngle

====================================================================================================
]]


----// XEClient/antiaim_JitterSpeed_1769302032.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar2.Frame2.TextButton.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:47:10
-- Luau version 6, Types version 3
-- Time taken: 0.010819 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local jitters_upvr = Parent_2_upvr.Parent.Parent.Frame.jitters
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = -20
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[4]:
        [1]: var9_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: jitters_upvr (readonly)
    ]]
    local clamped_4 = math.clamp(arg1, -20, 21)
    var9_upvw = clamped_4
    Parent_upvr.Position = UDim2.new((clamped_4 - -20) / 41 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_4)
    jitters_upvr.Value = clamped_4
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("JitterSpeed", clamped_4)
    end
end
local function updateSliderFromMouse_upvr() -- Line 42, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: var9_upvw (read and write)
        [6]: jitters_upvr (readonly)
        [7]: TextBox_upvr (readonly)
    ]]
    local X = Parent_2_upvr.AbsoluteSize.X
    local var12
    if X <= 0 then
    else
        var12 = Parent_2_upvr.AbsolutePosition
        local X_2 = var12.X
        var12 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var14 = X_2 + 0 * X
        local var15 = X_2 + 0.803 * X
        if var12 < var14 then
            var12 = var14
        end
        if var15 < var12 then
        end
        local clamped = math.clamp((var15 - X_2) / X, 0, 0.803)
        Parent_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        local floored = math.floor(clamped / 0.803 * 41 + -20)
        var9_upvw = floored
        jitters_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
    end
end
local clamped_3 = math.clamp(-20, -20, 21)
var9_upvw = clamped_3
local var19_upvw = var9_upvw
Parent_upvr.Position = UDim2.new((clamped_3 - -20) / 41 * 0.803, 0, -0.192, 0)
TextBox_upvr.Text = tostring(clamped_3)
jitters_upvr.Value = clamped_3
local var21_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 71
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var21_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var21_upvw then
            var21_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 79
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var21_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var21_upvw then
                    var21_upvw:Disconnect()
                    var21_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 94
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: var19_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            var7_upvw = false
            if _G.ConfigSystem then
                _G.ConfigSystem.onSettingChanged("JitterSpeed", var19_upvw)
            end
        end
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 107
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: jitters_upvr (readonly)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(tonumber_result1, true)
    else
        TextBox_upvr.Text = tostring(jitters_upvr.Value)
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.JitterSpeed = var19_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 123
        --[[ Upvalues[5]:
            [1]: var19_upvw (read and write)
            [2]: Parent_upvr (readonly)
            [3]: TextBox_upvr (readonly)
            [4]: jitters_upvr (readonly)
            [5]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "JitterSpeed" then
            local clamped_2 = math.clamp(arg2, -20, 21)
            var19_upvw = clamped_2
            Parent_upvr.Position = UDim2.new((clamped_2 - -20) / 41 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_2)
            jitters_upvr.Value = clamped_2
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.slidebar2.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = JitterSpeed
        2 [string] = math
        3 [string] = clamp
        5 [number] = 41
        6 [number] = -20
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JitterSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -20
        15 [number] = 41
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 41
        5 [number] = -20
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = JitterSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = jitters
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = JitterSpeed
        2 [string] = math
        3 [string] = clamp
        5 [number] = 41
        6 [number] = -20
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = -20

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JitterSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = UserInputService
        2 [number] = 0
        3 [Instance] = Frame2
        4 [boolean] = false
        5 [function] = updateSliderFromMouse
        7 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar2
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = -20
        6 [Instance] = jitters
        7 [Instance] = TextBox

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -20
        15 [number] = 41
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = jitters

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -20
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = jitters

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 41
        5 [number] = -20
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = JitterSpeed

====================================================================================================
]]


----// XEClient/antiaim_Jitter_1769302099.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle1.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:48:17
-- Luau version 6, Types version 3
-- Time taken: 0.007341 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local Parent = script.Parent.Parent
local jittera = Parent:FindFirstChild("jittera")
local jitters = Parent:FindFirstChild("jitters")
local Jitter_upvr = game:GetService("ReplicatedStorage"):FindFirstChild("Jitter")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local Value_upvw = jittera.Value
local Value_upvw_2 = jitters.Value
local var13_upvw = false
local var14_upvw
local var15_upvw = 1
jittera.Changed:Connect(function(arg1) -- Line 31
    --[[ Upvalues[4]:
        [1]: Value_upvw (read and write)
        [2]: var13_upvw (read and write)
        [3]: Jitter_upvr (readonly)
        [4]: Value_upvw_2 (read and write)
    ]]
    Value_upvw = arg1
    if var13_upvw then
        Jitter_upvr:FireServer(var13_upvw, Value_upvw_2, Value_upvw)
    end
end)
jitters.Changed:Connect(function(arg1) -- Line 38
    --[[ Upvalues[4]:
        [1]: Value_upvw_2 (read and write)
        [2]: var13_upvw (read and write)
        [3]: Jitter_upvr (readonly)
        [4]: Value_upvw (read and write)
    ]]
    Value_upvw_2 = arg1
    if var13_upvw then
        Jitter_upvr:FireServer(var13_upvw, Value_upvw_2, Value_upvw)
    end
end)
local function applyJitter_upvr(arg1) -- Line 46, Named "applyJitter"
    --[[ Upvalues[2]:
        [1]: Value_upvw (read and write)
        [2]: var15_upvw (read and write)
    ]]
    local HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
    if not HumanoidRootPart then
    else
        local _, any_ToOrientation_result2, any_ToOrientation_result3 = HumanoidRootPart.CFrame:ToOrientation()
        HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position) * CFrame.Angles(0, any_ToOrientation_result2 + math.rad(Value_upvw * var15_upvw), 0)
    end
end
local var22_upvw = 0
local RunService_upvr = game:GetService("RunService")
local function toggleJitter_upvr(arg1) -- Line 56, Named "toggleJitter"
    --[[ Upvalues[9]:
        [1]: var14_upvw (read and write)
        [2]: Jitter_upvr (readonly)
        [3]: Value_upvw_2 (read and write)
        [4]: Value_upvw (read and write)
        [5]: LocalPlayer_upvr (readonly)
        [6]: var22_upvw (read and write)
        [7]: var15_upvw (read and write)
        [8]: RunService_upvr (readonly)
        [9]: applyJitter_upvr (readonly)
    ]]
    if var14_upvw then
        var14_upvw:Disconnect()
        var14_upvw = nil
    end
    Jitter_upvr:FireServer(arg1, Value_upvw_2, Value_upvw)
    if arg1 and LocalPlayer_upvr.Character then
        var22_upvw = 0
        var15_upvw = 1
        var14_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 70
            --[[ Upvalues[5]:
                [1]: LocalPlayer_upvr (copied, readonly)
                [2]: var22_upvw (copied, read and write)
                [3]: Value_upvw_2 (copied, read and write)
                [4]: var15_upvw (copied, read and write)
                [5]: applyJitter_upvr (copied, readonly)
            ]]
            if not LocalPlayer_upvr.Character then
            else
                var22_upvw += arg1_2
                if Value_upvw_2 <= var22_upvw then
                    var22_upvw = 0
                    var15_upvw = -var15_upvw
                    applyJitter_upvr(LocalPlayer_upvr.Character)
                end
            end
        end)
    end
end
local function setJitterEnabled_upvr(arg1, arg2) -- Line 84, Named "setJitterEnabled"
    --[[ Upvalues[7]:
        [1]: var13_upvw (read and write)
        [2]: toggleJitter_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: udim2_upvr (readonly)
        [5]: TweenService_upvr (readonly)
        [6]: Frame2_upvr (readonly)
        [7]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var13_upvw = arg1
    toggleJitter_upvr(var13_upvw)
    local var25
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var25 = udim2_upvr_2
        return var25
    end
    if not var13_upvw or not INLINED() then
        var25 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var25;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("Jitter", var13_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 99
    --[[ Upvalues[2]:
        [1]: setJitterEnabled_upvr (readonly)
        [2]: var13_upvw (read and write)
    ]]
    setJitterEnabled_upvr(not var13_upvw, true)
end)
LocalPlayer_upvr.CharacterAdded:Connect(function() -- Line 104
    --[[ Upvalues[2]:
        [1]: var13_upvw (read and write)
        [2]: toggleJitter_upvr (readonly)
    ]]
    task.wait(5)
    if var13_upvw then
        toggleJitter_upvr(true)
    end
end)
script.Destroying:Connect(function() -- Line 112
    --[[ Upvalues[1]:
        [1]: var14_upvw (read and write)
    ]]
    if var14_upvw then
        var14_upvw:Disconnect()
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.Jitter = var13_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 126
        --[[ Upvalues[8]:
            [1]: var13_upvw (read and write)
            [2]: toggleJitter_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: udim2_upvr (readonly)
            [5]: TweenService_upvr (readonly)
            [6]: Frame2_upvr (readonly)
            [7]: TweenInfo_new_result1_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "Jitter" then
            var13_upvw = arg2
            toggleJitter_upvr(var13_upvw)
            if not var13_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
else
    onConfigLoad_upvr = warn
    onConfigLoad_upvr("ConfigSystem не найдена! Настройка Jitter не будет сохраняться.")
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Jitter
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setJitterEnabled

Function Upvalues: setJitterEnabled

Function Constants: setJitterEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = Jitter

====================================================================================================

Function Dump: toggleJitter

Function Upvalues: toggleJitter

Function Constants: toggleJitter
        1 [string] = Disconnect
        2 [string] = FireServer
        3 [string] = Character
        4 [string] = Heartbeat
        5 [string] = Connect

====================================================================================================

Function Dump: applyJitter

Function Upvalues: applyJitter

Function Constants: applyJitter
        1 [string] = HumanoidRootPart
        2 [string] = FindFirstChild
        3 [string] = Position
        4 [string] = CFrame
        5 [string] = ToOrientation
        6 [string] = math
        7 [string] = rad
        9 [string] = new
        11 [string] = Angles

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = toggleJitter

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setJitterEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: applyJitter

Function Upvalues: applyJitter
        1 [number] = -180
        2 [number] = 1

Function Constants: applyJitter
        1 [string] = HumanoidRootPart
        2 [string] = FindFirstChild
        3 [string] = Position
        4 [string] = CFrame
        5 [string] = ToOrientation
        6 [string] = math
        7 [string] = rad
        9 [string] = new
        11 [string] = Angles

====================================================================================================

Function Dump: toggleJitter

Function Upvalues: toggleJitter
        2 [Instance] = Jitter
        3 [number] = -20
        4 [number] = -180
        5 [Instance] = quit_xyz
        6 [number] = 0
        7 [number] = 1
        8 [Instance] = Run Service
        9 [function] = applyJitter

Function Constants: toggleJitter
        1 [string] = Disconnect
        2 [string] = FireServer
        3 [string] = Character
        4 [string] = Heartbeat
        5 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = toggleJitter
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = Jitter
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: setJitterEnabled

Function Upvalues: setJitterEnabled
        1 [boolean] = false
        2 [function] = toggleJitter
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setJitterEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = Jitter

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -20
        2 [boolean] = false
        3 [Instance] = Jitter
        4 [number] = -180

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -180
        2 [boolean] = false
        3 [Instance] = Jitter
        4 [number] = -20

Function Constants: Unknown Name
        1 [string] = FireServer

====================================================================================================
]]


----// XEClient/antiaim_SpinbotAngleok_1769302165.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.Frame.slidebar3.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:49:23
-- Luau version 6, Types version 3
-- Time taken: 0.007543 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local spinbotangle_upvr = Parent_2_upvr.Parent.Parent.Frame.spinbotangle
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = -180
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[4]:
        [1]: var9_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: spinbotangle_upvr (readonly)
    ]]
    local clamped_4 = math.clamp(arg1, -180, 181)
    var9_upvw = clamped_4
    Parent_upvr.Position = UDim2.new((clamped_4 - -180) / 361 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_4)
    spinbotangle_upvr.Value = clamped_4
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("SpinbotAngleok", clamped_4)
    end
end
local function updateSliderFromMouse_upvr() -- Line 42, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: var9_upvw (read and write)
        [6]: spinbotangle_upvr (readonly)
        [7]: TextBox_upvr (readonly)
    ]]
    local X = Parent_2_upvr.AbsoluteSize.X
    local var12
    if X <= 0 then
    else
        var12 = Parent_2_upvr.AbsolutePosition
        local X_2 = var12.X
        var12 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var14 = X_2 + 0 * X
        local var15 = X_2 + 0.803 * X
        if var12 < var14 then
            var12 = var14
        end
        if var15 < var12 then
        end
        local clamped = math.clamp((var15 - X_2) / X, 0, 0.803)
        Parent_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        local floored = math.floor(clamped / 0.803 * 361 + -180)
        var9_upvw = floored
        spinbotangle_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
    end
end
local clamped_3 = math.clamp(-180, -180, 181)
var9_upvw = clamped_3
local var19_upvw = var9_upvw
Parent_upvr.Position = UDim2.new((clamped_3 - -180) / 361 * 0.803, 0, -0.192, 0)
TextBox_upvr.Text = tostring(clamped_3)
spinbotangle_upvr.Value = clamped_3
local var21_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 71
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var21_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var21_upvw then
            var21_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 79
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var21_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var21_upvw then
                    var21_upvw:Disconnect()
                    var21_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 94
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: var19_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            var7_upvw = false
            if _G.ConfigSystem then
                _G.ConfigSystem.onSettingChanged("SpinbotAngleok", var19_upvw)
            end
        end
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 107
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: spinbotangle_upvr (readonly)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(tonumber_result1, true)
    else
        TextBox_upvr.Text = tostring(spinbotangle_upvr.Value)
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.SpinbotAngleok = var19_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 123
        --[[ Upvalues[5]:
            [1]: var19_upvw (read and write)
            [2]: Parent_upvr (readonly)
            [3]: TextBox_upvr (readonly)
            [4]: spinbotangle_upvr (readonly)
            [5]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "SpinbotAngleok" then
            local clamped_2 = math.clamp(arg2, -180, 181)
            var19_upvw = clamped_2
            Parent_upvr.Position = UDim2.new((clamped_2 - -180) / 361 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_2)
            spinbotangle_upvr.Value = clamped_2
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.Frame.slidebar3.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = SpinbotAngleok
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = SpinbotAngleok

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = SpinbotAngleok

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = spinbotangle
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = SpinbotAngleok
        2 [string] = math
        3 [string] = clamp
        5 [number] = 361
        6 [number] = -180
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [number] = -180

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = SpinbotAngleok

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = UserInputService
        2 [number] = 0
        3 [Instance] = Frame2
        4 [boolean] = false
        5 [function] = updateSliderFromMouse
        7 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = GetMouseLocation
        6 [string] = X
        7 [string] = AbsolutePosition
        8 [string] = RenderStepped
        9 [string] = Connect

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar3
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = -180
        6 [Instance] = spinbotangle
        7 [Instance] = TextBox

Function Constants: updateSliderFromMouse
        1 [string] = AbsoluteSize
        2 [string] = X
        3 [string] = GetMouseLocation
        4 [string] = AbsolutePosition
        5 [number] = 0.803
        6 [string] = math
        7 [string] = clamp
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = -180
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = spinbotangle

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = -180
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = spinbotangle

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = -180
        6 [number] = 0.803
        7 [string] = UDim2
        8 [string] = new
        10 [number] = -0.192
        11 [string] = Position
        12 [string] = tostring
        14 [string] = Text
        15 [string] = Value
        16 [string] = _G
        18 [string] = ConfigSystem
        19 [string] = onSettingChanged
        20 [string] = SpinbotAngleok

====================================================================================================
]]


----// XEClient/antiaim_UppppEnabled_1769302065.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton1.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:47:43
-- Luau version 6, Types version 3
-- Time taken: 0.004344 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local up_upvr = script.Parent.Parent.Parent.Parent.Parent.up
local function setEnabled_upvr(arg1, arg2) -- Line 13, Named "setEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: up_upvr (readonly)
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
    if up_upvr then
        up_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("UppppEnabled", var1_upvw)
    end
end
script.Parent.MouseButton1Click:Connect(function() -- Line 34
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    setEnabled_upvr(not var1_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.UppppEnabled = var1_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 44
        --[[ Upvalues[2]:
            [1]: setEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "UppppEnabled" then
            setEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UppppEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setEnabled

Function Upvalues: setEnabled

Function Constants: setEnabled
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
        22 [string] = UppppEnabled

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
        2 [Instance] = TweenService
        3 [Instance] = TextButton1
        4 [Instance] = up

Function Constants: setEnabled
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
        22 [string] = UppppEnabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = UppppEnabled

====================================================================================================
]]


----// XEClient/antiaim_attargetssssss_1769302192.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.spisok.Frame.ScrollingFrame.TextButton1.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:49:50
-- Luau version 6, Types version 3
-- Time taken: 0.003080 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local attargets_upvr = script.Parent.Parent.Parent.Parent.Parent.Parent.Frame.attargets
local function setEnabled_upvr(arg1, arg2) -- Line 13, Named "setEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: attargets_upvr (readonly)
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
    if attargets_upvr then
        attargets_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("attargetssssss", var1_upvw)
    end
end
script.Parent.MouseButton1Click:Connect(function() -- Line 34
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    setEnabled_upvr(not var1_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.attargetssssss = var1_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 44
        --[[ Upvalues[2]:
            [1]: setEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "attargetssssss" then
            setEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.spisok.Frame.ScrollingFrame.TextButton1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = attargetssssss

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setEnabled

Function Upvalues: setEnabled

Function Constants: setEnabled
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
        22 [string] = attargetssssss

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
        2 [Instance] = TweenService
        3 [Instance] = TextButton1
        4 [Instance] = attargets

Function Constants: setEnabled
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
        22 [string] = attargetssssss

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = attargetssssss

====================================================================================================
]]


----// XEClient/antiaim_localviiiiew_1769302187.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.spisok.Frame.ScrollingFrame.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:49:37
-- Luau version 6, Types version 3
-- Time taken: 0.004977 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local localview_upvr = script.Parent.Parent.Parent.Parent.Parent.Parent.Frame.localview
local function setEnabled_upvr(arg1, arg2) -- Line 13, Named "setEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: localview_upvr (readonly)
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
    if localview_upvr then
        localview_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("localviiiiew", var1_upvw)
    end
end
script.Parent.MouseButton1Click:Connect(function() -- Line 34
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    setEnabled_upvr(not var1_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.localviiiiew = var1_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 44
        --[[ Upvalues[2]:
            [1]: setEnabled_upvr (readonly)
            [2]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "localviiiiew" then
            setEnabled_upvr(arg2, false)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.aa.ScrollingFrame.Frame1.spisok.Frame.ScrollingFrame.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = localviiiiew

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setEnabled

Function Upvalues: setEnabled

Function Constants: setEnabled
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
        22 [string] = localviiiiew

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
        2 [Instance] = TweenService
        3 [Instance] = TextButton
        4 [Instance] = localview

Function Constants: setEnabled
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
        22 [string] = localviiiiew

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = localviiiiew

====================================================================================================
]]


----// XEClient/movement_unknown_1769302754.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle1.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:59:12
-- Luau version 6, Types version 3
-- Time taken: 0.019125 seconds

local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local var5_upvw
local var6_upvw
local Frame2_upvr = script.Parent:WaitForChild("Frame2")
local var8_upvw = false
local var9_upvw
local var10_upvw = 0
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TouchEnabled_upvr = UserInputService_upvr.TouchEnabled
if TouchEnabled_upvr then
    TouchEnabled_upvr = not UserInputService_upvr.MouseEnabled
end
local function isGoodStrafePC_upvr() -- Line 28, Named "isGoodStrafePC"
    --[[ Upvalues[2]:
        [1]: var5_upvw (read and write)
        [2]: UserInputService_upvr (readonly)
    ]]
    if var5_upvw.MoveDirection.Magnitude < 0.1 then
        return false
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.W) then
        return true
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.A) then
        return true
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.S) then
        return true
    end
    if UserInputService_upvr:IsKeyDown(Enum.KeyCode.D) then
        return true
    end
    return false
end
local function _() -- Line 38, Named "isGoodStrafeMobile"
    --[[ Upvalues[1]:
        [1]: var5_upvw (read and write)
    ]]
    local var15
    if 0.1 >= var5_upvw.MoveDirection.Magnitude then
        var15 = false
    else
        var15 = true
    end
    return var15
end
local function _() -- Line 42, Named "isGoodStrafe"
    --[[ Upvalues[3]:
        [1]: TouchEnabled_upvr (readonly)
        [2]: var5_upvw (read and write)
        [3]: isGoodStrafePC_upvr (readonly)
    ]]
    local var16 = TouchEnabled_upvr
    if var16 then
        if 0.1 >= var5_upvw.MoveDirection.Magnitude then
            var16 = false
        else
            var16 = true
        end
        return var16
    end
    return isGoodStrafePC_upvr()
end
local function _() -- Line 50, Named "isJumping"
    --[[ Upvalues[1]:
        [1]: var5_upvw (read and write)
    ]]
    local any_GetState_result1 = var5_upvw:GetState()
    local var18 = true
    if any_GetState_result1 ~= Enum.HumanoidStateType.Jumping then
        if any_GetState_result1 ~= Enum.HumanoidStateType.Freefall then
            var18 = false
        else
            var18 = true
        end
    end
    return var18
end
local function updateTpWalk_upvr(arg1) -- Line 56, Named "updateTpWalk"
    --[[ Upvalues[6]:
        [1]: var8_upvw (read and write)
        [2]: var6_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: TouchEnabled_upvr (readonly)
        [5]: isGoodStrafePC_upvr (readonly)
        [6]: var10_upvw (read and write)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
    local var19
    if not var8_upvw then return end
    if not var6_upvw or not var5_upvw then return end
    var19 = var5_upvw
    var19 = var19.MoveDirection.Magnitude
    -- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [16] 14. Error Block 40 start (CF ANALYSIS FAILED)
    if TouchEnabled_upvr then
        if 0.1 >= var5_upvw.MoveDirection.Magnitude then
            var19 = false
        else
            var19 = true
        end
    else
        var19 = isGoodStrafePC_upvr()
    end
    -- KONSTANTERROR: [16] 14. Error Block 40 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 76, Named "updateVisual"
    --[[ Upvalues[5]:
        [1]: udim2_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: TweenService_upvr (readonly)
        [4]: Frame2_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    if not arg1 or not udim2_upvr then
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = udim2_upvr_2;
    }):Play()
end
local function _() -- Line 81, Named "connectTpWalk"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: updateTpWalk_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Disconnect()
    end
    var9_upvw = RunService_upvr.Heartbeat:Connect(updateTpWalk_upvr)
end
local function _() -- Line 86, Named "disconnectTpWalk"
    --[[ Upvalues[1]:
        [1]: var9_upvw (read and write)
    ]]
    if var9_upvw then
        var9_upvw:Disconnect()
        var9_upvw = nil
    end
end
local function _(arg1, arg2) -- Line 93, Named "setTpWalkEnabled"
    --[[ Upvalues[10]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var10_upvw (read and write)
        [8]: var9_upvw (read and write)
        [9]: RunService_upvr (readonly)
        [10]: updateTpWalk_upvr (readonly)
    ]]
    var8_upvw = arg1
    local var23
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var23 = udim2_upvr
        return var23
    end
    if not var8_upvw or not INLINED_2() then
        var23 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var23;
    }):Play()
    if var8_upvw then
        var10_upvw = 0.3
        if var9_upvw then
            var9_upvw:Disconnect()
        end
        var23 = RunService_upvr
        var9_upvw = var23.Heartbeat:Connect(updateTpWalk_upvr)
    else
        if var9_upvw then
            var9_upvw:Disconnect()
            var9_upvw = nil
        end
        var10_upvw = 0.3
    end
    if arg2 then
        var23 = _G
        if var23.ConfigSystem then
            var23 = _G.ConfigSystem
            var23 = "TPWalk"
            var23.onSettingChanged(var23, var8_upvw)
        end
    end
end
script.Parent:WaitForChild("TextButton").MouseButton1Click:Connect(function() -- Line 110
    --[[ Upvalues[10]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var10_upvw (read and write)
        [8]: var9_upvw (read and write)
        [9]: RunService_upvr (readonly)
        [10]: updateTpWalk_upvr (readonly)
    ]]
    var8_upvw = not var8_upvw
    local var26
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        var26 = udim2_upvr
        return var26
    end
    if not var8_upvw or not INLINED_3() then
        var26 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var26;
    }):Play()
    if var8_upvw then
        var10_upvw = 0.3
        if var9_upvw then
            var9_upvw:Disconnect()
        end
        var26 = RunService_upvr
        var9_upvw = var26.Heartbeat:Connect(updateTpWalk_upvr)
    else
        if var9_upvw then
            var9_upvw:Disconnect()
            var9_upvw = nil
        end
        var10_upvw = 0.3
    end
    var26 = _G
    if var26.ConfigSystem then
        var26 = _G.ConfigSystem
        var26 = "TPWalk"
        var26.onSettingChanged(var26, var8_upvw)
    end
end)
local var28_upvw
LocalPlayer.CharacterAdded:Connect(function(arg1) -- Line 114, Named "onCharacterAdded"
    --[[ Upvalues[13]:
        [1]: var9_upvw (read and write)
        [2]: var28_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: var6_upvw (read and write)
        [5]: var8_upvw (read and write)
        [6]: udim2_upvr (readonly)
        [7]: udim2_upvr_2 (readonly)
        [8]: TweenService_upvr (readonly)
        [9]: Frame2_upvr (readonly)
        [10]: TweenInfo_new_result1_upvr (readonly)
        [11]: var10_upvw (read and write)
        [12]: RunService_upvr (readonly)
        [13]: updateTpWalk_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Disconnect()
        var9_upvw = nil
    end
    var28_upvw = arg1
    var5_upvw = var28_upvw:WaitForChild("Humanoid")
    var6_upvw = arg1
    task.spawn(function() -- Line 120
        --[[ Upvalues[10]:
            [1]: var8_upvw (copied, read and write)
            [2]: udim2_upvr (copied, readonly)
            [3]: udim2_upvr_2 (copied, readonly)
            [4]: TweenService_upvr (copied, readonly)
            [5]: Frame2_upvr (copied, readonly)
            [6]: TweenInfo_new_result1_upvr (copied, readonly)
            [7]: var10_upvw (copied, read and write)
            [8]: var9_upvw (copied, read and write)
            [9]: RunService_upvr (copied, readonly)
            [10]: updateTpWalk_upvr (copied, readonly)
        ]]
        task.wait(6)
        var8_upvw = true
        local var30
        local function INLINED_4() -- Internal function, doesn't exist in bytecode
            var30 = udim2_upvr
            return var30
        end
        if not var8_upvw or not INLINED_4() then
            var30 = udim2_upvr_2
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var30;
        }):Play()
        if var8_upvw then
            var10_upvw = 0.3
            if var9_upvw then
                var9_upvw:Disconnect()
            end
            var30 = RunService_upvr
            var9_upvw = var30.Heartbeat:Connect(updateTpWalk_upvr)
        else
            if var9_upvw then
                var9_upvw:Disconnect()
                var9_upvw = nil
            end
            var10_upvw = 0.3
        end
        var30 = _G
        if var30.ConfigSystem then
            var30 = _G.ConfigSystem
            var30 = "TPWalk"
            var30.onSettingChanged(var30, var8_upvw)
        end
    end)
end)
local var32_upvw
if LocalPlayer.Character then
    local Character = LocalPlayer.Character
    if var32_upvw then
        var32_upvw:Disconnect()
        var32_upvw = nil
    end
    var28_upvw = Character
    var5_upvw = var28_upvw:WaitForChild("Humanoid")
    var6_upvw = Character
    task.spawn(function() -- Line 120
        --[[ Upvalues[10]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var10_upvw (read and write)
            [8]: var32_upvw (read and write)
            [9]: RunService_upvr (readonly)
            [10]: updateTpWalk_upvr (readonly)
        ]]
        task.wait(6)
        var8_upvw = true
        local var35
        local function INLINED_5() -- Internal function, doesn't exist in bytecode
            var35 = udim2_upvr
            return var35
        end
        if not var8_upvw or not INLINED_5() then
            var35 = udim2_upvr_2
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var35;
        }):Play()
        if var8_upvw then
            var10_upvw = 0.3
            if var32_upvw then
                var32_upvw:Disconnect()
            end
            var35 = RunService_upvr
            var32_upvw = var35.Heartbeat:Connect(updateTpWalk_upvr)
        else
            if var32_upvw then
                var32_upvw:Disconnect()
                var32_upvw = nil
            end
            var10_upvw = 0.3
        end
        var35 = _G
        if var35.ConfigSystem then
            var35 = _G.ConfigSystem
            var35 = "TPWalk"
            var35.onSettingChanged(var35, var8_upvw)
        end
    end)
end
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.TPWalk = var8_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 136
        --[[ Upvalues[11]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var10_upvw (read and write)
            [8]: var32_upvw (read and write)
            [9]: RunService_upvr (readonly)
            [10]: updateTpWalk_upvr (readonly)
            [11]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "TPWalk" then
            var8_upvw = arg2
            if not var8_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if var8_upvw then
                var10_upvw = 0.3
                if var32_upvw then
                    var32_upvw:Disconnect()
                end
                var32_upvw = RunService_upvr.Heartbeat:Connect(updateTpWalk_upvr)
            else
                if var32_upvw then
                    var32_upvw:Disconnect()
                    var32_upvw = nil
                end
                var10_upvw = 0.3
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = TPWalk
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [number] = 0.3
        7 [string] = Disconnect
        8 [string] = Heartbeat
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = Position
        6 [string] = Create
        7 [string] = Play
        8 [number] = 0.3
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = _G
        14 [string] = ConfigSystem
        15 [string] = onSettingChanged
        16 [string] = TPWalk

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded

Function Constants: onCharacterAdded
        1 [string] = Disconnect
        2 [string] = Humanoid
        3 [string] = WaitForChild
        4 [string] = task
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.3
        6 [string] = Disconnect
        7 [string] = Heartbeat
        8 [string] = Connect
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = TPWalk

====================================================================================================

Function Dump: setTpWalkEnabled

Function Upvalues: setTpWalkEnabled

Function Constants: setTpWalkEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.3
        6 [string] = Disconnect
        7 [string] = Heartbeat
        8 [string] = Connect
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = TPWalk

====================================================================================================

Function Dump: disconnectTpWalk

Function Upvalues: disconnectTpWalk

Function Constants: disconnectTpWalk
        1 [string] = Disconnect

====================================================================================================

Function Dump: connectTpWalk

Function Upvalues: connectTpWalk

Function Constants: connectTpWalk
        1 [string] = Disconnect
        2 [string] = Heartbeat
        3 [string] = Connect

====================================================================================================

Function Dump: updateVisual

Function Upvalues: updateVisual

Function Constants: updateVisual
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play

====================================================================================================

Function Dump: updateTpWalk

Function Upvalues: updateTpWalk

Function Constants: updateTpWalk
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.3
        4 [number] = 0.1
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        10 [string] = Freefall
        12 [number] = 0.05
        13 [number] = 1.5
        14 [string] = math
        15 [string] = min
        17 [number] = 0.5
        18 [string] = max
        20 [number] = 10
        21 [string] = TranslateBy

====================================================================================================

Function Dump: isJumping

Function Upvalues: isJumping

Function Constants: isJumping
        1 [string] = GetState
        2 [string] = Enum
        3 [string] = HumanoidStateType
        4 [string] = Jumping
        6 [string] = Freefall

====================================================================================================

Function Dump: isGoodStrafe

Function Upvalues: isGoodStrafe

Function Constants: isGoodStrafe
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1

====================================================================================================

Function Dump: isGoodStrafeMobile

Function Upvalues: isGoodStrafeMobile

Function Constants: isGoodStrafeMobile
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1

====================================================================================================

Function Dump: isGoodStrafePC

Function Upvalues: isGoodStrafePC

Function Constants: isGoodStrafePC
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = Enum
        5 [string] = KeyCode
        6 [string] = W
        8 [string] = IsKeyDown
        9 [string] = A
        11 [string] = S
        13 [string] = D

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded
        1 [RBXScriptConnection] = Connection
        2 [Instance] = quit_xyz
        3 [Instance] = Humanoid
        4 [Instance] = quit_xyz
        5 [boolean] = true
        6 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        7 [UDim2] = {0, 0}, {-0.191819623, 0}
        8 [Instance] = TweenService
        9 [Instance] = Frame2
        10 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        11 [number] = 0.5
        12 [Instance] = Run Service
        13 [function] = updateTpWalk

Function Constants: onCharacterAdded
        1 [string] = Disconnect
        2 [string] = Humanoid
        3 [string] = WaitForChild
        4 [string] = task
        5 [string] = spawn

====================================================================================================

Function Dump: isGoodStrafePC

Function Upvalues: isGoodStrafePC
        1 [Instance] = Humanoid
        2 [Instance] = UserInputService

Function Constants: isGoodStrafePC
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = Enum
        5 [string] = KeyCode
        6 [string] = W
        7 [EnumItem] = Enum.KeyCode.W
        8 [string] = IsKeyDown
        9 [string] = A
        10 [EnumItem] = Enum.KeyCode.A
        11 [string] = S
        12 [EnumItem] = Enum.KeyCode.S
        13 [string] = D
        14 [EnumItem] = Enum.KeyCode.D

====================================================================================================

Function Dump: updateTpWalk

Function Upvalues: updateTpWalk
        1 [boolean] = true
        2 [Instance] = quit_xyz
        3 [Instance] = Humanoid
        4 [boolean] = true
        5 [function] = isGoodStrafePC
        6 [number] = 0.5

Function Constants: updateTpWalk
        1 [string] = MoveDirection
        2 [string] = Magnitude
        3 [number] = 0.3
        4 [number] = 0.1
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        9 [EnumItem] = Enum.HumanoidStateType.Jumping
        10 [string] = Freefall
        11 [EnumItem] = Enum.HumanoidStateType.Freefall
        12 [number] = 0.05
        13 [number] = 1.5
        14 [string] = math
        15 [string] = min
        17 [number] = 0.5
        18 [string] = max
        20 [number] = 10
        21 [string] = TranslateBy

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [number] = 0.5
        8 [RBXScriptConnection] = Connection
        9 [Instance] = Run Service
        10 [function] = updateTpWalk
        11 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = TPWalk
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [number] = 0.3
        7 [string] = Disconnect
        8 [string] = Heartbeat
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [number] = 0.5
        8 [RBXScriptConnection] = Connection
        9 [Instance] = Run Service
        10 [function] = updateTpWalk

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = Position
        6 [string] = Create
        7 [string] = Play
        8 [number] = 0.3
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = _G
        14 [string] = ConfigSystem
        15 [string] = onSettingChanged
        16 [string] = TPWalk

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [number] = 0.5
        8 [RBXScriptConnection] = Connection
        9 [Instance] = Run Service
        10 [function] = updateTpWalk

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [number] = 0.3
        6 [string] = Disconnect
        7 [string] = Heartbeat
        8 [string] = Connect
        9 [string] = _G
        11 [string] = ConfigSystem
        12 [string] = onSettingChanged
        13 [string] = TPWalk

====================================================================================================
]]


----// XEClient/movement_unknown_1769302762.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:59:20
-- Luau version 6, Types version 3
-- Time taken: 0.008113 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function _(arg1) -- Line 16, Named "updateVisual"
    --[[ Upvalues[5]:
        [1]: udim2_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: TweenService_upvr (readonly)
        [4]: Frame2_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    if not arg1 or not udim2_upvr then
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = udim2_upvr_2;
    }):Play()
end
local var9_upvw
local RunService_upvr = game:GetService("RunService")
local function applySpeed_upvr(arg1) -- Line 22, Named "applySpeed"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: LocalPlayer_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [28] 23. Error Block 6 start (CF ANALYSIS FAILED)
    LocalPlayer_upvr.Character.Humanoid.WalkSpeed = 18
    do
        return
    end
    -- KONSTANTERROR: [28] 23. Error Block 6 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [37] 29. Error Block 15 start (CF ANALYSIS FAILED)
    if var9_upvw then
        var9_upvw:Disconnect()
        var9_upvw = nil
    end
    if LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("Humanoid") then
        LocalPlayer_upvr.Character.Humanoid.WalkSpeed = 14
    end
    -- KONSTANTERROR: [37] 29. Error Block 15 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 47, Named "setSpeedEnabled"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: applySpeed_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var13
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var13 = udim2_upvr
        return var13
    end
    if not var7_upvw or not INLINED_2() then
        var13 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var13;
    }):Play()
    var13 = var7_upvw
    applySpeed_upvr(var13)
    if arg2 then
        var13 = _G
        if var13.ConfigSystem then
            var13 = _G.ConfigSystem
            var13 = "FastSpeed"
            var13.onSettingChanged(var13, var7_upvw)
        end
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 59
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: applySpeed_upvr (readonly)
    ]]
    var7_upvw = not var7_upvw
    local var16
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        var16 = udim2_upvr
        return var16
    end
    if not var7_upvw or not INLINED_3() then
        var16 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var16;
    }):Play()
    var16 = var7_upvw
    applySpeed_upvr(var16)
    var16 = _G
    if var16.ConfigSystem then
        var16 = _G.ConfigSystem
        var16 = "FastSpeed"
        var16.onSettingChanged(var16, var7_upvw)
    end
end)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 64
    --[[ Upvalues[1]:
        [1]: var7_upvw (read and write)
    ]]
    arg1:WaitForChild("Humanoid")
    task.wait(0.5)
    if var7_upvw and arg1:FindFirstChild("Humanoid") then
        arg1.Humanoid.WalkSpeed = 18
    end
end)
if LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("Humanoid") and var7_upvw then
    LocalPlayer_upvr.Character.Humanoid.WalkSpeed = 18
end
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.FastSpeed = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 89
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: applySpeed_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "FastSpeed" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            applySpeed_upvr(var7_upvw)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FastSpeed
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.5
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = FastSpeed

====================================================================================================

Function Dump: setSpeedEnabled

Function Upvalues: setSpeedEnabled

Function Constants: setSpeedEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = FastSpeed

====================================================================================================

Function Dump: applySpeed

Function Upvalues: applySpeed

Function Constants: applySpeed
        1 [string] = Disconnect
        2 [string] = Stepped
        4 [string] = Connect
        5 [string] = Character
        6 [string] = Humanoid
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: updateVisual

Function Upvalues: updateVisual

Function Constants: updateVisual
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play

====================================================================================================

Function Dump: applySpeed

Function Upvalues: applySpeed
        3 [Instance] = quit_xyz
        2 [Instance] = Run Service

Function Constants: applySpeed
        1 [string] = Disconnect
        2 [string] = Stepped
        4 [string] = Connect
        5 [string] = Character
        6 [string] = Humanoid
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = task
        4 [string] = wait
        6 [number] = 0.5
        7 [string] = FindFirstChild
        8 [string] = WalkSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = applySpeed
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FastSpeed
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = applySpeed

Function Constants: Unknown Name
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = FastSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = WalkSpeed

====================================================================================================
]]


----// XEClient/movement_unknown_1769302770.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.TextBox.LocalScript
-- Took 0.33s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:59:29
-- Luau version 6, Types version 3
-- Time taken: 0.039933 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local RunService_upvr_2 = game:GetService("RunService")
local Parent_upvr_2 = script.Parent
local Bind_upvr_2 = script.Parent.Parent:FindFirstChild("Bind")
local var43
local function INLINED_2() -- Internal function, doesn't exist in bytecode
    var43 = Bind_upvr_2.Value
    return var43
end
if not Bind_upvr_2 or not INLINED_2() then
    var43 = "World32"
end
local var44_upvw = false
local var45_upvw = false
local var46_upvw
local var47_upvw
local var48_upvw
local var49_upvw
local var50_upvw
local var51_upvw
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
if var43 == "World32" then
else
end
Parent_upvr_2.Text = var43
_G.AutoPeekActive = false
local function _(arg1, arg2) -- Line 29, Named "updateBind"
    --[[ Upvalues[2]:
        [1]: Bind_upvr_2 (readonly)
        [2]: Parent_upvr_2 (readonly)
    ]]
    Bind_upvr_2.Value = arg1
    local var53
    if arg1 == "World32" then
        var53 = "NONE"
    else
        var53 = arg1
    end
    Parent_upvr_2.Text = var53
    if arg2 then
        var53 = _G
        if var53.ConfigSystem then
            var53 = _G.ConfigSystem
            var53 = "AutoPeekBind"
            var53.onSettingChanged(var53, arg1)
        end
    end
end
local TweenService_upvr = game:GetService("TweenService")
local function createPeekMarker_upvr(arg1) -- Line 39, Named "createPeekMarker"
    --[[ Upvalues[3]:
        [1]: var48_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: RunService_upvr_2 (readonly)
    ]]
    if var48_upvw then
        var48_upvw:Destroy()
    end
    var48_upvw = Instance.new("Part")
    var48_upvw.Name = "AutoPeekMarkerRoot"
    var48_upvw.Size = Vector3.new(1, 0.10000, 1)
    var48_upvw.Position = arg1
    var48_upvw.Anchored = true
    var48_upvw.CanCollide = false
    var48_upvw.CanTouch = false
    var48_upvw.CanQuery = false
    var48_upvw.Transparency = 1
    var48_upvw.Parent = workspace
    local Part_2 = Instance.new("Part")
    Part_2.Name = "InnerDisc"
    Part_2.Shape = Enum.PartType.Cylinder
    Part_2.Size = Vector3.new(0.05000, 2.5, 2.5)
    Part_2.CFrame = var48_upvw.CFrame * CFrame.Angles(0, 0, (math.pi/2))
    Part_2.Material = Enum.Material.Neon
    Part_2.Color = Color3.fromRGB(255, 60, 60)
    Part_2.Transparency = 0.4
    Part_2.Anchored = true
    Part_2.CanCollide = false
    Part_2.Parent = var48_upvw
    TweenService_upvr:Create(Part_2, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
        Transparency = 0.7;
        Size = Vector3.new(0.05000, 2.20000, 2.20000);
    }):Play()
    task.spawn(function() -- Line 73
        --[[ Upvalues[2]:
            [1]: var48_upvw (copied, read and write)
            [2]: RunService_upvr_2 (copied, readonly)
        ]]
        while var48_upvw and var48_upvw.Parent do
            RunService_upvr_2.Heartbeat:Wait()
        end
    end)
end
local function cleanupAutoPeek_upvr() -- Line 83, Named "cleanupAutoPeek"
    --[[ Upvalues[7]:
        [1]: var50_upvw (read and write)
        [2]: var49_upvw (read and write)
        [3]: var51_upvw (read and write)
        [4]: var48_upvw (read and write)
        [5]: var45_upvw (read and write)
        [6]: var46_upvw (read and write)
        [7]: var47_upvw (read and write)
    ]]
    if var50_upvw then
        var50_upvw:Disconnect()
        var50_upvw = nil
    end
    if var49_upvw then
        var49_upvw:Disconnect()
        var49_upvw = nil
    end
    if var51_upvw then
        var51_upvw:Disconnect()
        var51_upvw = nil
    end
    if var48_upvw then
        var48_upvw:Destroy()
        var48_upvw = nil
    end
    var45_upvw = false
    var46_upvw = nil
    var47_upvw = nil
    _G.AutoPeekActive = false
end
local function setPeekPoint_upvr() -- Line 113, Named "setPeekPoint"
    --[[ Upvalues[8]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var46_upvw (read and write)
        [3]: var47_upvw (read and write)
        [4]: var45_upvw (read and write)
        [5]: var51_upvw (read and write)
        [6]: RunService_upvr_2 (readonly)
        [7]: cleanupAutoPeek_upvr (readonly)
        [8]: createPeekMarker_upvr (readonly)
    ]]
    if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then
    else
        local HumanoidRootPart = LocalPlayer_upvr.Character.HumanoidRootPart
        var46_upvw = HumanoidRootPart.Position
        var47_upvw = HumanoidRootPart.CFrame
        var45_upvw = true
        _G.AutoPeekActive = true
        if var51_upvw then
            var51_upvw:Disconnect()
        end
        var51_upvw = RunService_upvr_2.Heartbeat:Connect(function() -- Line 127
            --[[ Upvalues[4]:
                [1]: var45_upvw (copied, read and write)
                [2]: var46_upvw (copied, read and write)
                [3]: LocalPlayer_upvr (copied, readonly)
                [4]: cleanupAutoPeek_upvr (copied, readonly)
            ]]
            if not var45_upvw or not var46_upvw then
            else
                if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then return end
                if 15 < (LocalPlayer_upvr.Character.HumanoidRootPart.Position - var46_upvw).Magnitude then
                    cleanupAutoPeek_upvr()
                end
            end
        end)
        local RaycastParams_new_result1 = RaycastParams.new()
        RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
        RaycastParams_new_result1.FilterDescendantsInstances = {LocalPlayer_upvr.Character}
        local workspace_Raycast_result1 = workspace:Raycast(var46_upvw, Vector3.new(0, -100, 0), RaycastParams_new_result1)
        local var63
        if workspace_Raycast_result1 then
            var63 = workspace_Raycast_result1.Position + Vector3.new(0, 0.10000, 0)
        else
            var63 = Vector3.new(var46_upvw.X, var46_upvw.Y - 3, var46_upvw.Z)
        end
        createPeekMarker_upvr(var63)
    end
end
local function returnToPeekPoint_upvr() -- Line 161, Named "returnToPeekPoint"
    --[[ Upvalues[9]:
        [1]: var45_upvw (read and write)
        [2]: var46_upvw (read and write)
        [3]: LocalPlayer_upvr (readonly)
        [4]: var49_upvw (read and write)
        [5]: var50_upvw (read and write)
        [6]: var51_upvw (read and write)
        [7]: RunService_upvr_2 (readonly)
        [8]: var47_upvw (read and write)
        [9]: cleanupAutoPeek_upvr (readonly)
    ]]
    if not var45_upvw or not var46_upvw then
    else
        if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("Humanoid") or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then return end
        if var49_upvw then
            var49_upvw:Disconnect()
            var49_upvw = nil
        end
        if var50_upvw then
            var50_upvw:Disconnect()
            var50_upvw = nil
        end
        if var51_upvw then
            var51_upvw:Disconnect()
            var51_upvw = nil
        end
        local HumanoidRootPart_2_upvr = LocalPlayer_upvr.Character.HumanoidRootPart
        var50_upvw = RunService_upvr_2.RenderStepped:Connect(function() -- Line 179
            --[[ Upvalues[6]:
                [1]: var45_upvw (copied, read and write)
                [2]: var46_upvw (copied, read and write)
                [3]: var47_upvw (copied, read and write)
                [4]: cleanupAutoPeek_upvr (copied, readonly)
                [5]: LocalPlayer_upvr (copied, readonly)
                [6]: HumanoidRootPart_2_upvr (readonly)
            ]]
            if not var45_upvw or not var46_upvw or not var47_upvw then
                cleanupAutoPeek_upvr()
            else
                if not LocalPlayer_upvr.Character or not LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") then
                    cleanupAutoPeek_upvr()
                    return
                end
                local Position_2 = HumanoidRootPart_2_upvr.Position
                local var67 = Vector3.new(var46_upvw.X, Position_2.Y, var46_upvw.Z) - Vector3.new(Position_2.X, Position_2.Y, Position_2.Z)
                if var67.Magnitude < 0.5 then
                    cleanupAutoPeek_upvr()
                    return
                end
                local var68 = Position_2 + var67.Unit * 0.3
                HumanoidRootPart_2_upvr.CFrame = CFrame.new(Vector3.new(var68.X, Position_2.Y, var68.Z)) * (HumanoidRootPart_2_upvr.CFrame - HumanoidRootPart_2_upvr.CFrame.Position)
            end
        end)
    end
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 208
    --[[ Upvalues[1]:
        [1]: cleanupAutoPeek_upvr (readonly)
    ]]
    cleanupAutoPeek_upvr()
    arg1:WaitForChild("Humanoid").Died:Connect(function() -- Line 211
        --[[ Upvalues[1]:
            [1]: cleanupAutoPeek_upvr (copied, readonly)
        ]]
        cleanupAutoPeek_upvr()
    end)
end)
if LocalPlayer_upvr.Character then
    local Humanoid_2 = LocalPlayer_upvr.Character:FindFirstChild("Humanoid")
    if Humanoid_2 then
        Humanoid_2.Died:Connect(function() -- Line 217
            --[[ Upvalues[1]:
                [1]: cleanupAutoPeek_upvr (readonly)
            ]]
            cleanupAutoPeek_upvr()
        end)
    end
end
Parent_upvr_2.TextButton.MouseButton1Click:Connect(function() -- Line 222
    --[[ Upvalues[3]:
        [1]: var44_upvw (read and write)
        [2]: Parent_upvr_2 (readonly)
        [3]: Bind_upvr_2 (readonly)
    ]]
    var44_upvw = not var44_upvw
    local var74
    if var44_upvw then
        var74 = "..."
        Parent_upvr_2.Text = var74
    else
        if Bind_upvr_2.Value == "World32" then
            var74 = "NONE"
        else
            var74 = Bind_upvr_2.Value
        end
        Parent_upvr_2.Text = var74
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(arg1, arg2) -- Line 232
    --[[ Upvalues[6]:
        [1]: var44_upvw (read and write)
        [2]: Bind_upvr_2 (readonly)
        [3]: Parent_upvr_2 (readonly)
        [4]: var45_upvw (read and write)
        [5]: setPeekPoint_upvr (readonly)
        [6]: returnToPeekPoint_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
    do
        return
    end
    -- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AutoPeekBind = Bind_upvr_2.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 260
        --[[ Upvalues[3]:
            [1]: Bind_upvr_2 (readonly)
            [2]: Parent_upvr_2 (readonly)
            [3]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AutoPeekBind" then
            Bind_upvr_2.Value = arg2
            if arg2 == "World32" then
            else
            end
            Parent_upvr_2.Text = arg2
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.move.ScrollingFrame.Frame.TextBox.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoPeekBind
        2 [string] = Value
        3 [string] = World32
        4 [string] = NONE
        5 [string] = Text

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = KeyCode
        2 [string] = Name
        3 [string] = Delete
        4 [string] = World32
        5 [string] = Value
        6 [string] = NONE
        7 [string] = Text
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = AutoPeekBind

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = ...
        2 [string] = Text
        3 [string] = Value
        4 [string] = World32
        5 [string] = NONE

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = Died
        5 [string] = Connect

====================================================================================================

Function Dump: returnToPeekPoint

Function Upvalues: returnToPeekPoint

Function Constants: returnToPeekPoint
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = Disconnect
        6 [string] = RenderStepped
        7 [string] = Connect

====================================================================================================

Function Dump: setPeekPoint

Function Upvalues: setPeekPoint

Function Constants: setPeekPoint
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Position
        5 [string] = CFrame
        6 [string] = _G
        8 [string] = AutoPeekActive
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = RaycastParams
        13 [string] = new
        15 [string] = Enum
        16 [string] = RaycastFilterType
        17 [string] = Exclude
        19 [string] = FilterType
        20 [string] = FilterDescendantsInstances
        21 [string] = workspace
        23 [Vector3] = 0, -100, 0
        24 [string] = Raycast
        25 [Vector3] = 0, 0.10000000149011612, 0
        26 [string] = X
        27 [number] = 3
        28 [string] = Y
        29 [string] = Z
        30 [string] = Vector3

====================================================================================================

Function Dump: cleanupAutoPeek

Function Upvalues: cleanupAutoPeek

Function Constants: cleanupAutoPeek
        1 [string] = Disconnect
        2 [string] = Destroy
        3 [string] = _G
        5 [string] = AutoPeekActive

====================================================================================================

Function Dump: createPeekMarker

Function Upvalues: createPeekMarker

Function Constants: createPeekMarker
        1 [string] = Destroy
        2 [string] = Instance
        3 [string] = new
        5 [string] = Part
        6 [string] = AutoPeekMarkerRoot
        7 [string] = Name
        8 [Vector3] = 1, 0.10000000149011612, 1
        9 [string] = Size
        10 [string] = Position
        11 [string] = Anchored
        12 [string] = CanCollide
        13 [string] = CanTouch
        14 [string] = CanQuery
        15 [string] = Transparency
        16 [string] = workspace
        18 [string] = Parent
        19 [string] = Color3
        20 [string] = fromRGB
        22 [string] = InnerDisc
        23 [string] = Enum
        24 [string] = PartType
        25 [string] = Cylinder
        27 [string] = Shape
        28 [Vector3] = 0.05000000074505806, 2.5, 2.5
        29 [string] = CFrame
        30 [string] = Angles
        32 [number] = 1.5707963267948966
        33 [string] = Material
        34 [string] = Neon
        36 [string] = Color
        37 [number] = 0.4
        38 [string] = TweenInfo
        40 [number] = 1.5
        41 [string] = EasingStyle
        42 [string] = Sine
        44 [string] = EasingDirection
        45 [string] = InOut
        48 [number] = 0.7
        49 [Vector3] = 0.05000000074505806, 2.200000047683716, 2.200000047683716
        50 [string] = Create
        51 [string] = Play
        52 [string] = task
        53 [string] = spawn

====================================================================================================

Function Dump: updateBind

Function Upvalues: updateBind

Function Constants: updateBind
        1 [string] = Value
        2 [string] = World32
        3 [string] = NONE
        4 [string] = Text
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoPeekBind

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox
        3 [Instance] = Bind

Function Constants: Unknown Name
        1 [string] = ...
        2 [string] = Text
        3 [string] = Value
        4 [string] = World32
        5 [string] = NONE

====================================================================================================

Function Dump: createPeekMarker

Function Upvalues: createPeekMarker
        3 [Instance] = Run Service
        2 [Instance] = TweenService

Function Constants: createPeekMarker
        1 [string] = Destroy
        2 [string] = Instance
        3 [string] = new
        5 [string] = Part
        6 [string] = AutoPeekMarkerRoot
        7 [string] = Name
        8 [Vector3] = 1, 0.10000000149011612, 1
        9 [string] = Size
        10 [string] = Position
        11 [string] = Anchored
        12 [string] = CanCollide
        13 [string] = CanTouch
        14 [string] = CanQuery
        15 [string] = Transparency
        16 [string] = workspace
        17 [Instance] = Workspace
        18 [string] = Parent
        19 [string] = Color3
        20 [string] = fromRGB
        22 [string] = InnerDisc
        23 [string] = Enum
        24 [string] = PartType
        25 [string] = Cylinder
        26 [EnumItem] = Enum.PartType.Cylinder
        27 [string] = Shape
        28 [Vector3] = 0.05000000074505806, 2.5, 2.5
        29 [string] = CFrame
        30 [string] = Angles
        32 [number] = 1.5707963267948966
        33 [string] = Material
        34 [string] = Neon
        35 [EnumItem] = Enum.Material.Neon
        36 [string] = Color
        37 [number] = 0.4
        38 [string] = TweenInfo
        40 [number] = 1.5
        41 [string] = EasingStyle
        42 [string] = Sine
        43 [EnumItem] = Enum.EasingStyle.Sine
        44 [string] = EasingDirection
        45 [string] = InOut
        46 [EnumItem] = Enum.EasingDirection.InOut
        48 [number] = 0.7
        49 [Vector3] = 0.05000000074505806, 2.200000047683716, 2.200000047683716
        50 [string] = Create
        51 [string] = Play
        52 [string] = task
        53 [string] = spawn

====================================================================================================

Function Dump: returnToPeekPoint

Function Upvalues: returnToPeekPoint
        1 [boolean] = false
        7 [Instance] = Run Service
        9 [function] = cleanupAutoPeek
        3 [Instance] = quit_xyz

Function Constants: returnToPeekPoint
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = Disconnect
        6 [string] = RenderStepped
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Bind
        3 [Instance] = TextBox
        4 [boolean] = false
        5 [function] = setPeekPoint
        6 [function] = returnToPeekPoint

Function Constants: Unknown Name
        1 [string] = KeyCode
        2 [string] = Name
        3 [string] = Delete
        4 [string] = World32
        5 [string] = Value
        6 [string] = NONE
        7 [string] = Text
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = AutoPeekBind

====================================================================================================

Function Dump: setPeekPoint

Function Upvalues: setPeekPoint
        1 [Instance] = quit_xyz
        6 [Instance] = Run Service
        8 [function] = createPeekMarker
        7 [function] = cleanupAutoPeek
        4 [boolean] = false

Function Constants: setPeekPoint
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Position
        5 [string] = CFrame
        6 [string] = _G
        8 [string] = AutoPeekActive
        9 [string] = Disconnect
        10 [string] = Heartbeat
        11 [string] = Connect
        12 [string] = RaycastParams
        13 [string] = new
        15 [string] = Enum
        16 [string] = RaycastFilterType
        17 [string] = Exclude
        18 [EnumItem] = Enum.RaycastFilterType.Exclude
        19 [string] = FilterType
        20 [string] = FilterDescendantsInstances
        21 [string] = workspace
        22 [Instance] = Workspace
        23 [Vector3] = 0, -100, 0
        24 [string] = Raycast
        25 [Vector3] = 0, 0.10000000149011612, 0
        26 [string] = X
        27 [number] = 3
        28 [string] = Y
        29 [string] = Z
        30 [string] = Vector3

====================================================================================================

Function Dump: cleanupAutoPeek

Function Upvalues: cleanupAutoPeek
        5 [boolean] = false

Function Constants: cleanupAutoPeek
        1 [string] = Disconnect
        2 [string] = Destroy
        3 [string] = _G
        5 [string] = AutoPeekActive

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = cleanupAutoPeek

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = Died
        5 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = cleanupAutoPeek

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Bind
        2 [Instance] = TextBox
        3 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoPeekBind
        2 [string] = Value
        3 [string] = World32
        4 [string] = NONE
        5 [string] = Text

====================================================================================================
]]


----// XEClient/other_fakelag_1769302679.lua






