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
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.misc.ScrollingFrame.Frame1.toggle1.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:57:52
-- Luau version 6, Types version 3
-- Time taken: 0.010700 seconds

local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local var5_upvw = false
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local function setAnimSpeed_upvr(arg1) -- Line 29, Named "setAnimSpeed"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character_2 = LocalPlayer_upvr.Character
    if Character_2 then
        local Humanoid_2 = Character_2:FindFirstChild("Humanoid")
        if Humanoid_2 then
            for _, v in pairs(Humanoid_2:GetPlayingAnimationTracks()) do
                v:AdjustSpeed(arg1)
            end
        end
    end
end
local function _() -- Line 43, Named "startLagLoop"
    --[[ Upvalues[3]:
        [1]: var5_upvw (read and write)
        [2]: setAnimSpeed_upvr (readonly)
        [3]: RunService_upvr (readonly)
    ]]
    task.spawn(function() -- Line 44
        --[[ Upvalues[3]:
            [1]: var5_upvw (copied, read and write)
            [2]: setAnimSpeed_upvr (copied, readonly)
            [3]: RunService_upvr (copied, readonly)
        ]]
        while var5_upvw do
            setAnimSpeed_upvr(1)
            task.wait(math.random(10, 30) / 100)
            if not var5_upvw then break end
            setAnimSpeed_upvr(0)
            while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                setAnimSpeed_upvr(0)
                RunService_upvr.Heartbeat:Wait()
            end
        end
        setAnimSpeed_upvr(1)
    end)
end
local function setFakelagEnabled_upvr(arg1, arg2) -- Line 76, Named "setFakelagEnabled"
    --[[ Upvalues[8]:
        [1]: var5_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: setAnimSpeed_upvr (readonly)
        [8]: RunService_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    var5_upvw = arg1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 19 start (CF ANALYSIS FAILED)
    local var24 = udim2_upvr_2
    if not var24 then
        -- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
        var24 = udim2_upvr
        -- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var24;
    }):Play()
    if var5_upvw then
        task.spawn(function() -- Line 44
            --[[ Upvalues[3]:
                [1]: var5_upvw (copied, read and write)
                [2]: setAnimSpeed_upvr (copied, readonly)
                [3]: RunService_upvr (copied, readonly)
            ]]
            while var5_upvw do
                setAnimSpeed_upvr(1)
                task.wait(math.random(10, 30) / 100)
                if not var5_upvw then break end
                setAnimSpeed_upvr(0)
                while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                    setAnimSpeed_upvr(0)
                    RunService_upvr.Heartbeat:Wait()
                end
            end
            setAnimSpeed_upvr(1)
        end)
    else
        setAnimSpeed_upvr(1)
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("fakelag", var5_upvw)
    end
    -- KONSTANTERROR: [3] 4. Error Block 19 end (CF ANALYSIS FAILED)
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 97
    --[[ Upvalues[2]:
        [1]: setFakelagEnabled_upvr (readonly)
        [2]: var5_upvw (read and write)
    ]]
    setFakelagEnabled_upvr(not var5_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.fakelag = var5_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 106
        --[[ Upvalues[9]:
            [1]: var5_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: setAnimSpeed_upvr (readonly)
            [8]: RunService_upvr (readonly)
            [9]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "fakelag" then
            var5_upvw = arg2
            if not var5_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if var5_upvw then
                task.spawn(function() -- Line 44
                    --[[ Upvalues[3]:
                        [1]: var5_upvw (copied, read and write)
                        [2]: setAnimSpeed_upvr (copied, readonly)
                        [3]: RunService_upvr (copied, readonly)
                    ]]
                    while var5_upvw do
                        setAnimSpeed_upvr(1)
                        task.wait(math.random(10, 30) / 100)
                        if not var5_upvw then break end
                        setAnimSpeed_upvr(0)
                        while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                            setAnimSpeed_upvr(0)
                            RunService_upvr.Heartbeat:Wait()
                        end
                    end
                    setAnimSpeed_upvr(1)
                end)
            else
                setAnimSpeed_upvr(1)
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
onConfigLoad_upvr = LocalPlayer_upvr.CharacterAdded
onConfigLoad_upvr = onConfigLoad_upvr:Connect
onConfigLoad_upvr(function() -- Line 117
    --[[ Upvalues[3]:
        [1]: var5_upvw (read and write)
        [2]: setAnimSpeed_upvr (readonly)
        [3]: RunService_upvr (readonly)
    ]]
    if var5_upvw then
        task.wait(0.5)
        task.spawn(function() -- Line 44
            --[[ Upvalues[3]:
                [1]: var5_upvw (copied, read and write)
                [2]: setAnimSpeed_upvr (copied, readonly)
                [3]: RunService_upvr (copied, readonly)
            ]]
            while var5_upvw do
                setAnimSpeed_upvr(1)
                task.wait(math.random(10, 30) / 100)
                if not var5_upvw then break end
                setAnimSpeed_upvr(0)
                while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                    setAnimSpeed_upvr(0)
                    RunService_upvr.Heartbeat:Wait()
                end
            end
            setAnimSpeed_upvr(1)
        end)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.misc.ScrollingFrame.Frame1.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = fakelag
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = task
        7 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setFakelagEnabled

Function Upvalues: setFakelagEnabled

Function Constants: setFakelagEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = task
        6 [string] = spawn
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = fakelag

====================================================================================================

Function Dump: startLagLoop

Function Upvalues: startLagLoop

Function Constants: startLagLoop
        1 [string] = task
        2 [string] = spawn

====================================================================================================

Function Dump: setAnimSpeed

Function Upvalues: setAnimSpeed

Function Constants: setAnimSpeed
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = AdjustSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = setAnimSpeed
        3 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = setAnimSpeed
        8 [Instance] = Run Service
        9 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = fakelag
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = task
        7 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setFakelagEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setFakelagEnabled

Function Upvalues: setFakelagEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = setAnimSpeed
        8 [Instance] = Run Service

Function Constants: setFakelagEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = task
        6 [string] = spawn
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = fakelag

====================================================================================================

Function Dump: setAnimSpeed

Function Upvalues: setAnimSpeed
        1 [Instance] = quit_xyz

Function Constants: setAnimSpeed
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = AdjustSpeed

====================================================================================================
]]


----// XEClient/other_fakelag_1769302701.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.misc.ScrollingFrame.Frame1.toggle1.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:58:19
-- Luau version 6, Types version 3
-- Time taken: 0.010147 seconds

local TweenService_upvr = game:GetService("TweenService")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local var5_upvw = false
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local function setAnimSpeed_upvr(arg1) -- Line 29, Named "setAnimSpeed"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character_2 = LocalPlayer_upvr.Character
    if Character_2 then
        local Humanoid_2 = Character_2:FindFirstChild("Humanoid")
        if Humanoid_2 then
            for _, v in pairs(Humanoid_2:GetPlayingAnimationTracks()) do
                v:AdjustSpeed(arg1)
            end
        end
    end
end
local function _() -- Line 43, Named "startLagLoop"
    --[[ Upvalues[3]:
        [1]: var5_upvw (read and write)
        [2]: setAnimSpeed_upvr (readonly)
        [3]: RunService_upvr (readonly)
    ]]
    task.spawn(function() -- Line 44
        --[[ Upvalues[3]:
            [1]: var5_upvw (copied, read and write)
            [2]: setAnimSpeed_upvr (copied, readonly)
            [3]: RunService_upvr (copied, readonly)
        ]]
        while var5_upvw do
            setAnimSpeed_upvr(1)
            task.wait(math.random(10, 30) / 100)
            if not var5_upvw then break end
            setAnimSpeed_upvr(0)
            while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                setAnimSpeed_upvr(0)
                RunService_upvr.Heartbeat:Wait()
            end
        end
        setAnimSpeed_upvr(1)
    end)
end
local function setFakelagEnabled_upvr(arg1, arg2) -- Line 76, Named "setFakelagEnabled"
    --[[ Upvalues[8]:
        [1]: var5_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: setAnimSpeed_upvr (readonly)
        [8]: RunService_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    var5_upvw = arg1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 19 start (CF ANALYSIS FAILED)
    local var24 = udim2_upvr_2
    if not var24 then
        -- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
        var24 = udim2_upvr
        -- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var24;
    }):Play()
    if var5_upvw then
        task.spawn(function() -- Line 44
            --[[ Upvalues[3]:
                [1]: var5_upvw (copied, read and write)
                [2]: setAnimSpeed_upvr (copied, readonly)
                [3]: RunService_upvr (copied, readonly)
            ]]
            while var5_upvw do
                setAnimSpeed_upvr(1)
                task.wait(math.random(10, 30) / 100)
                if not var5_upvw then break end
                setAnimSpeed_upvr(0)
                while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                    setAnimSpeed_upvr(0)
                    RunService_upvr.Heartbeat:Wait()
                end
            end
            setAnimSpeed_upvr(1)
        end)
    else
        setAnimSpeed_upvr(1)
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("fakelag", var5_upvw)
    end
    -- KONSTANTERROR: [3] 4. Error Block 19 end (CF ANALYSIS FAILED)
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 97
    --[[ Upvalues[2]:
        [1]: setFakelagEnabled_upvr (readonly)
        [2]: var5_upvw (read and write)
    ]]
    setFakelagEnabled_upvr(not var5_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.fakelag = var5_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 106
        --[[ Upvalues[9]:
            [1]: var5_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: setAnimSpeed_upvr (readonly)
            [8]: RunService_upvr (readonly)
            [9]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "fakelag" then
            var5_upvw = arg2
            if not var5_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if var5_upvw then
                task.spawn(function() -- Line 44
                    --[[ Upvalues[3]:
                        [1]: var5_upvw (copied, read and write)
                        [2]: setAnimSpeed_upvr (copied, readonly)
                        [3]: RunService_upvr (copied, readonly)
                    ]]
                    while var5_upvw do
                        setAnimSpeed_upvr(1)
                        task.wait(math.random(10, 30) / 100)
                        if not var5_upvw then break end
                        setAnimSpeed_upvr(0)
                        while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                            setAnimSpeed_upvr(0)
                            RunService_upvr.Heartbeat:Wait()
                        end
                    end
                    setAnimSpeed_upvr(1)
                end)
            else
                setAnimSpeed_upvr(1)
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
onConfigLoad_upvr = LocalPlayer_upvr.CharacterAdded
onConfigLoad_upvr = onConfigLoad_upvr:Connect
onConfigLoad_upvr(function() -- Line 117
    --[[ Upvalues[3]:
        [1]: var5_upvw (read and write)
        [2]: setAnimSpeed_upvr (readonly)
        [3]: RunService_upvr (readonly)
    ]]
    if var5_upvw then
        task.wait(0.5)
        task.spawn(function() -- Line 44
            --[[ Upvalues[3]:
                [1]: var5_upvw (copied, read and write)
                [2]: setAnimSpeed_upvr (copied, readonly)
                [3]: RunService_upvr (copied, readonly)
            ]]
            while var5_upvw do
                setAnimSpeed_upvr(1)
                task.wait(math.random(10, 30) / 100)
                if not var5_upvw then break end
                setAnimSpeed_upvr(0)
                while tick() < tick() + math.random(15, 50) / 100 and var5_upvw do
                    setAnimSpeed_upvr(0)
                    RunService_upvr.Heartbeat:Wait()
                end
            end
            setAnimSpeed_upvr(1)
        end)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.misc.ScrollingFrame.Frame1.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = fakelag
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = task
        7 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setFakelagEnabled

Function Upvalues: setFakelagEnabled

Function Constants: setFakelagEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = task
        6 [string] = spawn
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = fakelag

====================================================================================================

Function Dump: startLagLoop

Function Upvalues: startLagLoop

Function Constants: startLagLoop
        1 [string] = task
        2 [string] = spawn

====================================================================================================

Function Dump: setAnimSpeed

Function Upvalues: setAnimSpeed

Function Constants: setAnimSpeed
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = AdjustSpeed

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = setAnimSpeed
        3 [Instance] = Run Service

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = setAnimSpeed
        8 [Instance] = Run Service
        9 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = fakelag
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = task
        7 [string] = spawn

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setFakelagEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setFakelagEnabled

Function Upvalues: setFakelagEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = setAnimSpeed
        8 [Instance] = Run Service

Function Constants: setFakelagEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = task
        6 [string] = spawn
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = fakelag

====================================================================================================

Function Dump: setAnimSpeed

Function Upvalues: setAnimSpeed
        1 [Instance] = quit_xyz

Function Constants: setAnimSpeed
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = AdjustSpeed

====================================================================================================
]]


----// XEClient/other_unknown_1769301285.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.storage.wt.container.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:34:43
-- Luau version 6, Types version 3
-- Time taken: 0.002532 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Parent_upvr = script.Parent
Parent_upvr:WaitForChild("nick").Text = LocalPlayer_upvr.Name
local var4_upvw = 0
local var5_upvw = 0
local var6_upvw = 1
local UIGradient_upvr = Parent_upvr:WaitForChild("client"):WaitForChild("UIGradient")
local clientcolor_upvr = Parent_upvr.Parent.Parent:WaitForChild("clientcolor")
game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 29
    --[[ Upvalues[7]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var4_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var5_upvw (read and write)
        [5]: var6_upvw (read and write)
        [6]: UIGradient_upvr (readonly)
        [7]: clientcolor_upvr (readonly)
    ]]
    var4_upvw += (math.floor(LocalPlayer_upvr:GetNetworkPing() * 1000) - var4_upvw) * math.clamp(arg1 * 10, 0, 1)
    Parent_upvr.ping.Text = string.format("%dms", var4_upvw)
    var5_upvw = (var5_upvw + 30 * arg1) % 360
    if 360 <= var5_upvw then
        var5_upvw = 360
        var6_upvw = -1
    elseif var5_upvw <= 0 then
        var5_upvw = 0
        var6_upvw = 1
    end
    UIGradient_upvr.Rotation = var5_upvw
    local Value = clientcolor_upvr.Value
    UIGradient_upvr.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Value), ColorSequenceKeypoint.new(1, Value:Lerp(Color3.new(1, 1, 1), 0.3))})
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.storage.wt.container.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [number] = 1000
        2 [string] = GetNetworkPing
        3 [string] = math
        4 [string] = floor
        6 [number] = 10
        7 [string] = clamp
        9 [string] = ping
        10 [string] = string
        11 [string] = format
        13 [string] = %dms
        14 [string] = Text
        15 [number] = 360
        16 [string] = Rotation
        17 [string] = Value
        18 [string] = ColorSequence
        19 [string] = new
        21 [string] = ColorSequenceKeypoint
        23 [string] = Color3
        25 [number] = 0.3
        26 [string] = Lerp
        27 [string] = Color

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [number] = 375.0000000000001
        3 [Instance] = container
        4 [number] = 337.08951575215906
        5 [number] = 1
        6 [Instance] = UIGradient
        7 [Instance] = clientcolor

Function Constants: Unknown Name
        1 [number] = 1000
        2 [string] = GetNetworkPing
        3 [string] = math
        4 [string] = floor
        6 [number] = 10
        7 [string] = clamp
        9 [string] = ping
        10 [string] = string
        11 [string] = format
        13 [string] = %dms
        14 [string] = Text
        15 [number] = 360
        16 [string] = Rotation
        17 [string] = Value
        18 [string] = ColorSequence
        19 [string] = new
        21 [string] = ColorSequenceKeypoint
        23 [string] = Color3
        25 [number] = 0.3
        26 [string] = Lerp
        27 [string] = Color

====================================================================================================
]]


----// XEClient/other_unknown_1769301316.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.TextButton:GetChildren()[2]
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:35:02
-- Luau version 6, Types version 3
-- Time taken: 0.002994 seconds

local Parent_upvr = script.Parent
local var2_upvw = false
local var3_upvw
local var4_upvw
local var5_upvw
local function _(arg1) -- Line 7, Named "update"
    --[[ Upvalues[3]:
        [1]: var4_upvw (read and write)
        [2]: Parent_upvr (readonly)
        [3]: var5_upvw (read and write)
    ]]
    local var6 = arg1.Position - var4_upvw
    Parent_upvr.Position = UDim2.new(var5_upvw.X.Scale, var5_upvw.X.Offset + var6.X, var5_upvw.Y.Scale, var5_upvw.Y.Offset + var6.Y)
end
Parent_upvr.InputBegan:Connect(function(arg1) -- Line 17
    --[[ Upvalues[4]:
        [1]: var2_upvw (read and write)
        [2]: var4_upvw (read and write)
        [3]: var5_upvw (read and write)
        [4]: Parent_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var2_upvw = true
        var4_upvw = arg1.Position
        var5_upvw = Parent_upvr.Position
        arg1.Changed:Connect(function() -- Line 23
            --[[ Upvalues[2]:
                [1]: arg1 (readonly)
                [2]: var2_upvw (copied, read and write)
            ]]
            if arg1.UserInputState == Enum.UserInputState.End then
                var2_upvw = false
            end
        end)
    end
end)
Parent_upvr.InputChanged:Connect(function(arg1) -- Line 31
    --[[ Upvalues[1]:
        [1]: var3_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseMovement then
        var3_upvw = arg1
    end
end)
game:GetService("UserInputService").InputChanged:Connect(function(arg1) -- Line 37
    --[[ Upvalues[5]:
        [1]: var3_upvw (read and write)
        [2]: var2_upvw (read and write)
        [3]: var4_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: var5_upvw (read and write)
    ]]
    if arg1 == var3_upvw and var2_upvw then
        local var11 = arg1.Position - var4_upvw
        Parent_upvr.Position = UDim2.new(var5_upvw.X.Scale, var5_upvw.X.Offset + var11.X, var5_upvw.Y.Scale, var5_upvw.Y.Offset + var11.Y)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.TextButton:GetChildren()[2]

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = UDim2
        3 [string] = new
        5 [string] = X
        6 [string] = Scale
        7 [string] = Offset
        8 [string] = Y

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseMovement

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Position
        6 [string] = Changed
        7 [string] = Connect

====================================================================================================

Function Dump: update

Function Upvalues: update

Function Constants: update
        1 [string] = Position
        2 [string] = UDim2
        3 [string] = new
        5 [string] = X
        6 [string] = Scale
        7 [string] = Offset
        8 [string] = Y

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseMovement
        4 [EnumItem] = Enum.UserInputType.MouseMovement

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        4 [Instance] = TextButton

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Position
        6 [string] = Changed
        7 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        2 [boolean] = false
        4 [Instance] = TextButton

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = UDim2
        3 [string] = new
        5 [string] = X
        6 [string] = Scale
        7 [string] = Offset
        8 [string] = Y

====================================================================================================
]]


----// XEClient/rage_AntiFToggle_1769301645.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle2.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:40:42
-- Luau version 6, Types version 3
-- Time taken: 0.003661 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local AntiF_upvr = script.Parent.Parent:FindFirstChild("AntiF")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function setToggle_upvr(arg1, arg2) -- Line 14, Named "setToggle"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: AntiF_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var8
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var8 = udim2_upvr
        return var8
    end
    if not var7_upvw or not INLINED() then
        var8 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var8;
    }):Play()
    if AntiF_upvr then
        AntiF_upvr.Value = var7_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AntiFToggle", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 31
    --[[ Upvalues[2]:
        [1]: setToggle_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setToggle_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AntiFToggle = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 41
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: AntiF_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AntiFToggle" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if AntiF_upvr then
                AntiF_upvr.Value = var7_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AntiFToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggle

Function Upvalues: setToggle

Function Constants: setToggle
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = AntiFToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggle
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = AntiF
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AntiFToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: setToggle

Function Upvalues: setToggle
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = AntiF

Function Constants: setToggle
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = AntiFToggle

====================================================================================================
]]


----// XEClient/rage_AutoS_1769301797.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:14
-- Luau version 6, Types version 3
-- Time taken: 0.004022 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local AutoS_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("AutoS")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local function setAutoSEnabled_upvr(arg1, arg2) -- Line 11, Named "setAutoSEnabled"
    --[[ Upvalues[6]:
        [1]: AutoS_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    AutoS_upvr.Value = arg1
    local var7
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var7 = udim2_upvr_2
        return var7
    end
    if not arg1 or not INLINED() then
        var7 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var7;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AutoS", arg1)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 23
    --[[ Upvalues[2]:
        [1]: setAutoSEnabled_upvr (readonly)
        [2]: AutoS_upvr (readonly)
    ]]
    setAutoSEnabled_upvr(not AutoS_upvr.Value, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AutoS = AutoS_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 33
        --[[ Upvalues[7]:
            [1]: AutoS_upvr (readonly)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AutoS" then
            AutoS_upvr.Value = arg2
            if not arg2 or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoS
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: setAutoSEnabled

Function Upvalues: setAutoSEnabled

Function Constants: setAutoSEnabled
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = AutoS

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = AutoS
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoS
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: setAutoSEnabled

Function Upvalues: setAutoSEnabled
        1 [Instance] = AutoS
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setAutoSEnabled
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = AutoS

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAutoSEnabled
        2 [Instance] = AutoS

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================
]]


----// XEClient/rage_AutoShoot_1769301632.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.58s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:40:25
-- Luau version 6, Types version 3
-- Time taken: 0.114343 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local TweenService_upvr = game:GetService("TweenService")
local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local Workspace_upvr = game:GetService("Workspace")
local CurrentCamera_upvr = Workspace_upvr.CurrentCamera
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var12_upvw
if not ReplicatedStorage:FindFirstChild("DTMarker") then
    var12_upvw = "RemoteEvent"
    local any_upvw = Instance.new(var12_upvw)
    any_upvw.Name = "DTMarker"
    any_upvw.Parent = ReplicatedStorage
end
var12_upvw = script.Parent
local DT = var12_upvw.Parent:FindFirstChild("DT")
local function INLINED() -- Internal function, doesn't exist in bytecode
    var12_upvw = DT.Value
    return var12_upvw
end
if not DT or not INLINED() then
    var12_upvw = false
end
if DT then
    DT.Changed:Connect(function(arg1) -- Line 34
        --[[ Upvalues[1]:
            [1]: var12_upvw (read and write)
        ]]
        var12_upvw = arg1
    end)
end
local var16_upvw = false
local var17_upvw
local function setAutoShootEnabled_upvr(arg1, arg2) -- Line 41, Named "setAutoShootEnabled"
    --[[ Upvalues[7]:
        [1]: var16_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var17_upvw (read and write)
    ]]
    var16_upvw = arg1
    local var18
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var18 = udim2_upvr_2
        return var18
    end
    if not var16_upvw or not INLINED_2() then
        var18 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var18;
    }):Play()
    if not var16_upvw then
        var17_upvw = nil
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AutoShoot", var16_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 55
    --[[ Upvalues[2]:
        [1]: setAutoShootEnabled_upvr (readonly)
        [2]: var16_upvw (read and write)
    ]]
    setAutoShootEnabled_upvr(not var16_upvw, true)
end)
local var21_upvw = 0
local var22_upvw = false
local var23_upvw = 0
local var24_upvw = false
local Fov = script.Parent.Parent:FindFirstChild("Fov")
if not Fov or not Fov.Value then
    local var26_upvw = 360
end
if Fov then
    Fov.Changed:Connect(function(arg1) -- Line 79
        --[[ Upvalues[1]:
            [1]: var26_upvw (read and write)
        ]]
        var26_upvw = arg1
    end)
end
local Prediction = script.Parent.Parent:FindFirstChild("Prediction")
if not Prediction or not Prediction.Value then
    local var29_upvw = false
end
if Prediction then
    Prediction.Changed:Connect(function(arg1) -- Line 88
        --[[ Upvalues[1]:
            [1]: var29_upvw (read and write)
        ]]
        var29_upvw = arg1
    end)
end
local Head_2 = script.Parent.Parent:FindFirstChild("Head")
local Legs = script.Parent.Parent:FindFirstChild("Legs")
local Torso = script.Parent.Parent:FindFirstChild("Torso")
if not Head_2 or not Head_2.Value then
end
if not Legs or not Legs.Value then
end
if not Torso or not Torso.Value then
end
if Head_2 then
    local var35_upvw = true
    Head_2.Changed:Connect(function(arg1) -- Line 100
        --[[ Upvalues[1]:
            [1]: var35_upvw (read and write)
        ]]
        var35_upvw = arg1
    end)
end
if Legs then
    local var37_upvw = true
    Legs.Changed:Connect(function(arg1) -- Line 101
        --[[ Upvalues[1]:
            [1]: var37_upvw (read and write)
        ]]
        var37_upvw = arg1
    end)
end
if Torso then
    local var39_upvw = true
    Torso.Changed:Connect(function(arg1) -- Line 102
        --[[ Upvalues[1]:
            [1]: var39_upvw (read and write)
        ]]
        var39_upvw = arg1
    end)
end
local BAim = script.Parent.Parent:FindFirstChild("BAim")
local Hitchance = script.Parent.Parent:FindFirstChild("Hitchance")
local MinDamage = script.Parent.Parent:FindFirstChild("MinDamage")
local AutoS = script.Parent.Parent:FindFirstChild("AutoS")
if not BAim or not BAim.Value then
end
if not Hitchance or not Hitchance.Value then
    local var44_upvw = 100
end
if not MinDamage or not MinDamage.Value then
    local var45_upvw = 0
end
if not AutoS or not AutoS.Value then
    local var46_upvw = false
end
if BAim then
    local var48_upvw = false
    BAim.Changed:Connect(function(arg1) -- Line 117
        --[[ Upvalues[1]:
            [1]: var48_upvw (read and write)
        ]]
        var48_upvw = arg1
    end)
end
if Hitchance then
    Hitchance.Changed:Connect(function(arg1) -- Line 118
        --[[ Upvalues[1]:
            [1]: var44_upvw (read and write)
        ]]
        var44_upvw = arg1
    end)
end
if MinDamage then
    MinDamage.Changed:Connect(function(arg1) -- Line 119
        --[[ Upvalues[1]:
            [1]: var45_upvw (read and write)
        ]]
        var45_upvw = arg1
    end)
end
if AutoS then
    AutoS.Changed:Connect(function(arg1) -- Line 120
        --[[ Upvalues[1]:
            [1]: var46_upvw (read and write)
        ]]
        var46_upvw = arg1
    end)
end
local tbl_4_upvr = {
    Head = 4;
    UpperTorso = 1;
    LowerTorso = 1;
    Torso = 1;
    HumanoidRootPart = 1;
    LeftUpperArm = 0.75;
    LeftLowerArm = 0.75;
    LeftHand = 0.75;
    RightUpperArm = 0.75;
    RightLowerArm = 0.75;
    RightHand = 0.75;
    LeftUpperLeg = 0.6;
    LeftLowerLeg = 0.6;
    LeftFoot = 0.6;
    RightUpperLeg = 0.6;
    RightLowerLeg = 0.6;
    RightFoot = 0.6;
    ["Left Leg"] = 0.6;
    ["Right Leg"] = 0.6;
}
local function getToolComponents_upvr() -- Line 146, Named "getToolComponents"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character_3 = LocalPlayer_upvr.Character
    if not Character_3 then
        return nil
    end
    local class_Tool = Character_3:FindFirstChildOfClass("Tool")
    if not class_Tool then
        return nil
    end
    local Remotes = class_Tool:FindFirstChild("Remotes")
    if not Remotes then
        return nil
    end
    local FireShot = Remotes:FindFirstChild("FireShot")
    if not FireShot then
        return nil
    end
    return {
        tool = class_Tool;
        fireShot = FireShot;
        reload = Remotes:FindFirstChild("Reload");
        handle = class_Tool:FindFirstChild("Handle");
    }
end
local var58_upvw = 0
local function performDoubleTapTeleport_upvr() -- Line 172, Named "performDoubleTapTeleport"
    --[[ Upvalues[5]:
        [1]: var58_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var12_upvw (read and write)
        [4]: any_upvw (read and write)
        [5]: Workspace_upvr (readonly)
    ]]
    local var59
    if os.clock() - var58_upvw < var59 then
    else
        var59 = LocalPlayer_upvr:FindFirstChild("leaderstats")
        if var59 then
            var59 = LocalPlayer_upvr:FindFirstChild("leaderstats"):FindFirstChild("leavemealonexd")
        end
        if not var12_upvw then
            if var59 and var59.Value ~= true then
                var59.Value = true
            end
            return
        end
        var58_upvw = os.clock()
        if var59 then
            var59.Value = false
        end
        local Character_8_upvr = LocalPlayer_upvr.Character
        if not Character_8_upvr then return end
        local Humanoid_3 = Character_8_upvr:FindFirstChild("Humanoid")
        local HumanoidRootPart = Character_8_upvr:FindFirstChild("HumanoidRootPart")
        if not Humanoid_3 or not HumanoidRootPart or Humanoid_3.Health <= 0 then return end
        pcall(function() -- Line 195
            --[[ Upvalues[1]:
                [1]: any_upvw (copied, read and write)
            ]]
            any_upvw:FireServer("start", 4)
        end)
        local MoveDirection = Humanoid_3.MoveDirection
        if MoveDirection.Magnitude < 0.05 then
            MoveDirection = HumanoidRootPart.CFrame.LookVector
        end
        local Unit_4 = Vector3.new(MoveDirection.X, 0, MoveDirection.Z).Unit
        local Position = HumanoidRootPart.Position
        local var68 = Position + Unit_4 * 4
        local RaycastParams_new_result1 = RaycastParams.new()
        RaycastParams_new_result1.FilterDescendantsInstances = {Character_8_upvr}
        RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
        RaycastParams_new_result1.IgnoreWater = true
        local any_Raycast_result1_2 = Workspace_upvr:Raycast(Position, var68 - Position, RaycastParams_new_result1)
        if any_Raycast_result1_2 then
            var68 = Position + Unit_4 * math.max(0, (any_Raycast_result1_2.Position - Position).Magnitude - 2)
        end
        local any_Raycast_result1_3 = Workspace_upvr:Raycast(var68 + Vector3.new(0, 5, 0), Vector3.new(0, -20, 0), RaycastParams_new_result1)
        if not any_Raycast_result1_3 then
            pcall(function() -- Line 230
                --[[ Upvalues[1]:
                    [1]: any_upvw (copied, read and write)
                ]]
                any_upvw:FireServer("cancel")
            end)
            return
        end
        HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
        Character_8_upvr:PivotTo(CFrame.new(Vector3.new(var68.X, any_Raycast_result1_3.Position.Y + Humanoid_3.HipHeight + 0.5, var68.Z)) * HumanoidRootPart.CFrame.Rotation)
        task.defer(function() -- Line 244
            --[[ Upvalues[2]:
                [1]: Character_8_upvr (readonly)
                [2]: any_upvw (copied, read and write)
            ]]
            if Character_8_upvr and Character_8_upvr:FindFirstChild("HumanoidRootPart") then
                Character_8_upvr.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
            task.wait(0.1)
            pcall(function() -- Line 250
                --[[ Upvalues[1]:
                    [1]: any_upvw (copied, read and write)
                ]]
                any_upvw:FireServer("end")
            end)
        end)
    end
end
local aahelp_upvr = ReplicatedStorage:WaitForChild("aahelp", 5)
local aahelp1_upvr = ReplicatedStorage:WaitForChild("aahelp1", 5)
local var78_upvw = 0
local function disableAntiAimsAndRotate_upvr(arg1) -- Line 260, Named "disableAntiAimsAndRotate"
    --[[ Upvalues[4]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: aahelp_upvr (readonly)
        [3]: aahelp1_upvr (readonly)
        [4]: var78_upvw (read and write)
    ]]
    local Character_5_upvr = LocalPlayer_upvr.Character
    if not Character_5_upvr then
    else
        local HumanoidRootPart_3_upvr = Character_5_upvr:FindFirstChild("HumanoidRootPart")
        if not HumanoidRootPart_3_upvr then return end
        if aahelp_upvr then
            aahelp_upvr:FireServer("disable")
        end
        if aahelp1_upvr then
            aahelp1_upvr:FireServer("disable")
        end
        task.wait(0.01)
        local Unit = Vector3.new(arg1.X, 0, arg1.Z).Unit
        if 0.1 < Unit.Magnitude then
            HumanoidRootPart_3_upvr.CFrame = CFrame.new(HumanoidRootPart_3_upvr.Position, HumanoidRootPart_3_upvr.Position + Unit)
        end
        var78_upvw = tick() + 0.15
        local Rotation_upvr = HumanoidRootPart_3_upvr.CFrame.Rotation
        task.delay(0.15, function() -- Line 291
            --[[ Upvalues[5]:
                [1]: Character_5_upvr (readonly)
                [2]: HumanoidRootPart_3_upvr (readonly)
                [3]: Rotation_upvr (readonly)
                [4]: aahelp_upvr (copied, readonly)
                [5]: aahelp1_upvr (copied, readonly)
            ]]
            if Character_5_upvr and HumanoidRootPart_3_upvr and HumanoidRootPart_3_upvr.Parent then
                HumanoidRootPart_3_upvr.CFrame = CFrame.new(HumanoidRootPart_3_upvr.Position) * Rotation_upvr
            end
            if aahelp_upvr then
                aahelp_upvr:FireServer("enable")
            end
            if aahelp1_upvr then
                aahelp1_upvr:FireServer("enable")
            end
        end)
    end
end
local var84_upvw = false
local var85_upvw = false
local function applyAutoStop_upvr() -- Line 314, Named "applyAutoStop"
    --[[ Upvalues[4]:
        [1]: var46_upvw (read and write)
        [2]: var84_upvw (read and write)
        [3]: var85_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
    ]]
    if not var46_upvw then
    else
        if var84_upvw or var85_upvw then return end
        local Character_9 = LocalPlayer_upvr.Character
        if not Character_9 then return end
        local Humanoid_5_upvr = Character_9:FindFirstChild("Humanoid")
        local HumanoidRootPart_2 = Character_9:FindFirstChild("HumanoidRootPart")
        if not Humanoid_5_upvr or not HumanoidRootPart_2 then return end
        if Humanoid_5_upvr.FloorMaterial == Enum.Material.Air then return end
        var84_upvw = true
        var85_upvw = true
        local BodyVelocity_upvr = Instance.new("BodyVelocity")
        BodyVelocity_upvr.Name = "AutoStopVelocity"
        BodyVelocity_upvr.Velocity = Vector3.new(0, 0, 0)
        BodyVelocity_upvr.MaxForce = Vector3.new(100000, 0, 100000)
        BodyVelocity_upvr.P = 10000
        BodyVelocity_upvr.Parent = HumanoidRootPart_2
        Humanoid_5_upvr.WalkSpeed = 0
        local WalkSpeed_upvr = Humanoid_5_upvr.WalkSpeed
        task.delay(0.3, function() -- Line 342
            --[[ Upvalues[5]:
                [1]: BodyVelocity_upvr (readonly)
                [2]: Humanoid_5_upvr (readonly)
                [3]: WalkSpeed_upvr (readonly)
                [4]: var85_upvw (copied, read and write)
                [5]: var84_upvw (copied, read and write)
            ]]
            if BodyVelocity_upvr and BodyVelocity_upvr.Parent then
                BodyVelocity_upvr:Destroy()
            end
            if Humanoid_5_upvr and Humanoid_5_upvr.Parent then
                Humanoid_5_upvr.WalkSpeed = WalkSpeed_upvr
            end
            var85_upvw = false
            var84_upvw = false
        end)
    end
end
local hit = ReplicatedStorage:FindFirstChild("hit")
if hit then
    hit.OnClientEvent:Connect(function() -- Line 358
        --[[ Upvalues[1]:
            [1]: applyAutoStop_upvr (readonly)
        ]]
        applyAutoStop_upvr()
    end)
end
local function _() -- Line 367, Named "isPlayerAlive"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character = LocalPlayer_upvr.Character
    if not Character then
        return false
    end
    local Humanoid_4 = Character:FindFirstChild("Humanoid")
    if not Humanoid_4 or Humanoid_4.Health <= 0 then
        return false
    end
    return true
end
local random_state_upvr = Random.new()
local function _(arg1, arg2) -- Line 379, Named "randomPointInPart"
    --[[ Upvalues[1]:
        [1]: random_state_upvr (readonly)
    ]]
    if not arg1 then
        return arg1.Position
    end
    if arg2 <= 0 then
        return arg1.Position
    end
    local var97 = arg1.Size * arg2
    return (arg1.Position) + (arg1.CFrame.RightVector * random_state_upvr:NextNumber(-var97.X / 2, var97.X / 2) + arg1.CFrame.UpVector * random_state_upvr:NextNumber(-var97.Y / 2, var97.Y / 2) + arg1.CFrame.LookVector * random_state_upvr:NextNumber(-var97.Z / 2, var97.Z / 2))
end
local function canBulletPassThrough_upvr(arg1) -- Line 398, Named "canBulletPassThrough"
    if not arg1 or not arg1:IsA("BasePart") then
        return false
    end
    local any_lower_result1_2 = arg1.Name:lower()
    if any_lower_result1_2:find("hamik") or any_lower_result1_2:find("paletka") then
        return true
    end
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        local any_lower_result1 = arg1.Parent.Name:lower()
        return any_lower_result1:find("hamik")
    end
    if arg1.Parent and (INLINED_3() or any_lower_result1:find("paletka")) then
        return true
    end
    if 0.2 < arg1.Transparency then
        return true
    end
    if not arg1.CanCollide then
        return true
    end
    if arg1:IsA("Decal") or arg1:IsA("ParticleEmitter") or arg1:IsA("Beam") or arg1:IsA("Trail") then
        return true
    end
    return false
end
local function isPartOfCharacter_upvr(arg1) -- Line 424, Named "isPartOfCharacter"
    if not arg1 or not arg1:IsA("BasePart") then
        return false
    end
    local Parent = arg1.Parent
    if not Parent then
        return false
    end
    if Parent:FindFirstChild("Humanoid") then
        return true
    end
    if Parent:IsA("Accessory") or Parent:IsA("Hat") then
        return true
    end
    return false
end
local function strictWallCheck_upvr(arg1, arg2, arg3, arg4) -- Line 436, Named "strictWallCheck"
    --[[ Upvalues[4]:
        [1]: Workspace_upvr (readonly)
        [2]: canBulletPassThrough_upvr (readonly)
        [3]: strictWallCheck_upvr (readonly)
        [4]: isPartOfCharacter_upvr (readonly)
    ]]
    if not arg1 or not arg2 then
        return false, "invalid_positions"
    end
    local var105 = arg2 - arg1
    local Magnitude = var105.Magnitude
    if Magnitude < 0.1 or 1000 < Magnitude then
        return false, "invalid_distance"
    end
    local tbl_2 = {}
    tbl_2[1] = arg3
    tbl_2[2] = arg4
    for _, v in ipairs(arg3:GetDescendants()) do
        if v:IsA("BasePart") then
            table.insert(tbl_2, v)
        end
    end
    for _, v_2 in ipairs(arg4:GetDescendants()) do
        if v_2:IsA("BasePart") then
            table.insert(tbl_2, v_2)
        end
    end
    local RaycastParams_new_result1_2 = RaycastParams.new()
    RaycastParams_new_result1_2.FilterDescendantsInstances = tbl_2
    RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
    RaycastParams_new_result1_2.IgnoreWater = true
    local any_Raycast_result1 = Workspace_upvr:Raycast(arg1, var105, RaycastParams_new_result1_2)
    if not any_Raycast_result1 then
        return true, "clear"
    end
    local Instance = any_Raycast_result1.Instance
    if Instance:IsDescendantOf(arg4) then
        return true, "hit_target"
    end
    if canBulletPassThrough_upvr(Instance) then
        local var117 = any_Raycast_result1.Position + var105.Unit * 0.1
        if (arg2 - var117).Magnitude < 0.1 then
            return true, "transparent_pass"
        end
        return strictWallCheck_upvr(var117, arg2, arg3, arg4)
    end
    if isPartOfCharacter_upvr(Instance) then
        local var118 = any_Raycast_result1.Position + var105.Unit * 0.1
        if (arg2 - var118).Magnitude < 0.1 then
            return true, "passed_other_player"
        end
        return strictWallCheck_upvr(var118, arg2, arg3, arg4)
    end
    return false, "wall_blocking"
end
local function multiPointWallCheck_upvr(arg1, arg2, arg3, arg4) -- Line 502, Named "multiPointWallCheck"
    --[[ Upvalues[1]:
        [1]: strictWallCheck_upvr (readonly)
    ]]
    if not arg1 or not arg2 or not arg3 or not arg4 then
        return false
    end
    local strictWallCheck_upvr_result1, _ = strictWallCheck_upvr(arg1, arg2, arg3, arg4)
    if strictWallCheck_upvr_result1 then
        return true
    end
    for _, v_3 in ipairs({Vector3.new(0, 0.30000, 0), Vector3.new(0, -0.3000, 0)}) do
        local strictWallCheck_result1, _ = strictWallCheck_upvr(arg1, arg2 + v_3, arg3, arg4)
        if strictWallCheck_result1 then
            return true
        end
    end
    return false
end
local function predictPartPosition_upvr(arg1, arg2) -- Line 536, Named "predictPartPosition"
    --[[ Upvalues[2]:
        [1]: var29_upvw (read and write)
        [2]: CurrentCamera_upvr (readonly)
    ]]
    if not var29_upvw or not arg2 then
        return arg1.Position
    end
    local AssemblyLinearVelocity = arg2.AssemblyLinearVelocity
    if not AssemblyLinearVelocity then
        AssemblyLinearVelocity = Vector3.new()
    end
    if AssemblyLinearVelocity.Magnitude < 3 then
        return arg1.Position
    end
    return arg1.Position + AssemblyLinearVelocity * math.clamp((arg1.Position - CurrentCamera_upvr.CFrame.Position).Magnitude / 1000, 0.08, 0.2) * 1.2
end
local function _(arg1) -- Line 560, Named "isInFOV"
    --[[ Upvalues[2]:
        [1]: var26_upvw (read and write)
        [2]: CurrentCamera_upvr (readonly)
    ]]
    if 360 <= var26_upvw then
        return true
    end
    local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2 = CurrentCamera_upvr:WorldToViewportPoint(arg1)
    if not any_WorldToViewportPoint_result2 then
        return false
    end
    local ViewportSize = CurrentCamera_upvr.ViewportSize
    local var133 = any_WorldToViewportPoint_result1.X - ViewportSize.X * 0.5
    local var134 = any_WorldToViewportPoint_result1.Y - ViewportSize.Y * 0.5
    local var135 = var133 * var133
    if var135 + var134 * var134 > var26_upvw * var26_upvw then
        var135 = false
    else
        var135 = true
    end
    return var135
end
local function _(arg1, arg2) -- Line 580, Named "calculatePotentialDamage"
    --[[ Upvalues[1]:
        [1]: tbl_4_upvr (readonly)
    ]]
    local var136 = 54 * (tbl_4_upvr[arg1] or 0.5)
    if 300 < arg2 then
        var136 *= 0.3
    elseif 200 < arg2 then
        var136 *= 0.5
    elseif 100 < arg2 then
        var136 *= 0.8
    end
    return math.floor(var136)
end
local function _(arg1, arg2) -- Line 596, Named "checkMinDamage"
    --[[ Upvalues[2]:
        [1]: var45_upvw (read and write)
        [2]: tbl_4_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    -- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
    local var137
    if var45_upvw <= 0 then
        return true
    end
    var137 = tbl_4_upvr[arg1.Name]
    var137 = 54 * (var137 or 0.5)
    if 300 < arg2 then
        var137 *= 0.3
        -- KONSTANTWARNING: GOTO [27] #23
    end
    -- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [18] 16. Error Block 24 start (CF ANALYSIS FAILED)
    if 200 < arg2 then
        var137 *= 0.5
    elseif 100 < arg2 then
        var137 *= 0.8
    end
    if var45_upvw > math.floor(var137) then
    else
    end
    do
        return true
    end
    -- KONSTANTERROR: [18] 16. Error Block 24 end (CF ANALYSIS FAILED)
end
local function _() -- Line 606, Named "checkHitchance"
    --[[ Upvalues[2]:
        [1]: var44_upvw (read and write)
        [2]: random_state_upvr (readonly)
    ]]
    local var138
    if var138 <= var44_upvw then
        return true
    end
    var138 = 0
    if var44_upvw <= var138 then
        return false
    end
    if random_state_upvr:NextInteger(1, 100) > var44_upvw then
        var138 = false
    else
        var138 = true
    end
    return var138
end
local tbl_3_upvr = {}
local function updateActivePlayersList_upvr() -- Line 623, Named "updateActivePlayersList"
    --[[ Upvalues[3]:
        [1]: tbl_3_upvr (readonly)
        [2]: Players_upvr (readonly)
        [3]: LocalPlayer_upvr (readonly)
    ]]
    table.clear(tbl_3_upvr)
    for _, v_4 in ipairs(Players_upvr:GetPlayers()) do
        if v_4 ~= LocalPlayer_upvr and (not v_4.Team or not LocalPlayer_upvr.Team or v_4.Team ~= LocalPlayer_upvr.Team) then
            local Character_4 = v_4.Character
            if Character_4 then
                local Humanoid_8 = Character_4:FindFirstChild("Humanoid")
                if Humanoid_8 and 0 < Humanoid_8.Health and Character_4:FindFirstChild("HumanoidRootPart") then
                    local tbl = {
                        player = v_4;
                        character = Character_4;
                        humanoid = Humanoid_8;
                    }
                    -- KONSTANTERROR: Expression was reused, decompilation is incorrect
                    tbl.rootPart = Character_4:FindFirstChild("HumanoidRootPart")
                    table.insert(tbl_3_upvr, tbl)
                end
            end
        end
    end
end
local var156_upvw = 0
local function findBestTarget_upvr() -- Line 648, Named "findBestTarget"
    --[[ Upvalues[13]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var156_upvw (read and write)
        [3]: updateActivePlayersList_upvr (readonly)
        [4]: tbl_3_upvr (readonly)
        [5]: CurrentCamera_upvr (readonly)
        [6]: var48_upvw (read and write)
        [7]: var35_upvw (read and write)
        [8]: var39_upvw (read and write)
        [9]: var37_upvw (read and write)
        [10]: var26_upvw (read and write)
        [11]: var45_upvw (read and write)
        [12]: tbl_4_upvr (readonly)
        [13]: multiPointWallCheck_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 104 start (CF ANALYSIS FAILED)
    local Character_13 = LocalPlayer_upvr.Character
    local var158
    if not Character_13 then
        var158 = false
    else
        local Humanoid_6 = Character_13:FindFirstChild("Humanoid")
        if not Humanoid_6 or Humanoid_6.Health <= 0 then
            var158 = false
        else
            var158 = true
        end
    end
    if not var158 then
        var158 = nil
        return var158
    end
    var158 = tick()
    if 0.5 <= var158 - var156_upvw then
        var156_upvw = var158
        updateActivePlayersList_upvr()
    end
    if #tbl_3_upvr == 0 then
        return nil
    end
    if not LocalPlayer_upvr.Character:FindFirstChild("Head") then
        return nil
    end
    local _ = CurrentCamera_upvr.ViewportSize
    local _ = 1
    -- KONSTANTERROR: [0] 1. Error Block 104 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [346] 264. Error Block 80 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [346] 264. Error Block 80 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [72] 58. Error Block 18 start (CF ANALYSIS FAILED)
    -- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.14]
    -- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.132226]
    -- KONSTANTERROR: [72] 58. Error Block 18 end (CF ANALYSIS FAILED)
end
local function isGrounded_upvr(arg1, arg2) -- Line 758, Named "isGrounded"
    --[[ Upvalues[2]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: Workspace_upvr (readonly)
    ]]
    if not arg1 or not arg2 then
        return false
    end
    if arg1.FloorMaterial ~= Enum.Material.Air then
        return true
    end
    local RaycastParams_new_result1_3 = RaycastParams.new()
    RaycastParams_new_result1_3.FilterDescendantsInstances = {LocalPlayer_upvr.Character}
    RaycastParams_new_result1_3.FilterType = Enum.RaycastFilterType.Exclude
    if Workspace_upvr:Raycast(arg2.Position, Vector3.new(0, -3.5, 0), RaycastParams_new_result1_3) == nil then
    else
    end
    return true
end
local function _(arg1) -- Line 781, Named "isPlayerJumping"
    if not arg1 then
        return true
    end
    local any_GetState_result1_2 = arg1:GetState()
    local var168 = true
    if any_GetState_result1_2 ~= Enum.HumanoidStateType.Jumping then
        var168 = true
        if any_GetState_result1_2 ~= Enum.HumanoidStateType.Freefall then
            if any_GetState_result1_2 ~= Enum.HumanoidStateType.FallingDown then
                var168 = false
            else
                var168 = true
            end
        end
    end
    return var168
end
local var169_upvw
local function _() -- Line 796, Named "startTargeting"
    --[[ Upvalues[19]:
        [1]: var169_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: var16_upvw (read and write)
        [4]: var17_upvw (read and write)
        [5]: var24_upvw (read and write)
        [6]: LocalPlayer_upvr (readonly)
        [7]: isGrounded_upvr (readonly)
        [8]: var21_upvw (read and write)
        [9]: var22_upvw (read and write)
        [10]: getToolComponents_upvr (readonly)
        [11]: findBestTarget_upvr (readonly)
        [12]: var23_upvw (read and write)
        [13]: var29_upvw (read and write)
        [14]: predictPartPosition_upvr (readonly)
        [15]: multiPointWallCheck_upvr (readonly)
        [16]: var44_upvw (read and write)
        [17]: random_state_upvr (readonly)
        [18]: disableAntiAimsAndRotate_upvr (readonly)
        [19]: performDoubleTapTeleport_upvr (readonly)
    ]]
    if var169_upvw then
    else
        var169_upvw = RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 799
            --[[ Upvalues[17]:
                [1]: var16_upvw (copied, read and write)
                [2]: var17_upvw (copied, read and write)
                [3]: var24_upvw (copied, read and write)
                [4]: LocalPlayer_upvr (copied, readonly)
                [5]: isGrounded_upvr (copied, readonly)
                [6]: var21_upvw (copied, read and write)
                [7]: var22_upvw (copied, read and write)
                [8]: getToolComponents_upvr (copied, readonly)
                [9]: findBestTarget_upvr (copied, readonly)
                [10]: var23_upvw (copied, read and write)
                [11]: var29_upvw (copied, read and write)
                [12]: predictPartPosition_upvr (copied, readonly)
                [13]: multiPointWallCheck_upvr (copied, readonly)
                [14]: var44_upvw (copied, read and write)
                [15]: random_state_upvr (copied, readonly)
                [16]: disableAntiAimsAndRotate_upvr (copied, readonly)
                [17]: performDoubleTapTeleport_upvr (copied, readonly)
            ]]
            -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
            -- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
            local var191
            if not var191 then
                var191 = nil
                var17_upvw = var191
                var191 = false
                var24_upvw = var191
            else
                local Character_7 = LocalPlayer_upvr.Character
                if not Character_7 then
                    var191 = false
                    -- KONSTANTWARNING: GOTO [26] #23
                end
                -- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [13] 13. Error Block 133 start (CF ANALYSIS FAILED)
                local Humanoid_7 = Character_7:FindFirstChild("Humanoid")
                if not Humanoid_7 or Humanoid_7.Health <= 0 then
                    var191 = false
                else
                    var191 = true
                end
                if not var191 then
                    var191 = nil
                    var17_upvw = var191
                    var191 = false
                    var24_upvw = var191
                    return
                end
                var191 = LocalPlayer_upvr.Character
                local var194 = var191
                if var194 then
                    var194 = var191:FindFirstChild("Humanoid")
                end
                Humanoid_7 = var191
                local var195 = Humanoid_7
                if var195 then
                    var195 = var191:FindFirstChild("HumanoidRootPart")
                end
                if not var194 then
                else
                    local any_GetState_result1_4 = var194:GetState()
                    if any_GetState_result1_4 ~= Enum.HumanoidStateType.Jumping and any_GetState_result1_4 ~= Enum.HumanoidStateType.Freefall then
                        if any_GetState_result1_4 ~= Enum.HumanoidStateType.FallingDown then
                        else
                        end
                    end
                end
                if true then
                    var17_upvw = nil
                    return
                end
                if not isGrounded_upvr(var194, var195) then
                    var17_upvw = nil
                    return
                end
                local tick_result1 = tick()
                if tick_result1 - var21_upvw < 1.3 then return end
                if var22_upvw then return end
                local getToolComponents_upvr_result1_upvr_3 = getToolComponents_upvr()
                if not getToolComponents_upvr_result1_upvr_3 then
                    var17_upvw = nil
                    var24_upvw = false
                    return
                end
                local findBestTarget_upvr_result1_upvr_3 = findBestTarget_upvr()
                if not findBestTarget_upvr_result1_upvr_3 then
                    if not var24_upvw then
                        var24_upvw = true
                        var23_upvw = tick_result1
                    end
                    var17_upvw = nil
                    return
                end
                if var24_upvw then
                    var24_upvw = false
                    var23_upvw = tick_result1
                end
                if tick_result1 - var23_upvw < 0.05 then return end
                var17_upvw = findBestTarget_upvr_result1_upvr_3
                local var200
                if var29_upvw then
                    var200 = predictPartPosition_upvr(findBestTarget_upvr_result1_upvr_3.targetPart, findBestTarget_upvr_result1_upvr_3.rootPart)
                else
                    var200 = findBestTarget_upvr_result1_upvr_3.targetPart.Position
                end
                if not var200 then return end
                local Character_2 = LocalPlayer_upvr.Character
                local Head = Character_2:FindFirstChild("Head")
                if not Head then return end
                if not multiPointWallCheck_upvr(Head.Position, var200, Character_2, findBestTarget_upvr_result1_upvr_3.character) then return end
                if 100 <= var44_upvw then
                    -- KONSTANTWARNING: GOTO [183] #155
                end
                if var44_upvw <= 0 then
                    -- KONSTANTWARNING: GOTO [183] #155
                end
                if random_state_upvr:NextInteger(1, 100) > var44_upvw then
                else
                end
                if not true then return end
                local Position_3_upvr = Head.Position
                local var204 = var200 - Position_3_upvr
                local Unit_upvr = var204.Unit
                if not var194 then
                    var204 = true
                else
                    local any_GetState_result1_8 = var194:GetState()
                    var204 = true
                    if any_GetState_result1_8 ~= Enum.HumanoidStateType.Jumping then
                        var204 = true
                        if any_GetState_result1_8 ~= Enum.HumanoidStateType.Freefall then
                            if any_GetState_result1_8 ~= Enum.HumanoidStateType.FallingDown then
                                var204 = false
                            else
                                var204 = true
                            end
                        end
                    end
                end
                if var204 then return end
                var22_upvw = true
                disableAntiAimsAndRotate_upvr(Unit_upvr)
                local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 908
                    --[[ Upvalues[4]:
                        [1]: getToolComponents_upvr_result1_upvr_3 (readonly)
                        [2]: Position_3_upvr (readonly)
                        [3]: Unit_upvr (readonly)
                        [4]: findBestTarget_upvr_result1_upvr_3 (readonly)
                    ]]
                    getToolComponents_upvr_result1_upvr_3.fireShot:FireServer(Position_3_upvr, Unit_upvr, findBestTarget_upvr_result1_upvr_3.targetPart)
                end)
                if pcall_result1_2 then
                    var21_upvw = tick_result1
                    performDoubleTapTeleport_upvr()
                else
                    warn("AutoShoot Error:", pcall_result2_3)
                end
                task.delay(0.1, function() -- Line 920
                    --[[ Upvalues[1]:
                        [1]: var22_upvw (copied, read and write)
                    ]]
                    var22_upvw = false
                end)
                -- KONSTANTERROR: [13] 13. Error Block 133 end (CF ANALYSIS FAILED)
            end
        end)
    end
end
local tbl_6_upvr = {}
task.spawn(function() -- Line 930
    --[[ Upvalues[1]:
        [1]: tbl_6_upvr (readonly)
    ]]
    while task.wait(2) do
        for i_5, v_5 in pairs(tbl_6_upvr) do
            if 3 < tick() - v_5.time then
                tbl_6_upvr[i_5] = nil
            end
        end
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AutoShoot = var16_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 949
        --[[ Upvalues[8]:
            [1]: var16_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var17_upvw (read and write)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AutoShoot" then
            var16_upvw = arg2
            if not var16_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if not var16_upvw then
                var17_upvw = nil
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
if var169_upvw then
else
    onConfigLoad_upvr = RunService_upvr.RenderStepped
    onConfigLoad_upvr = onConfigLoad_upvr:Connect(function(arg1) -- Line 799
        --[[ Upvalues[17]:
            [1]: var16_upvw (read and write)
            [2]: var17_upvw (read and write)
            [3]: var24_upvw (read and write)
            [4]: LocalPlayer_upvr (readonly)
            [5]: isGrounded_upvr (readonly)
            [6]: var21_upvw (read and write)
            [7]: var22_upvw (read and write)
            [8]: getToolComponents_upvr (readonly)
            [9]: findBestTarget_upvr (readonly)
            [10]: var23_upvw (read and write)
            [11]: var29_upvw (read and write)
            [12]: predictPartPosition_upvr (readonly)
            [13]: multiPointWallCheck_upvr (readonly)
            [14]: var44_upvw (read and write)
            [15]: random_state_upvr (readonly)
            [16]: disableAntiAimsAndRotate_upvr (readonly)
            [17]: performDoubleTapTeleport_upvr (readonly)
        ]]
        -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
        -- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
        local var222
        if not var222 then
            var222 = nil
            var17_upvw = var222
            var222 = false
            var24_upvw = var222
        else
            local Character_11 = LocalPlayer_upvr.Character
            if not Character_11 then
                var222 = false
                -- KONSTANTWARNING: GOTO [26] #23
            end
            -- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [13] 13. Error Block 133 start (CF ANALYSIS FAILED)
            local Humanoid = Character_11:FindFirstChild("Humanoid")
            if not Humanoid or Humanoid.Health <= 0 then
                var222 = false
            else
                var222 = true
            end
            if not var222 then
                var222 = nil
                var17_upvw = var222
                var222 = false
                var24_upvw = var222
                return
            end
            var222 = LocalPlayer_upvr.Character
            local var225 = var222
            if var225 then
                var225 = var222:FindFirstChild("Humanoid")
            end
            Humanoid = var222
            local var226 = Humanoid
            if var226 then
                var226 = var222:FindFirstChild("HumanoidRootPart")
            end
            if not var225 then
            else
                local any_GetState_result1_7 = var225:GetState()
                if any_GetState_result1_7 ~= Enum.HumanoidStateType.Jumping and any_GetState_result1_7 ~= Enum.HumanoidStateType.Freefall then
                    if any_GetState_result1_7 ~= Enum.HumanoidStateType.FallingDown then
                    else
                    end
                end
            end
            if true then
                var17_upvw = nil
                return
            end
            if not isGrounded_upvr(var225, var226) then
                var17_upvw = nil
                return
            end
            local tick_result1_3 = tick()
            if tick_result1_3 - var21_upvw < 1.3 then return end
            if var22_upvw then return end
            local getToolComponents_upvr_result1_upvr = getToolComponents_upvr()
            if not getToolComponents_upvr_result1_upvr then
                var17_upvw = nil
                var24_upvw = false
                return
            end
            local findBestTarget_upvr_result1_upvr_2 = findBestTarget_upvr()
            if not findBestTarget_upvr_result1_upvr_2 then
                if not var24_upvw then
                    var24_upvw = true
                    var23_upvw = tick_result1_3
                end
                var17_upvw = nil
                return
            end
            if var24_upvw then
                var24_upvw = false
                var23_upvw = tick_result1_3
            end
            if tick_result1_3 - var23_upvw < 0.05 then return end
            var17_upvw = findBestTarget_upvr_result1_upvr_2
            local var231
            if var29_upvw then
                var231 = predictPartPosition_upvr(findBestTarget_upvr_result1_upvr_2.targetPart, findBestTarget_upvr_result1_upvr_2.rootPart)
            else
                var231 = findBestTarget_upvr_result1_upvr_2.targetPart.Position
            end
            if not var231 then return end
            local Character_10 = LocalPlayer_upvr.Character
            local Head_3 = Character_10:FindFirstChild("Head")
            if not Head_3 then return end
            if not multiPointWallCheck_upvr(Head_3.Position, var231, Character_10, findBestTarget_upvr_result1_upvr_2.character) then return end
            if 100 <= var44_upvw then
                -- KONSTANTWARNING: GOTO [183] #155
            end
            if var44_upvw <= 0 then
                -- KONSTANTWARNING: GOTO [183] #155
            end
            if random_state_upvr:NextInteger(1, 100) > var44_upvw then
            else
            end
            if not true then return end
            local Position_2_upvr = Head_3.Position
            local var235 = var231 - Position_2_upvr
            local Unit_2_upvr = var235.Unit
            if not var225 then
                var235 = true
            else
                local any_GetState_result1_6 = var225:GetState()
                var235 = true
                if any_GetState_result1_6 ~= Enum.HumanoidStateType.Jumping then
                    var235 = true
                    if any_GetState_result1_6 ~= Enum.HumanoidStateType.Freefall then
                        if any_GetState_result1_6 ~= Enum.HumanoidStateType.FallingDown then
                            var235 = false
                        else
                            var235 = true
                        end
                    end
                end
            end
            if var235 then return end
            var22_upvw = true
            disableAntiAimsAndRotate_upvr(Unit_2_upvr)
            local pcall_result1, pcall_result2 = pcall(function() -- Line 908
                --[[ Upvalues[4]:
                    [1]: getToolComponents_upvr_result1_upvr (readonly)
                    [2]: Position_2_upvr (readonly)
                    [3]: Unit_2_upvr (readonly)
                    [4]: findBestTarget_upvr_result1_upvr_2 (readonly)
                ]]
                getToolComponents_upvr_result1_upvr.fireShot:FireServer(Position_2_upvr, Unit_2_upvr, findBestTarget_upvr_result1_upvr_2.targetPart)
            end)
            if pcall_result1 then
                var21_upvw = tick_result1_3
                performDoubleTapTeleport_upvr()
            else
                warn("AutoShoot Error:", pcall_result2)
            end
            task.delay(0.1, function() -- Line 920
                --[[ Upvalues[1]:
                    [1]: var22_upvw (copied, read and write)
                ]]
                var22_upvw = false
            end)
            -- KONSTANTERROR: [13] 13. Error Block 133 end (CF ANALYSIS FAILED)
        end
    end)
    var169_upvw = onConfigLoad_upvr
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = HumanoidRootPart
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = FallingDown
        15 [string] = tick
        17 [number] = 1.3
        18 [number] = 0.05
        19 [string] = targetPart
        20 [string] = rootPart
        21 [string] = Position
        22 [string] = Head
        23 [string] = character
        24 [string] = NextInteger
        25 [string] = Unit
        26 [string] = pcall
        28 [string] = warn
        30 [string] = AutoShoot Error:
        31 [string] = task
        32 [string] = delay
        34 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoShoot
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pairs
        6 [string] = tick
        8 [string] = time

====================================================================================================

Function Dump: startTargeting

Function Upvalues: startTargeting

Function Constants: startTargeting
        1 [string] = RenderStepped
        2 [string] = Connect

====================================================================================================

Function Dump: isPlayerJumping

Function Upvalues: isPlayerJumping

Function Constants: isPlayerJumping
        1 [string] = GetState
        2 [string] = Enum
        3 [string] = HumanoidStateType
        4 [string] = Jumping
        6 [string] = Freefall
        8 [string] = FallingDown

====================================================================================================

Function Dump: isGrounded

Function Upvalues: isGrounded

Function Constants: isGrounded
        1 [string] = FloorMaterial
        2 [string] = Enum
        3 [string] = Material
        4 [string] = Air
        6 [string] = RaycastParams
        7 [string] = new
        9 [string] = Character
        10 [string] = FilterDescendantsInstances
        11 [string] = RaycastFilterType
        12 [string] = Exclude
        14 [string] = FilterType
        15 [string] = Position
        16 [Vector3] = 0, -3.5, 0
        17 [string] = Raycast

====================================================================================================

Function Dump: findBestTarget

Function Upvalues: findBestTarget

Function Constants: findBestTarget
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = tick
        7 [number] = 0.5
        8 [number] = 0
        9 [string] = Head
        10 [string] = Position
        11 [number] = inf
        12 [string] = ViewportSize
        13 [string] = X
        14 [string] = Y
        15 [string] = CFrame
        16 [string] = humanoid
        17 [string] = character
        18 [string] = part
        19 [string] = priority
        21 [string] = table
        22 [string] = insert
        24 [string] = Torso
        25 [string] = UpperTorso
        26 [string] = LowerTorso
        27 [string] = LeftUpperLeg
        28 [string] = RightUpperLeg
        29 [string] = HumanoidRootPart
        30 [string] = WorldToViewportPoint
        31 [string] = rootPart
        32 [string] = Magnitude
        33 [string] = Name
        34 [number] = 0.3
        35 [number] = 0.8
        36 [string] = math
        37 [string] = floor
        39 [string] = sqrt
        41 [string] = player
        42 [string] = targetPart
        43 [string] = distance

====================================================================================================

Function Dump: updateActivePlayersList

Function Upvalues: updateActivePlayersList

Function Constants: updateActivePlayersList
        1 [string] = table
        2 [string] = clear
        4 [string] = ipairs
        6 [string] = GetPlayers
        7 [string] = Team
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = FindFirstChild
        11 [string] = HumanoidRootPart
        12 [string] = Health
        13 [string] = player
        14 [string] = character
        15 [string] = humanoid
        16 [string] = rootPart
        18 [string] = insert

====================================================================================================

Function Dump: checkHitchance

Function Upvalues: checkHitchance

Function Constants: checkHitchance
        1 [string] = NextInteger

====================================================================================================

Function Dump: checkMinDamage

Function Upvalues: checkMinDamage

Function Constants: checkMinDamage
        1 [string] = Name
        2 [number] = 0.5
        3 [number] = 0.3
        4 [number] = 0.8
        5 [string] = math
        6 [string] = floor

====================================================================================================

Function Dump: calculatePotentialDamage

Function Upvalues: calculatePotentialDamage

Function Constants: calculatePotentialDamage
        1 [number] = 0.5
        2 [number] = 0.3
        3 [number] = 0.8
        4 [string] = math
        5 [string] = floor

====================================================================================================

Function Dump: isInFOV

Function Upvalues: isInFOV

Function Constants: isInFOV
        1 [string] = WorldToViewportPoint
        2 [string] = ViewportSize
        3 [number] = 0.5
        4 [string] = X
        5 [string] = Y

====================================================================================================

Function Dump: predictPartPosition

Function Upvalues: predictPartPosition

Function Constants: predictPartPosition
        1 [string] = Position
        2 [string] = AssemblyLinearVelocity
        3 [string] = Vector3
        4 [string] = new
        6 [string] = Magnitude
        7 [string] = CFrame
        8 [number] = 1000
        9 [number] = 0.08
        10 [number] = 0.2
        11 [string] = math
        12 [string] = clamp
        14 [number] = 1.2

====================================================================================================

Function Dump: multiPointWallCheck

Function Upvalues: multiPointWallCheck

Function Constants: multiPointWallCheck
        1 [Vector3] = 0, 0.30000001192092896, 0
        2 [Vector3] = 0, -0.30000001192092896, 0
        3 [string] = ipairs

====================================================================================================

Function Dump: strictWallCheck

Function Upvalues: strictWallCheck

Function Constants: strictWallCheck
        1 [string] = invalid_positions
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = invalid_distance
        5 [string] = ipairs
        7 [string] = GetDescendants
        8 [string] = BasePart
        9 [string] = IsA
        10 [string] = table
        11 [string] = insert
        13 [string] = RaycastParams
        14 [string] = new
        16 [string] = FilterDescendantsInstances
        17 [string] = Enum
        18 [string] = RaycastFilterType
        19 [string] = Exclude
        21 [string] = FilterType
        22 [string] = IgnoreWater
        23 [string] = Raycast
        24 [string] = clear
        25 [string] = Instance
        26 [string] = IsDescendantOf
        27 [string] = hit_target
        28 [string] = Position
        29 [string] = Unit
        30 [string] = transparent_pass
        31 [string] = passed_other_player
        32 [string] = wall_blocking

====================================================================================================

Function Dump: isPartOfCharacter

Function Upvalues: isPartOfCharacter

Function Constants: isPartOfCharacter
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Parent
        4 [string] = Humanoid
        5 [string] = FindFirstChild
        6 [string] = Accessory
        7 [string] = Hat

====================================================================================================

Function Dump: canBulletPassThrough

Function Upvalues: canBulletPassThrough

Function Constants: canBulletPassThrough
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Name
        4 [string] = lower
        5 [string] = hamik
        6 [string] = find
        7 [string] = paletka
        8 [string] = Parent
        9 [string] = Transparency
        10 [number] = 0.2
        11 [string] = CanCollide
        12 [string] = Decal
        13 [string] = ParticleEmitter
        14 [string] = Beam
        15 [string] = Trail

====================================================================================================

Function Dump: randomPointInPart

Function Upvalues: randomPointInPart

Function Constants: randomPointInPart
        1 [string] = Position
        2 [string] = Size
        3 [number] = 2
        4 [string] = X
        5 [string] = NextNumber
        6 [string] = Y
        7 [string] = Z
        8 [string] = CFrame
        9 [string] = RightVector
        10 [string] = UpVector
        11 [string] = LookVector

====================================================================================================

Function Dump: isPlayerAlive

Function Upvalues: isPlayerAlive

Function Constants: isPlayerAlive
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: applyAutoStop

Function Upvalues: applyAutoStop

Function Constants: applyAutoStop
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = FloorMaterial
        6 [string] = Enum
        7 [string] = Material
        8 [string] = Air
        10 [string] = Instance
        11 [string] = new
        13 [string] = BodyVelocity
        14 [string] = AutoStopVelocity
        15 [string] = Name
        16 [Vector3] = 0, 0, 0
        17 [string] = Velocity
        18 [Vector3] = 100000, 0, 100000
        19 [string] = MaxForce
        20 [string] = P
        21 [string] = Parent
        22 [string] = WalkSpeed
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.3

====================================================================================================

Function Dump: disableAntiAimsAndRotate

Function Upvalues: disableAntiAimsAndRotate

Function Constants: disableAntiAimsAndRotate
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = CFrame
        5 [string] = Rotation
        6 [string] = disable
        7 [string] = FireServer
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.01
        12 [string] = X
        13 [string] = Z
        14 [string] = Vector3
        15 [string] = new
        17 [string] = Unit
        18 [string] = Magnitude
        19 [number] = 0.1
        21 [string] = Position
        22 [number] = 0.15
        23 [string] = tick
        25 [string] = delay

====================================================================================================

Function Dump: performDoubleTapTeleport

Function Upvalues: performDoubleTapTeleport

Function Constants: performDoubleTapTeleport
        1 [string] = os
        2 [string] = clock
        4 [string] = leaderstats
        5 [string] = FindFirstChild
        6 [string] = leavemealonexd
        7 [string] = Value
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = HumanoidRootPart
        11 [string] = Health
        12 [string] = pcall
        14 [string] = MoveDirection
        15 [string] = Magnitude
        16 [number] = 0.05
        17 [string] = CFrame
        18 [string] = LookVector
        19 [string] = X
        20 [string] = Z
        21 [string] = Vector3
        22 [string] = new
        24 [string] = Unit
        25 [string] = Position
        26 [number] = 4
        27 [string] = RaycastParams
        29 [string] = FilterDescendantsInstances
        30 [string] = Enum
        31 [string] = RaycastFilterType
        32 [string] = Exclude
        34 [string] = FilterType
        35 [string] = IgnoreWater
        36 [string] = Raycast
        37 [number] = 2
        38 [string] = math
        39 [string] = max
        41 [Vector3] = 0, 5, 0
        42 [Vector3] = 0, -20, 0
        43 [number] = 0.5
        44 [string] = Y
        45 [string] = HipHeight
        46 [Vector3] = 0, 0, 0
        47 [string] = AssemblyLinearVelocity
        48 [string] = AssemblyAngularVelocity
        50 [string] = Rotation
        51 [string] = PivotTo
        52 [string] = task
        53 [string] = defer

====================================================================================================

Function Dump: getToolComponents

Function Upvalues: getToolComponents

Function Constants: getToolComponents
        1 [string] = Character
        2 [string] = Tool
        3 [string] = FindFirstChildOfClass
        4 [string] = Remotes
        5 [string] = FindFirstChild
        6 [string] = FireShot
        7 [string] = Handle
        8 [string] = tool
        9 [string] = fireShot
        10 [string] = reload
        11 [string] = handle
        13 [string] = Reload

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAutoShootEnabled

Function Upvalues: setAutoShootEnabled

Function Constants: setAutoShootEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoShoot

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: findBestTarget

Function Upvalues: findBestTarget
        1 [Instance] = quit_xyz
        2 [number] = 0
        3 [function] = updateActivePlayersList
        4 [table]:
        4 [table] table: 0xeef23f7a2c4e90b5
        5 [Instance] = Camera
        6 [boolean] = false
        7 [boolean] = true
        8 [boolean] = true
        9 [boolean] = true
        10 [number] = 0
        11 [number] = 0
        12 [table]:
        12 [table] table: 0x925167b04c2f9df5
                1 [number] = 0.6
                2 [number] = 0.75
                3 [number] = 0.6
                4 [number] = 1
                5 [number] = 1
                6 [number] = 0.6
                7 [number] = 0.6
                8 [number] = 0.6
                9 [number] = 1
                10 [number] = 4
                11 [number] = 1
                12 [number] = 0.75
                13 [number] = 0.75
                14 [number] = 0.75
                15 [number] = 0.6
                16 [number] = 0.6
                17 [number] = 0.75
                18 [number] = 0.6
                19 [number] = 0.75
        13 [function] = multiPointWallCheck

Function Constants: findBestTarget
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = tick
        7 [number] = 0.5
        8 [number] = 0
        9 [string] = Head
        10 [string] = Position
        11 [number] = inf
        12 [string] = ViewportSize
        13 [string] = X
        14 [string] = Y
        15 [string] = CFrame
        16 [string] = humanoid
        17 [string] = character
        18 [string] = part
        19 [string] = priority
        21 [string] = table
        22 [string] = insert
        24 [string] = Torso
        25 [string] = UpperTorso
        26 [string] = LowerTorso
        27 [string] = LeftUpperLeg
        28 [string] = RightUpperLeg
        29 [string] = HumanoidRootPart
        30 [string] = WorldToViewportPoint
        31 [string] = rootPart
        32 [string] = Magnitude
        33 [string] = Name
        34 [number] = 0.3
        35 [number] = 0.8
        36 [string] = math
        37 [string] = floor
        39 [string] = sqrt
        41 [string] = player
        42 [string] = targetPart
        43 [string] = distance

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 0

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 0

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: predictPartPosition

Function Upvalues: predictPartPosition
        1 [boolean] = false
        2 [Instance] = Camera

Function Constants: predictPartPosition
        1 [string] = Position
        2 [string] = AssemblyLinearVelocity
        3 [string] = Vector3
        4 [string] = new
        6 [string] = Magnitude
        7 [string] = CFrame
        8 [number] = 1000
        9 [number] = 0.08
        10 [number] = 0.2
        11 [string] = math
        12 [string] = clamp
        14 [number] = 1.2

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAutoShootEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        3 [boolean] = false
        4 [Instance] = quit_xyz
        5 [function] = isGrounded
        6 [number] = 0
        7 [boolean] = false
        8 [function] = getToolComponents
        9 [function] = findBestTarget
        10 [number] = 0
        11 [boolean] = false
        12 [function] = predictPartPosition
        13 [function] = multiPointWallCheck
        14 [number] = 100
        15 [Random] = Random
        16 [function] = disableAntiAimsAndRotate
        17 [function] = performDoubleTapTeleport

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = HumanoidRootPart
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        10 [EnumItem] = Enum.HumanoidStateType.Jumping
        11 [string] = Freefall
        12 [EnumItem] = Enum.HumanoidStateType.Freefall
        13 [string] = FallingDown
        14 [EnumItem] = Enum.HumanoidStateType.FallingDown
        15 [string] = tick
        17 [number] = 1.3
        18 [number] = 0.05
        19 [string] = targetPart
        20 [string] = rootPart
        21 [string] = Position
        22 [string] = Head
        23 [string] = character
        24 [string] = NextInteger
        25 [string] = Unit
        26 [string] = pcall
        28 [string] = warn
        30 [string] = AutoShoot Error:
        31 [string] = task
        32 [string] = delay
        34 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoShoot
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: setAutoShootEnabled

Function Upvalues: setAutoShootEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setAutoShootEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoShoot

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [table]:
        1 [table] table: 0xc25f290b80e79d65

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pairs
        6 [string] = tick
        8 [string] = time

====================================================================================================

Function Dump: multiPointWallCheck

Function Upvalues: multiPointWallCheck
        1 [function] = strictWallCheck

Function Constants: multiPointWallCheck
        1 [Vector3] = 0, 0.30000001192092896, 0
        2 [Vector3] = 0, -0.30000001192092896, 0
        3 [string] = ipairs

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = applyAutoStop

Function Constants: Unknown Name

====================================================================================================

Function Dump: getToolComponents

Function Upvalues: getToolComponents
        1 [Instance] = quit_xyz

Function Constants: getToolComponents
        1 [string] = Character
        2 [string] = Tool
        3 [string] = FindFirstChildOfClass
        4 [string] = Remotes
        5 [string] = FindFirstChild
        6 [string] = FireShot
        7 [string] = Handle
        8 [string] = tool
        9 [string] = fireShot
        10 [string] = reload
        11 [string] = handle
        13 [string] = Reload

====================================================================================================

Function Dump: isPartOfCharacter

Function Upvalues: isPartOfCharacter

Function Constants: isPartOfCharacter
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Parent
        4 [string] = Humanoid
        5 [string] = FindFirstChild
        6 [string] = Accessory
        7 [string] = Hat

====================================================================================================

Function Dump: canBulletPassThrough

Function Upvalues: canBulletPassThrough

Function Constants: canBulletPassThrough
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Name
        4 [string] = lower
        5 [string] = hamik
        6 [string] = find
        7 [string] = paletka
        8 [string] = Parent
        9 [string] = Transparency
        10 [number] = 0.2
        11 [string] = CanCollide
        12 [string] = Decal
        13 [string] = ParticleEmitter
        14 [string] = Beam
        15 [string] = Trail

====================================================================================================

Function Dump: performDoubleTapTeleport

Function Upvalues: performDoubleTapTeleport
        1 [number] = 0
        2 [Instance] = quit_xyz
        3 [boolean] = false
        4 [Instance] = DTMarker
        5 [Instance] = Workspace

Function Constants: performDoubleTapTeleport
        1 [string] = os
        2 [string] = clock
        4 [string] = leaderstats
        5 [string] = FindFirstChild
        6 [string] = leavemealonexd
        7 [string] = Value
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = HumanoidRootPart
        11 [string] = Health
        12 [string] = pcall
        14 [string] = MoveDirection
        15 [string] = Magnitude
        16 [number] = 0.05
        17 [string] = CFrame
        18 [string] = LookVector
        19 [string] = X
        20 [string] = Z
        21 [string] = Vector3
        22 [string] = new
        24 [string] = Unit
        25 [string] = Position
        26 [number] = 4
        27 [string] = RaycastParams
        29 [string] = FilterDescendantsInstances
        30 [string] = Enum
        31 [string] = RaycastFilterType
        32 [string] = Exclude
        33 [EnumItem] = Enum.RaycastFilterType.Exclude
        34 [string] = FilterType
        35 [string] = IgnoreWater
        36 [string] = Raycast
        37 [number] = 2
        38 [string] = math
        39 [string] = max
        41 [Vector3] = 0, 5, 0
        42 [Vector3] = 0, -20, 0
        43 [number] = 0.5
        44 [string] = Y
        45 [string] = HipHeight
        46 [Vector3] = 0, 0, 0
        47 [string] = AssemblyLinearVelocity
        48 [string] = AssemblyAngularVelocity
        50 [string] = Rotation
        51 [string] = PivotTo
        52 [string] = task
        53 [string] = defer

====================================================================================================

Function Dump: updateActivePlayersList

Function Upvalues: updateActivePlayersList
        1 [table] (Recursive table detected)
        2 [Instance] = Players
        3 [Instance] = quit_xyz

Function Constants: updateActivePlayersList
        1 [string] = table
        2 [string] = clear
        4 [string] = ipairs
        6 [string] = GetPlayers
        7 [string] = Team
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = FindFirstChild
        11 [string] = HumanoidRootPart
        12 [string] = Health
        13 [string] = player
        14 [string] = character
        15 [string] = humanoid
        16 [string] = rootPart
        18 [string] = insert

====================================================================================================

Function Dump: applyAutoStop

Function Upvalues: applyAutoStop
        1 [boolean] = false
        2 [boolean] = false
        3 [boolean] = false
        4 [Instance] = quit_xyz

Function Constants: applyAutoStop
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = FloorMaterial
        6 [string] = Enum
        7 [string] = Material
        8 [string] = Air
        9 [EnumItem] = Enum.Material.Air
        10 [string] = Instance
        11 [string] = new
        13 [string] = BodyVelocity
        14 [string] = AutoStopVelocity
        15 [string] = Name
        16 [Vector3] = 0, 0, 0
        17 [string] = Velocity
        18 [Vector3] = 100000, 0, 100000
        19 [string] = MaxForce
        20 [string] = P
        21 [string] = Parent
        22 [string] = WalkSpeed
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.3

====================================================================================================

Function Dump: disableAntiAimsAndRotate

Function Upvalues: disableAntiAimsAndRotate
        1 [Instance] = quit_xyz
        2 [Instance] = aahelp
        3 [Instance] = aahelp1
        4 [number] = 0

Function Constants: disableAntiAimsAndRotate
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = CFrame
        5 [string] = Rotation
        6 [string] = disable
        7 [string] = FireServer
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.01
        12 [string] = X
        13 [string] = Z
        14 [string] = Vector3
        15 [string] = new
        17 [string] = Unit
        18 [string] = Magnitude
        19 [number] = 0.1
        21 [string] = Position
        22 [number] = 0.15
        23 [string] = tick
        25 [string] = delay

====================================================================================================

Function Dump: strictWallCheck

Function Upvalues: strictWallCheck
        1 [Instance] = Workspace
        2 [function] = canBulletPassThrough
        3 [function] = strictWallCheck
        4 [function] = isPartOfCharacter

Function Constants: strictWallCheck
        1 [string] = invalid_positions
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = invalid_distance
        5 [string] = ipairs
        7 [string] = GetDescendants
        8 [string] = BasePart
        9 [string] = IsA
        10 [string] = table
        11 [string] = insert
        13 [string] = RaycastParams
        14 [string] = new
        16 [string] = FilterDescendantsInstances
        17 [string] = Enum
        18 [string] = RaycastFilterType
        19 [string] = Exclude
        20 [EnumItem] = Enum.RaycastFilterType.Exclude
        21 [string] = FilterType
        22 [string] = IgnoreWater
        23 [string] = Raycast
        24 [string] = clear
        25 [string] = Instance
        26 [string] = IsDescendantOf
        27 [string] = hit_target
        28 [string] = Position
        29 [string] = Unit
        30 [string] = transparent_pass
        31 [string] = passed_other_player
        32 [string] = wall_blocking

====================================================================================================

Function Dump: isGrounded

Function Upvalues: isGrounded
        1 [Instance] = quit_xyz
        2 [Instance] = Workspace

Function Constants: isGrounded
        1 [string] = FloorMaterial
        2 [string] = Enum
        3 [string] = Material
        4 [string] = Air
        5 [EnumItem] = Enum.Material.Air
        6 [string] = RaycastParams
        7 [string] = new
        9 [string] = Character
        10 [string] = FilterDescendantsInstances
        11 [string] = RaycastFilterType
        12 [string] = Exclude
        13 [EnumItem] = Enum.RaycastFilterType.Exclude
        14 [string] = FilterType
        15 [string] = Position
        16 [Vector3] = 0, -3.5, 0
        17 [string] = Raycast

====================================================================================================
]]


----// XEClient/rage_AutoShoot_1769301632.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle.LocalScript
-- Took 0.58s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:40:25
-- Luau version 6, Types version 3
-- Time taken: 0.114343 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local TweenService_upvr = game:GetService("TweenService")
local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local Workspace_upvr = game:GetService("Workspace")
local CurrentCamera_upvr = Workspace_upvr.CurrentCamera
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var12_upvw
if not ReplicatedStorage:FindFirstChild("DTMarker") then
    var12_upvw = "RemoteEvent"
    local any_upvw = Instance.new(var12_upvw)
    any_upvw.Name = "DTMarker"
    any_upvw.Parent = ReplicatedStorage
end
var12_upvw = script.Parent
local DT = var12_upvw.Parent:FindFirstChild("DT")
local function INLINED() -- Internal function, doesn't exist in bytecode
    var12_upvw = DT.Value
    return var12_upvw
end
if not DT or not INLINED() then
    var12_upvw = false
end
if DT then
    DT.Changed:Connect(function(arg1) -- Line 34
        --[[ Upvalues[1]:
            [1]: var12_upvw (read and write)
        ]]
        var12_upvw = arg1
    end)
end
local var16_upvw = false
local var17_upvw
local function setAutoShootEnabled_upvr(arg1, arg2) -- Line 41, Named "setAutoShootEnabled"
    --[[ Upvalues[7]:
        [1]: var16_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var17_upvw (read and write)
    ]]
    var16_upvw = arg1
    local var18
    local function INLINED_2() -- Internal function, doesn't exist in bytecode
        var18 = udim2_upvr_2
        return var18
    end
    if not var16_upvw or not INLINED_2() then
        var18 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var18;
    }):Play()
    if not var16_upvw then
        var17_upvw = nil
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AutoShoot", var16_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 55
    --[[ Upvalues[2]:
        [1]: setAutoShootEnabled_upvr (readonly)
        [2]: var16_upvw (read and write)
    ]]
    setAutoShootEnabled_upvr(not var16_upvw, true)
end)
local var21_upvw = 0
local var22_upvw = false
local var23_upvw = 0
local var24_upvw = false
local Fov = script.Parent.Parent:FindFirstChild("Fov")
if not Fov or not Fov.Value then
    local var26_upvw = 360
end
if Fov then
    Fov.Changed:Connect(function(arg1) -- Line 79
        --[[ Upvalues[1]:
            [1]: var26_upvw (read and write)
        ]]
        var26_upvw = arg1
    end)
end
local Prediction = script.Parent.Parent:FindFirstChild("Prediction")
if not Prediction or not Prediction.Value then
    local var29_upvw = false
end
if Prediction then
    Prediction.Changed:Connect(function(arg1) -- Line 88
        --[[ Upvalues[1]:
            [1]: var29_upvw (read and write)
        ]]
        var29_upvw = arg1
    end)
end
local Head_2 = script.Parent.Parent:FindFirstChild("Head")
local Legs = script.Parent.Parent:FindFirstChild("Legs")
local Torso = script.Parent.Parent:FindFirstChild("Torso")
if not Head_2 or not Head_2.Value then
end
if not Legs or not Legs.Value then
end
if not Torso or not Torso.Value then
end
if Head_2 then
    local var35_upvw = true
    Head_2.Changed:Connect(function(arg1) -- Line 100
        --[[ Upvalues[1]:
            [1]: var35_upvw (read and write)
        ]]
        var35_upvw = arg1
    end)
end
if Legs then
    local var37_upvw = true
    Legs.Changed:Connect(function(arg1) -- Line 101
        --[[ Upvalues[1]:
            [1]: var37_upvw (read and write)
        ]]
        var37_upvw = arg1
    end)
end
if Torso then
    local var39_upvw = true
    Torso.Changed:Connect(function(arg1) -- Line 102
        --[[ Upvalues[1]:
            [1]: var39_upvw (read and write)
        ]]
        var39_upvw = arg1
    end)
end
local BAim = script.Parent.Parent:FindFirstChild("BAim")
local Hitchance = script.Parent.Parent:FindFirstChild("Hitchance")
local MinDamage = script.Parent.Parent:FindFirstChild("MinDamage")
local AutoS = script.Parent.Parent:FindFirstChild("AutoS")
if not BAim or not BAim.Value then
end
if not Hitchance or not Hitchance.Value then
    local var44_upvw = 100
end
if not MinDamage or not MinDamage.Value then
    local var45_upvw = 0
end
if not AutoS or not AutoS.Value then
    local var46_upvw = false
end
if BAim then
    local var48_upvw = false
    BAim.Changed:Connect(function(arg1) -- Line 117
        --[[ Upvalues[1]:
            [1]: var48_upvw (read and write)
        ]]
        var48_upvw = arg1
    end)
end
if Hitchance then
    Hitchance.Changed:Connect(function(arg1) -- Line 118
        --[[ Upvalues[1]:
            [1]: var44_upvw (read and write)
        ]]
        var44_upvw = arg1
    end)
end
if MinDamage then
    MinDamage.Changed:Connect(function(arg1) -- Line 119
        --[[ Upvalues[1]:
            [1]: var45_upvw (read and write)
        ]]
        var45_upvw = arg1
    end)
end
if AutoS then
    AutoS.Changed:Connect(function(arg1) -- Line 120
        --[[ Upvalues[1]:
            [1]: var46_upvw (read and write)
        ]]
        var46_upvw = arg1
    end)
end
local tbl_4_upvr = {
    Head = 4;
    UpperTorso = 1;
    LowerTorso = 1;
    Torso = 1;
    HumanoidRootPart = 1;
    LeftUpperArm = 0.75;
    LeftLowerArm = 0.75;
    LeftHand = 0.75;
    RightUpperArm = 0.75;
    RightLowerArm = 0.75;
    RightHand = 0.75;
    LeftUpperLeg = 0.6;
    LeftLowerLeg = 0.6;
    LeftFoot = 0.6;
    RightUpperLeg = 0.6;
    RightLowerLeg = 0.6;
    RightFoot = 0.6;
    ["Left Leg"] = 0.6;
    ["Right Leg"] = 0.6;
}
local function getToolComponents_upvr() -- Line 146, Named "getToolComponents"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character_3 = LocalPlayer_upvr.Character
    if not Character_3 then
        return nil
    end
    local class_Tool = Character_3:FindFirstChildOfClass("Tool")
    if not class_Tool then
        return nil
    end
    local Remotes = class_Tool:FindFirstChild("Remotes")
    if not Remotes then
        return nil
    end
    local FireShot = Remotes:FindFirstChild("FireShot")
    if not FireShot then
        return nil
    end
    return {
        tool = class_Tool;
        fireShot = FireShot;
        reload = Remotes:FindFirstChild("Reload");
        handle = class_Tool:FindFirstChild("Handle");
    }
end
local var58_upvw = 0
local function performDoubleTapTeleport_upvr() -- Line 172, Named "performDoubleTapTeleport"
    --[[ Upvalues[5]:
        [1]: var58_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var12_upvw (read and write)
        [4]: any_upvw (read and write)
        [5]: Workspace_upvr (readonly)
    ]]
    local var59
    if os.clock() - var58_upvw < var59 then
    else
        var59 = LocalPlayer_upvr:FindFirstChild("leaderstats")
        if var59 then
            var59 = LocalPlayer_upvr:FindFirstChild("leaderstats"):FindFirstChild("leavemealonexd")
        end
        if not var12_upvw then
            if var59 and var59.Value ~= true then
                var59.Value = true
            end
            return
        end
        var58_upvw = os.clock()
        if var59 then
            var59.Value = false
        end
        local Character_8_upvr = LocalPlayer_upvr.Character
        if not Character_8_upvr then return end
        local Humanoid_3 = Character_8_upvr:FindFirstChild("Humanoid")
        local HumanoidRootPart = Character_8_upvr:FindFirstChild("HumanoidRootPart")
        if not Humanoid_3 or not HumanoidRootPart or Humanoid_3.Health <= 0 then return end
        pcall(function() -- Line 195
            --[[ Upvalues[1]:
                [1]: any_upvw (copied, read and write)
            ]]
            any_upvw:FireServer("start", 4)
        end)
        local MoveDirection = Humanoid_3.MoveDirection
        if MoveDirection.Magnitude < 0.05 then
            MoveDirection = HumanoidRootPart.CFrame.LookVector
        end
        local Unit_4 = Vector3.new(MoveDirection.X, 0, MoveDirection.Z).Unit
        local Position = HumanoidRootPart.Position
        local var68 = Position + Unit_4 * 4
        local RaycastParams_new_result1 = RaycastParams.new()
        RaycastParams_new_result1.FilterDescendantsInstances = {Character_8_upvr}
        RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
        RaycastParams_new_result1.IgnoreWater = true
        local any_Raycast_result1_2 = Workspace_upvr:Raycast(Position, var68 - Position, RaycastParams_new_result1)
        if any_Raycast_result1_2 then
            var68 = Position + Unit_4 * math.max(0, (any_Raycast_result1_2.Position - Position).Magnitude - 2)
        end
        local any_Raycast_result1_3 = Workspace_upvr:Raycast(var68 + Vector3.new(0, 5, 0), Vector3.new(0, -20, 0), RaycastParams_new_result1)
        if not any_Raycast_result1_3 then
            pcall(function() -- Line 230
                --[[ Upvalues[1]:
                    [1]: any_upvw (copied, read and write)
                ]]
                any_upvw:FireServer("cancel")
            end)
            return
        end
        HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
        Character_8_upvr:PivotTo(CFrame.new(Vector3.new(var68.X, any_Raycast_result1_3.Position.Y + Humanoid_3.HipHeight + 0.5, var68.Z)) * HumanoidRootPart.CFrame.Rotation)
        task.defer(function() -- Line 244
            --[[ Upvalues[2]:
                [1]: Character_8_upvr (readonly)
                [2]: any_upvw (copied, read and write)
            ]]
            if Character_8_upvr and Character_8_upvr:FindFirstChild("HumanoidRootPart") then
                Character_8_upvr.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
            task.wait(0.1)
            pcall(function() -- Line 250
                --[[ Upvalues[1]:
                    [1]: any_upvw (copied, read and write)
                ]]
                any_upvw:FireServer("end")
            end)
        end)
    end
end
local aahelp_upvr = ReplicatedStorage:WaitForChild("aahelp", 5)
local aahelp1_upvr = ReplicatedStorage:WaitForChild("aahelp1", 5)
local var78_upvw = 0
local function disableAntiAimsAndRotate_upvr(arg1) -- Line 260, Named "disableAntiAimsAndRotate"
    --[[ Upvalues[4]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: aahelp_upvr (readonly)
        [3]: aahelp1_upvr (readonly)
        [4]: var78_upvw (read and write)
    ]]
    local Character_5_upvr = LocalPlayer_upvr.Character
    if not Character_5_upvr then
    else
        local HumanoidRootPart_3_upvr = Character_5_upvr:FindFirstChild("HumanoidRootPart")
        if not HumanoidRootPart_3_upvr then return end
        if aahelp_upvr then
            aahelp_upvr:FireServer("disable")
        end
        if aahelp1_upvr then
            aahelp1_upvr:FireServer("disable")
        end
        task.wait(0.01)
        local Unit = Vector3.new(arg1.X, 0, arg1.Z).Unit
        if 0.1 < Unit.Magnitude then
            HumanoidRootPart_3_upvr.CFrame = CFrame.new(HumanoidRootPart_3_upvr.Position, HumanoidRootPart_3_upvr.Position + Unit)
        end
        var78_upvw = tick() + 0.15
        local Rotation_upvr = HumanoidRootPart_3_upvr.CFrame.Rotation
        task.delay(0.15, function() -- Line 291
            --[[ Upvalues[5]:
                [1]: Character_5_upvr (readonly)
                [2]: HumanoidRootPart_3_upvr (readonly)
                [3]: Rotation_upvr (readonly)
                [4]: aahelp_upvr (copied, readonly)
                [5]: aahelp1_upvr (copied, readonly)
            ]]
            if Character_5_upvr and HumanoidRootPart_3_upvr and HumanoidRootPart_3_upvr.Parent then
                HumanoidRootPart_3_upvr.CFrame = CFrame.new(HumanoidRootPart_3_upvr.Position) * Rotation_upvr
            end
            if aahelp_upvr then
                aahelp_upvr:FireServer("enable")
            end
            if aahelp1_upvr then
                aahelp1_upvr:FireServer("enable")
            end
        end)
    end
end
local var84_upvw = false
local var85_upvw = false
local function applyAutoStop_upvr() -- Line 314, Named "applyAutoStop"
    --[[ Upvalues[4]:
        [1]: var46_upvw (read and write)
        [2]: var84_upvw (read and write)
        [3]: var85_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
    ]]
    if not var46_upvw then
    else
        if var84_upvw or var85_upvw then return end
        local Character_9 = LocalPlayer_upvr.Character
        if not Character_9 then return end
        local Humanoid_5_upvr = Character_9:FindFirstChild("Humanoid")
        local HumanoidRootPart_2 = Character_9:FindFirstChild("HumanoidRootPart")
        if not Humanoid_5_upvr or not HumanoidRootPart_2 then return end
        if Humanoid_5_upvr.FloorMaterial == Enum.Material.Air then return end
        var84_upvw = true
        var85_upvw = true
        local BodyVelocity_upvr = Instance.new("BodyVelocity")
        BodyVelocity_upvr.Name = "AutoStopVelocity"
        BodyVelocity_upvr.Velocity = Vector3.new(0, 0, 0)
        BodyVelocity_upvr.MaxForce = Vector3.new(100000, 0, 100000)
        BodyVelocity_upvr.P = 10000
        BodyVelocity_upvr.Parent = HumanoidRootPart_2
        Humanoid_5_upvr.WalkSpeed = 0
        local WalkSpeed_upvr = Humanoid_5_upvr.WalkSpeed
        task.delay(0.3, function() -- Line 342
            --[[ Upvalues[5]:
                [1]: BodyVelocity_upvr (readonly)
                [2]: Humanoid_5_upvr (readonly)
                [3]: WalkSpeed_upvr (readonly)
                [4]: var85_upvw (copied, read and write)
                [5]: var84_upvw (copied, read and write)
            ]]
            if BodyVelocity_upvr and BodyVelocity_upvr.Parent then
                BodyVelocity_upvr:Destroy()
            end
            if Humanoid_5_upvr and Humanoid_5_upvr.Parent then
                Humanoid_5_upvr.WalkSpeed = WalkSpeed_upvr
            end
            var85_upvw = false
            var84_upvw = false
        end)
    end
end
local hit = ReplicatedStorage:FindFirstChild("hit")
if hit then
    hit.OnClientEvent:Connect(function() -- Line 358
        --[[ Upvalues[1]:
            [1]: applyAutoStop_upvr (readonly)
        ]]
        applyAutoStop_upvr()
    end)
end
local function _() -- Line 367, Named "isPlayerAlive"
    --[[ Upvalues[1]:
        [1]: LocalPlayer_upvr (readonly)
    ]]
    local Character = LocalPlayer_upvr.Character
    if not Character then
        return false
    end
    local Humanoid_4 = Character:FindFirstChild("Humanoid")
    if not Humanoid_4 or Humanoid_4.Health <= 0 then
        return false
    end
    return true
end
local random_state_upvr = Random.new()
local function _(arg1, arg2) -- Line 379, Named "randomPointInPart"
    --[[ Upvalues[1]:
        [1]: random_state_upvr (readonly)
    ]]
    if not arg1 then
        return arg1.Position
    end
    if arg2 <= 0 then
        return arg1.Position
    end
    local var97 = arg1.Size * arg2
    return (arg1.Position) + (arg1.CFrame.RightVector * random_state_upvr:NextNumber(-var97.X / 2, var97.X / 2) + arg1.CFrame.UpVector * random_state_upvr:NextNumber(-var97.Y / 2, var97.Y / 2) + arg1.CFrame.LookVector * random_state_upvr:NextNumber(-var97.Z / 2, var97.Z / 2))
end
local function canBulletPassThrough_upvr(arg1) -- Line 398, Named "canBulletPassThrough"
    if not arg1 or not arg1:IsA("BasePart") then
        return false
    end
    local any_lower_result1_2 = arg1.Name:lower()
    if any_lower_result1_2:find("hamik") or any_lower_result1_2:find("paletka") then
        return true
    end
    local function INLINED_3() -- Internal function, doesn't exist in bytecode
        local any_lower_result1 = arg1.Parent.Name:lower()
        return any_lower_result1:find("hamik")
    end
    if arg1.Parent and (INLINED_3() or any_lower_result1:find("paletka")) then
        return true
    end
    if 0.2 < arg1.Transparency then
        return true
    end
    if not arg1.CanCollide then
        return true
    end
    if arg1:IsA("Decal") or arg1:IsA("ParticleEmitter") or arg1:IsA("Beam") or arg1:IsA("Trail") then
        return true
    end
    return false
end
local function isPartOfCharacter_upvr(arg1) -- Line 424, Named "isPartOfCharacter"
    if not arg1 or not arg1:IsA("BasePart") then
        return false
    end
    local Parent = arg1.Parent
    if not Parent then
        return false
    end
    if Parent:FindFirstChild("Humanoid") then
        return true
    end
    if Parent:IsA("Accessory") or Parent:IsA("Hat") then
        return true
    end
    return false
end
local function strictWallCheck_upvr(arg1, arg2, arg3, arg4) -- Line 436, Named "strictWallCheck"
    --[[ Upvalues[4]:
        [1]: Workspace_upvr (readonly)
        [2]: canBulletPassThrough_upvr (readonly)
        [3]: strictWallCheck_upvr (readonly)
        [4]: isPartOfCharacter_upvr (readonly)
    ]]
    if not arg1 or not arg2 then
        return false, "invalid_positions"
    end
    local var105 = arg2 - arg1
    local Magnitude = var105.Magnitude
    if Magnitude < 0.1 or 1000 < Magnitude then
        return false, "invalid_distance"
    end
    local tbl_2 = {}
    tbl_2[1] = arg3
    tbl_2[2] = arg4
    for _, v in ipairs(arg3:GetDescendants()) do
        if v:IsA("BasePart") then
            table.insert(tbl_2, v)
        end
    end
    for _, v_2 in ipairs(arg4:GetDescendants()) do
        if v_2:IsA("BasePart") then
            table.insert(tbl_2, v_2)
        end
    end
    local RaycastParams_new_result1_2 = RaycastParams.new()
    RaycastParams_new_result1_2.FilterDescendantsInstances = tbl_2
    RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Exclude
    RaycastParams_new_result1_2.IgnoreWater = true
    local any_Raycast_result1 = Workspace_upvr:Raycast(arg1, var105, RaycastParams_new_result1_2)
    if not any_Raycast_result1 then
        return true, "clear"
    end
    local Instance = any_Raycast_result1.Instance
    if Instance:IsDescendantOf(arg4) then
        return true, "hit_target"
    end
    if canBulletPassThrough_upvr(Instance) then
        local var117 = any_Raycast_result1.Position + var105.Unit * 0.1
        if (arg2 - var117).Magnitude < 0.1 then
            return true, "transparent_pass"
        end
        return strictWallCheck_upvr(var117, arg2, arg3, arg4)
    end
    if isPartOfCharacter_upvr(Instance) then
        local var118 = any_Raycast_result1.Position + var105.Unit * 0.1
        if (arg2 - var118).Magnitude < 0.1 then
            return true, "passed_other_player"
        end
        return strictWallCheck_upvr(var118, arg2, arg3, arg4)
    end
    return false, "wall_blocking"
end
local function multiPointWallCheck_upvr(arg1, arg2, arg3, arg4) -- Line 502, Named "multiPointWallCheck"
    --[[ Upvalues[1]:
        [1]: strictWallCheck_upvr (readonly)
    ]]
    if not arg1 or not arg2 or not arg3 or not arg4 then
        return false
    end
    local strictWallCheck_upvr_result1, _ = strictWallCheck_upvr(arg1, arg2, arg3, arg4)
    if strictWallCheck_upvr_result1 then
        return true
    end
    for _, v_3 in ipairs({Vector3.new(0, 0.30000, 0), Vector3.new(0, -0.3000, 0)}) do
        local strictWallCheck_result1, _ = strictWallCheck_upvr(arg1, arg2 + v_3, arg3, arg4)
        if strictWallCheck_result1 then
            return true
        end
    end
    return false
end
local function predictPartPosition_upvr(arg1, arg2) -- Line 536, Named "predictPartPosition"
    --[[ Upvalues[2]:
        [1]: var29_upvw (read and write)
        [2]: CurrentCamera_upvr (readonly)
    ]]
    if not var29_upvw or not arg2 then
        return arg1.Position
    end
    local AssemblyLinearVelocity = arg2.AssemblyLinearVelocity
    if not AssemblyLinearVelocity then
        AssemblyLinearVelocity = Vector3.new()
    end
    if AssemblyLinearVelocity.Magnitude < 3 then
        return arg1.Position
    end
    return arg1.Position + AssemblyLinearVelocity * math.clamp((arg1.Position - CurrentCamera_upvr.CFrame.Position).Magnitude / 1000, 0.08, 0.2) * 1.2
end
local function _(arg1) -- Line 560, Named "isInFOV"
    --[[ Upvalues[2]:
        [1]: var26_upvw (read and write)
        [2]: CurrentCamera_upvr (readonly)
    ]]
    if 360 <= var26_upvw then
        return true
    end
    local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2 = CurrentCamera_upvr:WorldToViewportPoint(arg1)
    if not any_WorldToViewportPoint_result2 then
        return false
    end
    local ViewportSize = CurrentCamera_upvr.ViewportSize
    local var133 = any_WorldToViewportPoint_result1.X - ViewportSize.X * 0.5
    local var134 = any_WorldToViewportPoint_result1.Y - ViewportSize.Y * 0.5
    local var135 = var133 * var133
    if var135 + var134 * var134 > var26_upvw * var26_upvw then
        var135 = false
    else
        var135 = true
    end
    return var135
end
local function _(arg1, arg2) -- Line 580, Named "calculatePotentialDamage"
    --[[ Upvalues[1]:
        [1]: tbl_4_upvr (readonly)
    ]]
    local var136 = 54 * (tbl_4_upvr[arg1] or 0.5)
    if 300 < arg2 then
        var136 *= 0.3
    elseif 200 < arg2 then
        var136 *= 0.5
    elseif 100 < arg2 then
        var136 *= 0.8
    end
    return math.floor(var136)
end
local function _(arg1, arg2) -- Line 596, Named "checkMinDamage"
    --[[ Upvalues[2]:
        [1]: var45_upvw (read and write)
        [2]: tbl_4_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    -- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
    local var137
    if var45_upvw <= 0 then
        return true
    end
    var137 = tbl_4_upvr[arg1.Name]
    var137 = 54 * (var137 or 0.5)
    if 300 < arg2 then
        var137 *= 0.3
        -- KONSTANTWARNING: GOTO [27] #23
    end
    -- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [18] 16. Error Block 24 start (CF ANALYSIS FAILED)
    if 200 < arg2 then
        var137 *= 0.5
    elseif 100 < arg2 then
        var137 *= 0.8
    end
    if var45_upvw > math.floor(var137) then
    else
    end
    do
        return true
    end
    -- KONSTANTERROR: [18] 16. Error Block 24 end (CF ANALYSIS FAILED)
end
local function _() -- Line 606, Named "checkHitchance"
    --[[ Upvalues[2]:
        [1]: var44_upvw (read and write)
        [2]: random_state_upvr (readonly)
    ]]
    local var138
    if var138 <= var44_upvw then
        return true
    end
    var138 = 0
    if var44_upvw <= var138 then
        return false
    end
    if random_state_upvr:NextInteger(1, 100) > var44_upvw then
        var138 = false
    else
        var138 = true
    end
    return var138
end
local tbl_3_upvr = {}
local function updateActivePlayersList_upvr() -- Line 623, Named "updateActivePlayersList"
    --[[ Upvalues[3]:
        [1]: tbl_3_upvr (readonly)
        [2]: Players_upvr (readonly)
        [3]: LocalPlayer_upvr (readonly)
    ]]
    table.clear(tbl_3_upvr)
    for _, v_4 in ipairs(Players_upvr:GetPlayers()) do
        if v_4 ~= LocalPlayer_upvr and (not v_4.Team or not LocalPlayer_upvr.Team or v_4.Team ~= LocalPlayer_upvr.Team) then
            local Character_4 = v_4.Character
            if Character_4 then
                local Humanoid_8 = Character_4:FindFirstChild("Humanoid")
                if Humanoid_8 and 0 < Humanoid_8.Health and Character_4:FindFirstChild("HumanoidRootPart") then
                    local tbl = {
                        player = v_4;
                        character = Character_4;
                        humanoid = Humanoid_8;
                    }
                    -- KONSTANTERROR: Expression was reused, decompilation is incorrect
                    tbl.rootPart = Character_4:FindFirstChild("HumanoidRootPart")
                    table.insert(tbl_3_upvr, tbl)
                end
            end
        end
    end
end
local var156_upvw = 0
local function findBestTarget_upvr() -- Line 648, Named "findBestTarget"
    --[[ Upvalues[13]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: var156_upvw (read and write)
        [3]: updateActivePlayersList_upvr (readonly)
        [4]: tbl_3_upvr (readonly)
        [5]: CurrentCamera_upvr (readonly)
        [6]: var48_upvw (read and write)
        [7]: var35_upvw (read and write)
        [8]: var39_upvw (read and write)
        [9]: var37_upvw (read and write)
        [10]: var26_upvw (read and write)
        [11]: var45_upvw (read and write)
        [12]: tbl_4_upvr (readonly)
        [13]: multiPointWallCheck_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 104 start (CF ANALYSIS FAILED)
    local Character_13 = LocalPlayer_upvr.Character
    local var158
    if not Character_13 then
        var158 = false
    else
        local Humanoid_6 = Character_13:FindFirstChild("Humanoid")
        if not Humanoid_6 or Humanoid_6.Health <= 0 then
            var158 = false
        else
            var158 = true
        end
    end
    if not var158 then
        var158 = nil
        return var158
    end
    var158 = tick()
    if 0.5 <= var158 - var156_upvw then
        var156_upvw = var158
        updateActivePlayersList_upvr()
    end
    if #tbl_3_upvr == 0 then
        return nil
    end
    if not LocalPlayer_upvr.Character:FindFirstChild("Head") then
        return nil
    end
    local _ = CurrentCamera_upvr.ViewportSize
    local _ = 1
    -- KONSTANTERROR: [0] 1. Error Block 104 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [346] 264. Error Block 80 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [346] 264. Error Block 80 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [72] 58. Error Block 18 start (CF ANALYSIS FAILED)
    -- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.14]
    -- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [346.132226]
    -- KONSTANTERROR: [72] 58. Error Block 18 end (CF ANALYSIS FAILED)
end
local function isGrounded_upvr(arg1, arg2) -- Line 758, Named "isGrounded"
    --[[ Upvalues[2]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: Workspace_upvr (readonly)
    ]]
    if not arg1 or not arg2 then
        return false
    end
    if arg1.FloorMaterial ~= Enum.Material.Air then
        return true
    end
    local RaycastParams_new_result1_3 = RaycastParams.new()
    RaycastParams_new_result1_3.FilterDescendantsInstances = {LocalPlayer_upvr.Character}
    RaycastParams_new_result1_3.FilterType = Enum.RaycastFilterType.Exclude
    if Workspace_upvr:Raycast(arg2.Position, Vector3.new(0, -3.5, 0), RaycastParams_new_result1_3) == nil then
    else
    end
    return true
end
local function _(arg1) -- Line 781, Named "isPlayerJumping"
    if not arg1 then
        return true
    end
    local any_GetState_result1_2 = arg1:GetState()
    local var168 = true
    if any_GetState_result1_2 ~= Enum.HumanoidStateType.Jumping then
        var168 = true
        if any_GetState_result1_2 ~= Enum.HumanoidStateType.Freefall then
            if any_GetState_result1_2 ~= Enum.HumanoidStateType.FallingDown then
                var168 = false
            else
                var168 = true
            end
        end
    end
    return var168
end
local var169_upvw
local function _() -- Line 796, Named "startTargeting"
    --[[ Upvalues[19]:
        [1]: var169_upvw (read and write)
        [2]: RunService_upvr (readonly)
        [3]: var16_upvw (read and write)
        [4]: var17_upvw (read and write)
        [5]: var24_upvw (read and write)
        [6]: LocalPlayer_upvr (readonly)
        [7]: isGrounded_upvr (readonly)
        [8]: var21_upvw (read and write)
        [9]: var22_upvw (read and write)
        [10]: getToolComponents_upvr (readonly)
        [11]: findBestTarget_upvr (readonly)
        [12]: var23_upvw (read and write)
        [13]: var29_upvw (read and write)
        [14]: predictPartPosition_upvr (readonly)
        [15]: multiPointWallCheck_upvr (readonly)
        [16]: var44_upvw (read and write)
        [17]: random_state_upvr (readonly)
        [18]: disableAntiAimsAndRotate_upvr (readonly)
        [19]: performDoubleTapTeleport_upvr (readonly)
    ]]
    if var169_upvw then
    else
        var169_upvw = RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 799
            --[[ Upvalues[17]:
                [1]: var16_upvw (copied, read and write)
                [2]: var17_upvw (copied, read and write)
                [3]: var24_upvw (copied, read and write)
                [4]: LocalPlayer_upvr (copied, readonly)
                [5]: isGrounded_upvr (copied, readonly)
                [6]: var21_upvw (copied, read and write)
                [7]: var22_upvw (copied, read and write)
                [8]: getToolComponents_upvr (copied, readonly)
                [9]: findBestTarget_upvr (copied, readonly)
                [10]: var23_upvw (copied, read and write)
                [11]: var29_upvw (copied, read and write)
                [12]: predictPartPosition_upvr (copied, readonly)
                [13]: multiPointWallCheck_upvr (copied, readonly)
                [14]: var44_upvw (copied, read and write)
                [15]: random_state_upvr (copied, readonly)
                [16]: disableAntiAimsAndRotate_upvr (copied, readonly)
                [17]: performDoubleTapTeleport_upvr (copied, readonly)
            ]]
            -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
            -- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
            local var191
            if not var191 then
                var191 = nil
                var17_upvw = var191
                var191 = false
                var24_upvw = var191
            else
                local Character_7 = LocalPlayer_upvr.Character
                if not Character_7 then
                    var191 = false
                    -- KONSTANTWARNING: GOTO [26] #23
                end
                -- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
                -- KONSTANTERROR: [13] 13. Error Block 133 start (CF ANALYSIS FAILED)
                local Humanoid_7 = Character_7:FindFirstChild("Humanoid")
                if not Humanoid_7 or Humanoid_7.Health <= 0 then
                    var191 = false
                else
                    var191 = true
                end
                if not var191 then
                    var191 = nil
                    var17_upvw = var191
                    var191 = false
                    var24_upvw = var191
                    return
                end
                var191 = LocalPlayer_upvr.Character
                local var194 = var191
                if var194 then
                    var194 = var191:FindFirstChild("Humanoid")
                end
                Humanoid_7 = var191
                local var195 = Humanoid_7
                if var195 then
                    var195 = var191:FindFirstChild("HumanoidRootPart")
                end
                if not var194 then
                else
                    local any_GetState_result1_4 = var194:GetState()
                    if any_GetState_result1_4 ~= Enum.HumanoidStateType.Jumping and any_GetState_result1_4 ~= Enum.HumanoidStateType.Freefall then
                        if any_GetState_result1_4 ~= Enum.HumanoidStateType.FallingDown then
                        else
                        end
                    end
                end
                if true then
                    var17_upvw = nil
                    return
                end
                if not isGrounded_upvr(var194, var195) then
                    var17_upvw = nil
                    return
                end
                local tick_result1 = tick()
                if tick_result1 - var21_upvw < 1.3 then return end
                if var22_upvw then return end
                local getToolComponents_upvr_result1_upvr_3 = getToolComponents_upvr()
                if not getToolComponents_upvr_result1_upvr_3 then
                    var17_upvw = nil
                    var24_upvw = false
                    return
                end
                local findBestTarget_upvr_result1_upvr_3 = findBestTarget_upvr()
                if not findBestTarget_upvr_result1_upvr_3 then
                    if not var24_upvw then
                        var24_upvw = true
                        var23_upvw = tick_result1
                    end
                    var17_upvw = nil
                    return
                end
                if var24_upvw then
                    var24_upvw = false
                    var23_upvw = tick_result1
                end
                if tick_result1 - var23_upvw < 0.05 then return end
                var17_upvw = findBestTarget_upvr_result1_upvr_3
                local var200
                if var29_upvw then
                    var200 = predictPartPosition_upvr(findBestTarget_upvr_result1_upvr_3.targetPart, findBestTarget_upvr_result1_upvr_3.rootPart)
                else
                    var200 = findBestTarget_upvr_result1_upvr_3.targetPart.Position
                end
                if not var200 then return end
                local Character_2 = LocalPlayer_upvr.Character
                local Head = Character_2:FindFirstChild("Head")
                if not Head then return end
                if not multiPointWallCheck_upvr(Head.Position, var200, Character_2, findBestTarget_upvr_result1_upvr_3.character) then return end
                if 100 <= var44_upvw then
                    -- KONSTANTWARNING: GOTO [183] #155
                end
                if var44_upvw <= 0 then
                    -- KONSTANTWARNING: GOTO [183] #155
                end
                if random_state_upvr:NextInteger(1, 100) > var44_upvw then
                else
                end
                if not true then return end
                local Position_3_upvr = Head.Position
                local var204 = var200 - Position_3_upvr
                local Unit_upvr = var204.Unit
                if not var194 then
                    var204 = true
                else
                    local any_GetState_result1_8 = var194:GetState()
                    var204 = true
                    if any_GetState_result1_8 ~= Enum.HumanoidStateType.Jumping then
                        var204 = true
                        if any_GetState_result1_8 ~= Enum.HumanoidStateType.Freefall then
                            if any_GetState_result1_8 ~= Enum.HumanoidStateType.FallingDown then
                                var204 = false
                            else
                                var204 = true
                            end
                        end
                    end
                end
                if var204 then return end
                var22_upvw = true
                disableAntiAimsAndRotate_upvr(Unit_upvr)
                local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 908
                    --[[ Upvalues[4]:
                        [1]: getToolComponents_upvr_result1_upvr_3 (readonly)
                        [2]: Position_3_upvr (readonly)
                        [3]: Unit_upvr (readonly)
                        [4]: findBestTarget_upvr_result1_upvr_3 (readonly)
                    ]]
                    getToolComponents_upvr_result1_upvr_3.fireShot:FireServer(Position_3_upvr, Unit_upvr, findBestTarget_upvr_result1_upvr_3.targetPart)
                end)
                if pcall_result1_2 then
                    var21_upvw = tick_result1
                    performDoubleTapTeleport_upvr()
                else
                    warn("AutoShoot Error:", pcall_result2_3)
                end
                task.delay(0.1, function() -- Line 920
                    --[[ Upvalues[1]:
                        [1]: var22_upvw (copied, read and write)
                    ]]
                    var22_upvw = false
                end)
                -- KONSTANTERROR: [13] 13. Error Block 133 end (CF ANALYSIS FAILED)
            end
        end)
    end
end
local tbl_6_upvr = {}
task.spawn(function() -- Line 930
    --[[ Upvalues[1]:
        [1]: tbl_6_upvr (readonly)
    ]]
    while task.wait(2) do
        for i_5, v_5 in pairs(tbl_6_upvr) do
            if 3 < tick() - v_5.time then
                tbl_6_upvr[i_5] = nil
            end
        end
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.AutoShoot = var16_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 949
        --[[ Upvalues[8]:
            [1]: var16_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var17_upvw (read and write)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "AutoShoot" then
            var16_upvw = arg2
            if not var16_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if not var16_upvw then
                var17_upvw = nil
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end
if var169_upvw then
else
    onConfigLoad_upvr = RunService_upvr.RenderStepped
    onConfigLoad_upvr = onConfigLoad_upvr:Connect(function(arg1) -- Line 799
        --[[ Upvalues[17]:
            [1]: var16_upvw (read and write)
            [2]: var17_upvw (read and write)
            [3]: var24_upvw (read and write)
            [4]: LocalPlayer_upvr (readonly)
            [5]: isGrounded_upvr (readonly)
            [6]: var21_upvw (read and write)
            [7]: var22_upvw (read and write)
            [8]: getToolComponents_upvr (readonly)
            [9]: findBestTarget_upvr (readonly)
            [10]: var23_upvw (read and write)
            [11]: var29_upvw (read and write)
            [12]: predictPartPosition_upvr (readonly)
            [13]: multiPointWallCheck_upvr (readonly)
            [14]: var44_upvw (read and write)
            [15]: random_state_upvr (readonly)
            [16]: disableAntiAimsAndRotate_upvr (readonly)
            [17]: performDoubleTapTeleport_upvr (readonly)
        ]]
        -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
        -- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
        local var222
        if not var222 then
            var222 = nil
            var17_upvw = var222
            var222 = false
            var24_upvw = var222
        else
            local Character_11 = LocalPlayer_upvr.Character
            if not Character_11 then
                var222 = false
                -- KONSTANTWARNING: GOTO [26] #23
            end
            -- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
            -- KONSTANTERROR: [13] 13. Error Block 133 start (CF ANALYSIS FAILED)
            local Humanoid = Character_11:FindFirstChild("Humanoid")
            if not Humanoid or Humanoid.Health <= 0 then
                var222 = false
            else
                var222 = true
            end
            if not var222 then
                var222 = nil
                var17_upvw = var222
                var222 = false
                var24_upvw = var222
                return
            end
            var222 = LocalPlayer_upvr.Character
            local var225 = var222
            if var225 then
                var225 = var222:FindFirstChild("Humanoid")
            end
            Humanoid = var222
            local var226 = Humanoid
            if var226 then
                var226 = var222:FindFirstChild("HumanoidRootPart")
            end
            if not var225 then
            else
                local any_GetState_result1_7 = var225:GetState()
                if any_GetState_result1_7 ~= Enum.HumanoidStateType.Jumping and any_GetState_result1_7 ~= Enum.HumanoidStateType.Freefall then
                    if any_GetState_result1_7 ~= Enum.HumanoidStateType.FallingDown then
                    else
                    end
                end
            end
            if true then
                var17_upvw = nil
                return
            end
            if not isGrounded_upvr(var225, var226) then
                var17_upvw = nil
                return
            end
            local tick_result1_3 = tick()
            if tick_result1_3 - var21_upvw < 1.3 then return end
            if var22_upvw then return end
            local getToolComponents_upvr_result1_upvr = getToolComponents_upvr()
            if not getToolComponents_upvr_result1_upvr then
                var17_upvw = nil
                var24_upvw = false
                return
            end
            local findBestTarget_upvr_result1_upvr_2 = findBestTarget_upvr()
            if not findBestTarget_upvr_result1_upvr_2 then
                if not var24_upvw then
                    var24_upvw = true
                    var23_upvw = tick_result1_3
                end
                var17_upvw = nil
                return
            end
            if var24_upvw then
                var24_upvw = false
                var23_upvw = tick_result1_3
            end
            if tick_result1_3 - var23_upvw < 0.05 then return end
            var17_upvw = findBestTarget_upvr_result1_upvr_2
            local var231
            if var29_upvw then
                var231 = predictPartPosition_upvr(findBestTarget_upvr_result1_upvr_2.targetPart, findBestTarget_upvr_result1_upvr_2.rootPart)
            else
                var231 = findBestTarget_upvr_result1_upvr_2.targetPart.Position
            end
            if not var231 then return end
            local Character_10 = LocalPlayer_upvr.Character
            local Head_3 = Character_10:FindFirstChild("Head")
            if not Head_3 then return end
            if not multiPointWallCheck_upvr(Head_3.Position, var231, Character_10, findBestTarget_upvr_result1_upvr_2.character) then return end
            if 100 <= var44_upvw then
                -- KONSTANTWARNING: GOTO [183] #155
            end
            if var44_upvw <= 0 then
                -- KONSTANTWARNING: GOTO [183] #155
            end
            if random_state_upvr:NextInteger(1, 100) > var44_upvw then
            else
            end
            if not true then return end
            local Position_2_upvr = Head_3.Position
            local var235 = var231 - Position_2_upvr
            local Unit_2_upvr = var235.Unit
            if not var225 then
                var235 = true
            else
                local any_GetState_result1_6 = var225:GetState()
                var235 = true
                if any_GetState_result1_6 ~= Enum.HumanoidStateType.Jumping then
                    var235 = true
                    if any_GetState_result1_6 ~= Enum.HumanoidStateType.Freefall then
                        if any_GetState_result1_6 ~= Enum.HumanoidStateType.FallingDown then
                            var235 = false
                        else
                            var235 = true
                        end
                    end
                end
            end
            if var235 then return end
            var22_upvw = true
            disableAntiAimsAndRotate_upvr(Unit_2_upvr)
            local pcall_result1, pcall_result2 = pcall(function() -- Line 908
                --[[ Upvalues[4]:
                    [1]: getToolComponents_upvr_result1_upvr (readonly)
                    [2]: Position_2_upvr (readonly)
                    [3]: Unit_2_upvr (readonly)
                    [4]: findBestTarget_upvr_result1_upvr_2 (readonly)
                ]]
                getToolComponents_upvr_result1_upvr.fireShot:FireServer(Position_2_upvr, Unit_2_upvr, findBestTarget_upvr_result1_upvr_2.targetPart)
            end)
            if pcall_result1 then
                var21_upvw = tick_result1_3
                performDoubleTapTeleport_upvr()
            else
                warn("AutoShoot Error:", pcall_result2)
            end
            task.delay(0.1, function() -- Line 920
                --[[ Upvalues[1]:
                    [1]: var22_upvw (copied, read and write)
                ]]
                var22_upvw = false
            end)
            -- KONSTANTERROR: [13] 13. Error Block 133 end (CF ANALYSIS FAILED)
        end
    end)
    var169_upvw = onConfigLoad_upvr
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = HumanoidRootPart
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        11 [string] = Freefall
        13 [string] = FallingDown
        15 [string] = tick
        17 [number] = 1.3
        18 [number] = 0.05
        19 [string] = targetPart
        20 [string] = rootPart
        21 [string] = Position
        22 [string] = Head
        23 [string] = character
        24 [string] = NextInteger
        25 [string] = Unit
        26 [string] = pcall
        28 [string] = warn
        30 [string] = AutoShoot Error:
        31 [string] = task
        32 [string] = delay
        34 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoShoot
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pairs
        6 [string] = tick
        8 [string] = time

====================================================================================================

Function Dump: startTargeting

Function Upvalues: startTargeting

Function Constants: startTargeting
        1 [string] = RenderStepped
        2 [string] = Connect

====================================================================================================

Function Dump: isPlayerJumping

Function Upvalues: isPlayerJumping

Function Constants: isPlayerJumping
        1 [string] = GetState
        2 [string] = Enum
        3 [string] = HumanoidStateType
        4 [string] = Jumping
        6 [string] = Freefall
        8 [string] = FallingDown

====================================================================================================

Function Dump: isGrounded

Function Upvalues: isGrounded

Function Constants: isGrounded
        1 [string] = FloorMaterial
        2 [string] = Enum
        3 [string] = Material
        4 [string] = Air
        6 [string] = RaycastParams
        7 [string] = new
        9 [string] = Character
        10 [string] = FilterDescendantsInstances
        11 [string] = RaycastFilterType
        12 [string] = Exclude
        14 [string] = FilterType
        15 [string] = Position
        16 [Vector3] = 0, -3.5, 0
        17 [string] = Raycast

====================================================================================================

Function Dump: findBestTarget

Function Upvalues: findBestTarget

Function Constants: findBestTarget
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = tick
        7 [number] = 0.5
        8 [number] = 0
        9 [string] = Head
        10 [string] = Position
        11 [number] = inf
        12 [string] = ViewportSize
        13 [string] = X
        14 [string] = Y
        15 [string] = CFrame
        16 [string] = humanoid
        17 [string] = character
        18 [string] = part
        19 [string] = priority
        21 [string] = table
        22 [string] = insert
        24 [string] = Torso
        25 [string] = UpperTorso
        26 [string] = LowerTorso
        27 [string] = LeftUpperLeg
        28 [string] = RightUpperLeg
        29 [string] = HumanoidRootPart
        30 [string] = WorldToViewportPoint
        31 [string] = rootPart
        32 [string] = Magnitude
        33 [string] = Name
        34 [number] = 0.3
        35 [number] = 0.8
        36 [string] = math
        37 [string] = floor
        39 [string] = sqrt
        41 [string] = player
        42 [string] = targetPart
        43 [string] = distance

====================================================================================================

Function Dump: updateActivePlayersList

Function Upvalues: updateActivePlayersList

Function Constants: updateActivePlayersList
        1 [string] = table
        2 [string] = clear
        4 [string] = ipairs
        6 [string] = GetPlayers
        7 [string] = Team
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = FindFirstChild
        11 [string] = HumanoidRootPart
        12 [string] = Health
        13 [string] = player
        14 [string] = character
        15 [string] = humanoid
        16 [string] = rootPart
        18 [string] = insert

====================================================================================================

Function Dump: checkHitchance

Function Upvalues: checkHitchance

Function Constants: checkHitchance
        1 [string] = NextInteger

====================================================================================================

Function Dump: checkMinDamage

Function Upvalues: checkMinDamage

Function Constants: checkMinDamage
        1 [string] = Name
        2 [number] = 0.5
        3 [number] = 0.3
        4 [number] = 0.8
        5 [string] = math
        6 [string] = floor

====================================================================================================

Function Dump: calculatePotentialDamage

Function Upvalues: calculatePotentialDamage

Function Constants: calculatePotentialDamage
        1 [number] = 0.5
        2 [number] = 0.3
        3 [number] = 0.8
        4 [string] = math
        5 [string] = floor

====================================================================================================

Function Dump: isInFOV

Function Upvalues: isInFOV

Function Constants: isInFOV
        1 [string] = WorldToViewportPoint
        2 [string] = ViewportSize
        3 [number] = 0.5
        4 [string] = X
        5 [string] = Y

====================================================================================================

Function Dump: predictPartPosition

Function Upvalues: predictPartPosition

Function Constants: predictPartPosition
        1 [string] = Position
        2 [string] = AssemblyLinearVelocity
        3 [string] = Vector3
        4 [string] = new
        6 [string] = Magnitude
        7 [string] = CFrame
        8 [number] = 1000
        9 [number] = 0.08
        10 [number] = 0.2
        11 [string] = math
        12 [string] = clamp
        14 [number] = 1.2

====================================================================================================

Function Dump: multiPointWallCheck

Function Upvalues: multiPointWallCheck

Function Constants: multiPointWallCheck
        1 [Vector3] = 0, 0.30000001192092896, 0
        2 [Vector3] = 0, -0.30000001192092896, 0
        3 [string] = ipairs

====================================================================================================

Function Dump: strictWallCheck

Function Upvalues: strictWallCheck

Function Constants: strictWallCheck
        1 [string] = invalid_positions
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = invalid_distance
        5 [string] = ipairs
        7 [string] = GetDescendants
        8 [string] = BasePart
        9 [string] = IsA
        10 [string] = table
        11 [string] = insert
        13 [string] = RaycastParams
        14 [string] = new
        16 [string] = FilterDescendantsInstances
        17 [string] = Enum
        18 [string] = RaycastFilterType
        19 [string] = Exclude
        21 [string] = FilterType
        22 [string] = IgnoreWater
        23 [string] = Raycast
        24 [string] = clear
        25 [string] = Instance
        26 [string] = IsDescendantOf
        27 [string] = hit_target
        28 [string] = Position
        29 [string] = Unit
        30 [string] = transparent_pass
        31 [string] = passed_other_player
        32 [string] = wall_blocking

====================================================================================================

Function Dump: isPartOfCharacter

Function Upvalues: isPartOfCharacter

Function Constants: isPartOfCharacter
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Parent
        4 [string] = Humanoid
        5 [string] = FindFirstChild
        6 [string] = Accessory
        7 [string] = Hat

====================================================================================================

Function Dump: canBulletPassThrough

Function Upvalues: canBulletPassThrough

Function Constants: canBulletPassThrough
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Name
        4 [string] = lower
        5 [string] = hamik
        6 [string] = find
        7 [string] = paletka
        8 [string] = Parent
        9 [string] = Transparency
        10 [number] = 0.2
        11 [string] = CanCollide
        12 [string] = Decal
        13 [string] = ParticleEmitter
        14 [string] = Beam
        15 [string] = Trail

====================================================================================================

Function Dump: randomPointInPart

Function Upvalues: randomPointInPart

Function Constants: randomPointInPart
        1 [string] = Position
        2 [string] = Size
        3 [number] = 2
        4 [string] = X
        5 [string] = NextNumber
        6 [string] = Y
        7 [string] = Z
        8 [string] = CFrame
        9 [string] = RightVector
        10 [string] = UpVector
        11 [string] = LookVector

====================================================================================================

Function Dump: isPlayerAlive

Function Upvalues: isPlayerAlive

Function Constants: isPlayerAlive
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: applyAutoStop

Function Upvalues: applyAutoStop

Function Constants: applyAutoStop
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = FloorMaterial
        6 [string] = Enum
        7 [string] = Material
        8 [string] = Air
        10 [string] = Instance
        11 [string] = new
        13 [string] = BodyVelocity
        14 [string] = AutoStopVelocity
        15 [string] = Name
        16 [Vector3] = 0, 0, 0
        17 [string] = Velocity
        18 [Vector3] = 100000, 0, 100000
        19 [string] = MaxForce
        20 [string] = P
        21 [string] = Parent
        22 [string] = WalkSpeed
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.3

====================================================================================================

Function Dump: disableAntiAimsAndRotate

Function Upvalues: disableAntiAimsAndRotate

Function Constants: disableAntiAimsAndRotate
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = CFrame
        5 [string] = Rotation
        6 [string] = disable
        7 [string] = FireServer
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.01
        12 [string] = X
        13 [string] = Z
        14 [string] = Vector3
        15 [string] = new
        17 [string] = Unit
        18 [string] = Magnitude
        19 [number] = 0.1
        21 [string] = Position
        22 [number] = 0.15
        23 [string] = tick
        25 [string] = delay

====================================================================================================

Function Dump: performDoubleTapTeleport

Function Upvalues: performDoubleTapTeleport

Function Constants: performDoubleTapTeleport
        1 [string] = os
        2 [string] = clock
        4 [string] = leaderstats
        5 [string] = FindFirstChild
        6 [string] = leavemealonexd
        7 [string] = Value
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = HumanoidRootPart
        11 [string] = Health
        12 [string] = pcall
        14 [string] = MoveDirection
        15 [string] = Magnitude
        16 [number] = 0.05
        17 [string] = CFrame
        18 [string] = LookVector
        19 [string] = X
        20 [string] = Z
        21 [string] = Vector3
        22 [string] = new
        24 [string] = Unit
        25 [string] = Position
        26 [number] = 4
        27 [string] = RaycastParams
        29 [string] = FilterDescendantsInstances
        30 [string] = Enum
        31 [string] = RaycastFilterType
        32 [string] = Exclude
        34 [string] = FilterType
        35 [string] = IgnoreWater
        36 [string] = Raycast
        37 [number] = 2
        38 [string] = math
        39 [string] = max
        41 [Vector3] = 0, 5, 0
        42 [Vector3] = 0, -20, 0
        43 [number] = 0.5
        44 [string] = Y
        45 [string] = HipHeight
        46 [Vector3] = 0, 0, 0
        47 [string] = AssemblyLinearVelocity
        48 [string] = AssemblyAngularVelocity
        50 [string] = Rotation
        51 [string] = PivotTo
        52 [string] = task
        53 [string] = defer

====================================================================================================

Function Dump: getToolComponents

Function Upvalues: getToolComponents

Function Constants: getToolComponents
        1 [string] = Character
        2 [string] = Tool
        3 [string] = FindFirstChildOfClass
        4 [string] = Remotes
        5 [string] = FindFirstChild
        6 [string] = FireShot
        7 [string] = Handle
        8 [string] = tool
        9 [string] = fireShot
        10 [string] = reload
        11 [string] = handle
        13 [string] = Reload

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAutoShootEnabled

Function Upvalues: setAutoShootEnabled

Function Constants: setAutoShootEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoShoot

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: findBestTarget

Function Upvalues: findBestTarget
        1 [Instance] = quit_xyz
        2 [number] = 0
        3 [function] = updateActivePlayersList
        4 [table]:
        4 [table] table: 0xeef23f7a2c4e90b5
        5 [Instance] = Camera
        6 [boolean] = false
        7 [boolean] = true
        8 [boolean] = true
        9 [boolean] = true
        10 [number] = 0
        11 [number] = 0
        12 [table]:
        12 [table] table: 0x925167b04c2f9df5
                1 [number] = 0.6
                2 [number] = 0.75
                3 [number] = 0.6
                4 [number] = 1
                5 [number] = 1
                6 [number] = 0.6
                7 [number] = 0.6
                8 [number] = 0.6
                9 [number] = 1
                10 [number] = 4
                11 [number] = 1
                12 [number] = 0.75
                13 [number] = 0.75
                14 [number] = 0.75
                15 [number] = 0.6
                16 [number] = 0.6
                17 [number] = 0.75
                18 [number] = 0.6
                19 [number] = 0.75
        13 [function] = multiPointWallCheck

Function Constants: findBestTarget
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = tick
        7 [number] = 0.5
        8 [number] = 0
        9 [string] = Head
        10 [string] = Position
        11 [number] = inf
        12 [string] = ViewportSize
        13 [string] = X
        14 [string] = Y
        15 [string] = CFrame
        16 [string] = humanoid
        17 [string] = character
        18 [string] = part
        19 [string] = priority
        21 [string] = table
        22 [string] = insert
        24 [string] = Torso
        25 [string] = UpperTorso
        26 [string] = LowerTorso
        27 [string] = LeftUpperLeg
        28 [string] = RightUpperLeg
        29 [string] = HumanoidRootPart
        30 [string] = WorldToViewportPoint
        31 [string] = rootPart
        32 [string] = Magnitude
        33 [string] = Name
        34 [number] = 0.3
        35 [number] = 0.8
        36 [string] = math
        37 [string] = floor
        39 [string] = sqrt
        41 [string] = player
        42 [string] = targetPart
        43 [string] = distance

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 0

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = true

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 0

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: predictPartPosition

Function Upvalues: predictPartPosition
        1 [boolean] = false
        2 [Instance] = Camera

Function Constants: predictPartPosition
        1 [string] = Position
        2 [string] = AssemblyLinearVelocity
        3 [string] = Vector3
        4 [string] = new
        6 [string] = Magnitude
        7 [string] = CFrame
        8 [number] = 1000
        9 [number] = 0.08
        10 [number] = 0.2
        11 [string] = math
        12 [string] = clamp
        14 [number] = 1.2

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAutoShootEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        3 [boolean] = false
        4 [Instance] = quit_xyz
        5 [function] = isGrounded
        6 [number] = 0
        7 [boolean] = false
        8 [function] = getToolComponents
        9 [function] = findBestTarget
        10 [number] = 0
        11 [boolean] = false
        12 [function] = predictPartPosition
        13 [function] = multiPointWallCheck
        14 [number] = 100
        15 [Random] = Random
        16 [function] = disableAntiAimsAndRotate
        17 [function] = performDoubleTapTeleport

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = HumanoidRootPart
        6 [string] = GetState
        7 [string] = Enum
        8 [string] = HumanoidStateType
        9 [string] = Jumping
        10 [EnumItem] = Enum.HumanoidStateType.Jumping
        11 [string] = Freefall
        12 [EnumItem] = Enum.HumanoidStateType.Freefall
        13 [string] = FallingDown
        14 [EnumItem] = Enum.HumanoidStateType.FallingDown
        15 [string] = tick
        17 [number] = 1.3
        18 [number] = 0.05
        19 [string] = targetPart
        20 [string] = rootPart
        21 [string] = Position
        22 [string] = Head
        23 [string] = character
        24 [string] = NextInteger
        25 [string] = Unit
        26 [string] = pcall
        28 [string] = warn
        30 [string] = AutoShoot Error:
        31 [string] = task
        32 [string] = delay
        34 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AutoShoot
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: setAutoShootEnabled

Function Upvalues: setAutoShootEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setAutoShootEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = AutoShoot

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [table]:
        1 [table] table: 0xc25f290b80e79d65

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [string] = pairs
        6 [string] = tick
        8 [string] = time

====================================================================================================

Function Dump: multiPointWallCheck

Function Upvalues: multiPointWallCheck
        1 [function] = strictWallCheck

Function Constants: multiPointWallCheck
        1 [Vector3] = 0, 0.30000001192092896, 0
        2 [Vector3] = 0, -0.30000001192092896, 0
        3 [string] = ipairs

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = applyAutoStop

Function Constants: Unknown Name

====================================================================================================

Function Dump: getToolComponents

Function Upvalues: getToolComponents
        1 [Instance] = quit_xyz

Function Constants: getToolComponents
        1 [string] = Character
        2 [string] = Tool
        3 [string] = FindFirstChildOfClass
        4 [string] = Remotes
        5 [string] = FindFirstChild
        6 [string] = FireShot
        7 [string] = Handle
        8 [string] = tool
        9 [string] = fireShot
        10 [string] = reload
        11 [string] = handle
        13 [string] = Reload

====================================================================================================

Function Dump: isPartOfCharacter

Function Upvalues: isPartOfCharacter

Function Constants: isPartOfCharacter
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Parent
        4 [string] = Humanoid
        5 [string] = FindFirstChild
        6 [string] = Accessory
        7 [string] = Hat

====================================================================================================

Function Dump: canBulletPassThrough

Function Upvalues: canBulletPassThrough

Function Constants: canBulletPassThrough
        1 [string] = BasePart
        2 [string] = IsA
        3 [string] = Name
        4 [string] = lower
        5 [string] = hamik
        6 [string] = find
        7 [string] = paletka
        8 [string] = Parent
        9 [string] = Transparency
        10 [number] = 0.2
        11 [string] = CanCollide
        12 [string] = Decal
        13 [string] = ParticleEmitter
        14 [string] = Beam
        15 [string] = Trail

====================================================================================================

Function Dump: performDoubleTapTeleport

Function Upvalues: performDoubleTapTeleport
        1 [number] = 0
        2 [Instance] = quit_xyz
        3 [boolean] = false
        4 [Instance] = DTMarker
        5 [Instance] = Workspace

Function Constants: performDoubleTapTeleport
        1 [string] = os
        2 [string] = clock
        4 [string] = leaderstats
        5 [string] = FindFirstChild
        6 [string] = leavemealonexd
        7 [string] = Value
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = HumanoidRootPart
        11 [string] = Health
        12 [string] = pcall
        14 [string] = MoveDirection
        15 [string] = Magnitude
        16 [number] = 0.05
        17 [string] = CFrame
        18 [string] = LookVector
        19 [string] = X
        20 [string] = Z
        21 [string] = Vector3
        22 [string] = new
        24 [string] = Unit
        25 [string] = Position
        26 [number] = 4
        27 [string] = RaycastParams
        29 [string] = FilterDescendantsInstances
        30 [string] = Enum
        31 [string] = RaycastFilterType
        32 [string] = Exclude
        33 [EnumItem] = Enum.RaycastFilterType.Exclude
        34 [string] = FilterType
        35 [string] = IgnoreWater
        36 [string] = Raycast
        37 [number] = 2
        38 [string] = math
        39 [string] = max
        41 [Vector3] = 0, 5, 0
        42 [Vector3] = 0, -20, 0
        43 [number] = 0.5
        44 [string] = Y
        45 [string] = HipHeight
        46 [Vector3] = 0, 0, 0
        47 [string] = AssemblyLinearVelocity
        48 [string] = AssemblyAngularVelocity
        50 [string] = Rotation
        51 [string] = PivotTo
        52 [string] = task
        53 [string] = defer

====================================================================================================

Function Dump: updateActivePlayersList

Function Upvalues: updateActivePlayersList
        1 [table] (Recursive table detected)
        2 [Instance] = Players
        3 [Instance] = quit_xyz

Function Constants: updateActivePlayersList
        1 [string] = table
        2 [string] = clear
        4 [string] = ipairs
        6 [string] = GetPlayers
        7 [string] = Team
        8 [string] = Character
        9 [string] = Humanoid
        10 [string] = FindFirstChild
        11 [string] = HumanoidRootPart
        12 [string] = Health
        13 [string] = player
        14 [string] = character
        15 [string] = humanoid
        16 [string] = rootPart
        18 [string] = insert

====================================================================================================

Function Dump: applyAutoStop

Function Upvalues: applyAutoStop
        1 [boolean] = false
        2 [boolean] = false
        3 [boolean] = false
        4 [Instance] = quit_xyz

Function Constants: applyAutoStop
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = FloorMaterial
        6 [string] = Enum
        7 [string] = Material
        8 [string] = Air
        9 [EnumItem] = Enum.Material.Air
        10 [string] = Instance
        11 [string] = new
        13 [string] = BodyVelocity
        14 [string] = AutoStopVelocity
        15 [string] = Name
        16 [Vector3] = 0, 0, 0
        17 [string] = Velocity
        18 [Vector3] = 100000, 0, 100000
        19 [string] = MaxForce
        20 [string] = P
        21 [string] = Parent
        22 [string] = WalkSpeed
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.3

====================================================================================================

Function Dump: disableAntiAimsAndRotate

Function Upvalues: disableAntiAimsAndRotate
        1 [Instance] = quit_xyz
        2 [Instance] = aahelp
        3 [Instance] = aahelp1
        4 [number] = 0

Function Constants: disableAntiAimsAndRotate
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = CFrame
        5 [string] = Rotation
        6 [string] = disable
        7 [string] = FireServer
        8 [string] = task
        9 [string] = wait
        11 [number] = 0.01
        12 [string] = X
        13 [string] = Z
        14 [string] = Vector3
        15 [string] = new
        17 [string] = Unit
        18 [string] = Magnitude
        19 [number] = 0.1
        21 [string] = Position
        22 [number] = 0.15
        23 [string] = tick
        25 [string] = delay

====================================================================================================

Function Dump: strictWallCheck

Function Upvalues: strictWallCheck
        1 [Instance] = Workspace
        2 [function] = canBulletPassThrough
        3 [function] = strictWallCheck
        4 [function] = isPartOfCharacter

Function Constants: strictWallCheck
        1 [string] = invalid_positions
        2 [string] = Magnitude
        3 [number] = 0.1
        4 [string] = invalid_distance
        5 [string] = ipairs
        7 [string] = GetDescendants
        8 [string] = BasePart
        9 [string] = IsA
        10 [string] = table
        11 [string] = insert
        13 [string] = RaycastParams
        14 [string] = new
        16 [string] = FilterDescendantsInstances
        17 [string] = Enum
        18 [string] = RaycastFilterType
        19 [string] = Exclude
        20 [EnumItem] = Enum.RaycastFilterType.Exclude
        21 [string] = FilterType
        22 [string] = IgnoreWater
        23 [string] = Raycast
        24 [string] = clear
        25 [string] = Instance
        26 [string] = IsDescendantOf
        27 [string] = hit_target
        28 [string] = Position
        29 [string] = Unit
        30 [string] = transparent_pass
        31 [string] = passed_other_player
        32 [string] = wall_blocking

====================================================================================================

Function Dump: isGrounded

Function Upvalues: isGrounded
        1 [Instance] = quit_xyz
        2 [Instance] = Workspace

Function Constants: isGrounded
        1 [string] = FloorMaterial
        2 [string] = Enum
        3 [string] = Material
        4 [string] = Air
        5 [EnumItem] = Enum.Material.Air
        6 [string] = RaycastParams
        7 [string] = new
        9 [string] = Character
        10 [string] = FilterDescendantsInstances
        11 [string] = RaycastFilterType
        12 [string] = Exclude
        13 [EnumItem] = Enum.RaycastFilterType.Exclude
        14 [string] = FilterType
        15 [string] = Position
        16 [Vector3] = 0, -3.5, 0
        17 [string] = Raycast

====================================================================================================
]]


----// XEClient/rage_BAim_1769301806.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle1.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:24
-- Luau version 6, Types version 3
-- Time taken: 0.003650 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local BAim_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("BAim")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local function setBAimEnabled_upvr(arg1, arg2) -- Line 11, Named "setBAimEnabled"
    --[[ Upvalues[6]:
        [1]: BAim_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    BAim_upvr.Value = arg1
    local var7
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var7 = udim2_upvr_2
        return var7
    end
    if not arg1 or not INLINED() then
        var7 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var7;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("BAim", arg1)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 23
    --[[ Upvalues[2]:
        [1]: setBAimEnabled_upvr (readonly)
        [2]: BAim_upvr (readonly)
    ]]
    setBAimEnabled_upvr(not BAim_upvr.Value, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.BAim = BAim_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 33
        --[[ Upvalues[7]:
            [1]: BAim_upvr (readonly)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "BAim" then
            BAim_upvr.Value = arg2
            if not arg2 or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle1.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = BAim
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: setBAimEnabled

Function Upvalues: setBAimEnabled

Function Constants: setBAimEnabled
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = BAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = BAim
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = BAim
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: setBAimEnabled

Function Upvalues: setBAimEnabled
        1 [Instance] = BAim
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setBAimEnabled
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = BAim

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setBAimEnabled
        2 [Instance] = BAim

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================
]]


----// XEClient/rage_FOVSetting_1769301787.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar1.Frame2.TextButton.LocalScript
-- Took 0.32s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:04
-- Luau version 6, Types version 3
-- Time taken: 0.009903 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = Parent_upvr_2.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local MinDamage_upvr = Parent_upvr.Parent.Parent.Frame.Parent.Frame.MinDamage
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: MinDamage_upvr (readonly)
    ]]
    local clamped = math.clamp(arg1, 0, 139)
    Parent_upvr_2.Position = UDim2.new((clamped - 0) / 139 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped)
    MinDamage_upvr.Value = clamped
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("FOVSetting", clamped)
    end
end
local function updateSliderFromMouse_upvr() -- Line 43, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr_2 (readonly)
        [5]: MinDamage_upvr (readonly)
        [6]: TextBox_upvr (readonly)
        [7]: var7_upvw (read and write)
    ]]
    local X = Parent_upvr.AbsoluteSize.X
    local var11
    if X <= 0 then
    else
        var11 = Parent_upvr.AbsolutePosition
        local X_2 = var11.X
        var11 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var13 = X_2 + 0 * X
        local var14 = X_2 + 0.803 * X
        if var11 < var13 then
            var11 = var13
        end
        if var14 < var11 then
        end
        local clamped_3 = math.clamp((var14 - X_2) / X, 0, 0.803)
        Parent_upvr_2.Position = UDim2.new(clamped_3, 0, -0.192, 0)
        local floored = math.floor(clamped_3 / 0.803 * 139 + 0)
        MinDamage_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("FOVSetting", floored)
        end
    end
end
;(function() -- Line 75, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: MinDamage_upvr (readonly)
        [2]: Parent_upvr_2 (readonly)
        [3]: TextBox_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    task.wait(1)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [47] 30. Error Block 3 start (CF ANALYSIS FAILED)
    local clamped_2 = math.clamp(_G.ConfigSystem.settings.FOVSetting, 0, 139)
    Parent_upvr_2.Position = UDim2.new((clamped_2 - 0) / 139 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_2)
    MinDamage_upvr.Value = clamped_2
    do
        return
    end
    -- KONSTANTERROR: [47] 30. Error Block 3 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [90] 62. Error Block 4 start (CF ANALYSIS FAILED)
    local clamped_4 = math.clamp(0, 0, 139)
    Parent_upvr_2.Position = UDim2.new((clamped_4 - 0) / 139 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_4)
    MinDamage_upvr.Value = clamped_4
    -- KONSTANTERROR: [90] 62. Error Block 4 end (CF ANALYSIS FAILED)
end)()
local var20_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 110
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr_2 (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var20_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr_2.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var20_upvw then
            var20_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 119
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var20_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var20_upvw then
                    var20_upvw:Disconnect()
                    var20_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 134
    --[[ Upvalues[1]:
        [1]: var7_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 141
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: MinDamage_upvr (readonly)
    ]]
    local tonumber_result1_5 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_5 then
        updateSliderPositionFromFov_upvr(tonumber_result1_5, true)
    else
        TextBox_upvr.Text = tostring(MinDamage_upvr.Value)
    end
end)
local function _() -- Line 152, Named "saveOnMouseRelease"
    --[[ Upvalues[3]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
        [3]: updateSliderPositionFromFov_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1_4 = tonumber(TextBox_upvr.Text)
        if tonumber_result1_4 then
            updateSliderPositionFromFov_upvr(tonumber_result1_4, true)
        end
    end
end
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 163
    --[[ Upvalues[3]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
        [3]: updateSliderPositionFromFov_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_2 then
                updateSliderPositionFromFov_upvr(tonumber_result1_2, true)
            end
        end
        var7_upvw = false
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar1.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Text
        6 [string] = tonumber

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber

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

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [number] = 0
        9 [string] = Value
        10 [string] = FOVSetting
        11 [string] = onConfigLoad
        12 [string] = math
        13 [string] = clamp
        15 [number] = 139
        16 [number] = 0.803
        17 [string] = UDim2
        18 [string] = new
        20 [number] = -0.192
        21 [string] = Position
        22 [string] = tostring
        24 [string] = Text

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
        14 [number] = 0
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
        5 [number] = 0
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
        20 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox
        3 [function] = updateSliderPositionFromFov

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber

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

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = MinDamage
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FOVSetting
        2 [string] = math
        3 [string] = clamp
        5 [number] = 139
        6 [number] = 0
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar1
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = MinDamage
        6 [Instance] = TextBox
        7 [boolean] = false

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
        14 [number] = 0
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = MinDamage

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = MinDamage

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
        5 [number] = 0
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
        20 [string] = FOVSetting

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar1.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Text
        6 [string] = tonumber

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber

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

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [number] = 0
        9 [string] = Value
        10 [string] = FOVSetting
        11 [string] = onConfigLoad
        12 [string] = math
        13 [string] = clamp
        15 [number] = 139
        16 [number] = 0.803
        17 [string] = UDim2
        18 [string] = new
        20 [number] = -0.192
        21 [string] = Position
        22 [string] = tostring
        24 [string] = Text

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
        14 [number] = 0
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
        5 [number] = 0
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
        20 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox
        3 [function] = updateSliderPositionFromFov

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber

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

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = MinDamage
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FOVSetting
        2 [string] = math
        3 [string] = clamp
        5 [number] = 139
        6 [number] = 0
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar1
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = MinDamage
        6 [Instance] = TextBox
        7 [boolean] = false

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
        14 [number] = 0
        15 [number] = 139
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOVSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = MinDamage

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = MinDamage

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 139
        5 [number] = 0
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
        20 [string] = FOVSetting

====================================================================================================
]]


----// XEClient/rage_FOV_1769301552.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:39:03
-- Luau version 6, Types version 3
-- Time taken: 0.012483 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent
local Parent_2_upvr = Parent_upvr.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local Fov_upvr = Parent_2_upvr.Parent.Parent.Frame.Fov
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 23, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: Fov_upvr (readonly)
    ]]
    local clamped_2 = math.clamp(arg1, 0, 361)
    Parent_upvr.Position = UDim2.new((clamped_2 - 0) / 361 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped_2)
    Fov_upvr.Value = clamped_2
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("FOV", clamped_2)
    end
end
local function updateSliderFromMouse_upvr() -- Line 38, Named "updateSliderFromMouse"
    --[[ Upvalues[6]:
        [1]: Parent_2_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr (readonly)
        [5]: Fov_upvr (readonly)
        [6]: TextBox_upvr (readonly)
    ]]
    local X_2 = Parent_2_upvr.AbsoluteSize.X
    local var11
    if X_2 <= 0 then
    else
        var11 = Parent_2_upvr.AbsolutePosition
        local X = var11.X
        var11 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var13 = X + 0 * X_2
        local var14 = X + 0.803 * X_2
        if var11 < var13 then
            var11 = var13
        end
        if var14 < var11 then
        end
        local clamped_4 = math.clamp((var14 - X) / X_2, 0, 0.803)
        Parent_upvr.Position = UDim2.new(clamped_4, 0, -0.192, 0)
        local floored = math.floor(clamped_4 / 0.803 * 361 + 0)
        Fov_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
        if _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("FOV", floored)
        end
    end
end
local clamped_3 = math.clamp(0, 0, 361)
Parent_upvr.Position = UDim2.new((clamped_3 - 0) / 361 * 0.803, 0, -0.192, 0)
TextBox_upvr.Text = tostring(clamped_3)
Fov_upvr.Value = clamped_3
local var19_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 73
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var19_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var19_upvw then
            var19_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 81
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var19_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var19_upvw then
                    var19_upvw:Disconnect()
                    var19_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 96
    --[[ Upvalues[1]:
        [1]: var7_upvw (read and write)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 103
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: Fov_upvr (readonly)
    ]]
    local tonumber_result1_3 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_3 then
        updateSliderPositionFromFov_upvr(tonumber_result1_3, true)
    else
        TextBox_upvr.Text = tostring(Fov_upvr.Value)
    end
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.FOV = Fov_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 123
        --[[ Upvalues[4]:
            [1]: Parent_upvr (readonly)
            [2]: TextBox_upvr (readonly)
            [3]: Fov_upvr (readonly)
            [4]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "FOV" then
            local tonumber_result1 = tonumber(arg2)
            if tonumber_result1 then
                local clamped_5 = math.clamp(tonumber_result1, 0, 361)
                Parent_upvr.Position = UDim2.new((clamped_5 - 0) / 361 * 0.803, 0, -0.192, 0)
                TextBox_upvr.Text = tostring(clamped_5)
                Fov_upvr.Value = clamped_5
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
else
    onConfigLoad_upvr = warn
    onConfigLoad_upvr("ConfigSystem не найдена! Настройка FOV не будет сохраняться.")
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FOV
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [number] = 361
        8 [number] = 0
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value

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
        14 [number] = 0
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOV

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = 0
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
        20 [string] = FOV

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = Fov
        6 [Instance] = TextBox

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
        14 [number] = 0
        15 [number] = 361
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = FOV

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

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = Fov

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = Fov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 361
        5 [number] = 0
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
        20 [string] = FOV

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = Fov
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = FOV
        2 [string] = tonumber
        4 [string] = math
        5 [string] = clamp
        7 [number] = 361
        8 [number] = 0
        9 [number] = 0.803
        10 [string] = UDim2
        11 [string] = new
        13 [number] = -0.192
        14 [string] = Position
        15 [string] = tostring
        17 [string] = Text
        18 [string] = Value

====================================================================================================
]]


----// XEClient/rage_GenericToggle_1769301735.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle4.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:41:50
-- Luau version 6, Types version 3
-- Time taken: 0.003574 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var6_upvw = false
local function setToggleEnabled_upvr(arg1, arg2) -- Line 13, Named "setToggleEnabled"
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
        _G.ConfigSystem.onSettingChanged("GenericToggle", var6_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 24
    --[[ Upvalues[2]:
        [1]: setToggleEnabled_upvr (readonly)
        [2]: var6_upvw (read and write)
    ]]
    setToggleEnabled_upvr(not var6_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.GenericToggle = var6_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 34
        --[[ Upvalues[7]:
            [1]: var6_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "GenericToggle" then
            var6_upvw = arg2
            if not var6_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle4.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = GenericToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = GenericToggle

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
        1 [string] = GenericToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

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
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = GenericToggle

====================================================================================================
]]

----// XEClient/rage_HeadEnabled_1769301580.lua
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


----// XEClient/rage_HitChanceSetting_1769301766.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:42:42
-- Luau version 6, Types version 3
-- Time taken: 0.010139 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = Parent_upvr_2.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local HitChance_upvr = Parent_upvr.Parent.Parent.Frame.Parent.Frame.HitChance
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: HitChance_upvr (readonly)
    ]]
    local clamped = math.clamp(arg1, 0, 100)
    Parent_upvr_2.Position = UDim2.new((clamped - 0) / 100 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(clamped)
    HitChance_upvr.Value = clamped
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("HitChanceSetting", clamped)
    end
end
local function updateSliderFromMouse_upvr() -- Line 44, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr_2 (readonly)
        [5]: HitChance_upvr (readonly)
        [6]: TextBox_upvr (readonly)
        [7]: var7_upvw (read and write)
    ]]
    local X = Parent_upvr.AbsoluteSize.X
    local var11
    if X <= 0 then
    else
        var11 = Parent_upvr.AbsolutePosition
        local X_2 = var11.X
        var11 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var13 = X_2 + 0 * X
        local var14 = X_2 + 0.803 * X
        if var11 < var13 then
            var11 = var13
        end
        if var14 < var11 then
        end
        local clamped_2 = math.clamp((var14 - X_2) / X, 0, 0.803)
        Parent_upvr_2.Position = UDim2.new(clamped_2, 0, -0.192, 0)
        local floored = math.floor(clamped_2 / 0.803 * 100 + 0)
        HitChance_upvr.Value = floored
        TextBox_upvr.Text = tostring(floored)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("HitChanceSetting", floored)
        end
    end
end
;(function() -- Line 76, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: HitChance_upvr (readonly)
        [2]: Parent_upvr_2 (readonly)
        [3]: TextBox_upvr (readonly)
    ]]
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.HitChanceSetting = HitChance_upvr.Value or 0
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 85
            --[[ Upvalues[4]:
                [1]: Parent_upvr_2 (copied, readonly)
                [2]: TextBox_upvr (copied, readonly)
                [3]: HitChance_upvr (copied, readonly)
                [4]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "HitChanceSetting" then
                local clamped_3 = math.clamp(arg2, 0, 100)
                Parent_upvr_2.Position = UDim2.new((clamped_3 - 0) / 100 * 0.803, 0, -0.192, 0)
                TextBox_upvr.Text = tostring(clamped_3)
                HitChance_upvr.Value = clamped_3
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.HitChanceSetting then
            local clamped_5 = math.clamp(_G.ConfigSystem.settings.HitChanceSetting, 0, 100)
            Parent_upvr_2.Position = UDim2.new((clamped_5 - 0) / 100 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_5)
            HitChance_upvr.Value = clamped_5
        else
            local clamped_4 = math.clamp(0, 0, 100)
            Parent_upvr_2.Position = UDim2.new((clamped_4 - 0) / 100 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(clamped_4)
            HitChance_upvr.Value = clamped_4
        end
    end
    onConfigLoad_upvr = 0
    onConfigLoad_upvr = math.clamp(onConfigLoad_upvr, 0, 100)
    local var22 = onConfigLoad_upvr
    Parent_upvr_2.Position = UDim2.new((var22 - 0) / 100 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(var22)
    HitChance_upvr.Value = var22
end)()
local var24_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 113
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr_2 (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var24_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr_2.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var24_upvw then
            var24_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 122
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var24_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var24_upvw then
                    var24_upvw:Disconnect()
                    var24_upvw = nil
                end
            end)
        end
    end
end)
local function _() -- Line 137, Named "saveOnMouseRelease"
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1 = tonumber(TextBox_upvr.Text)
        if tonumber_result1 then
            _G.ConfigSystem.onSettingChanged("HitChanceSetting", tonumber_result1)
        end
    end
end
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 148
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_5 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_5 then
                _G.ConfigSystem.onSettingChanged("HitChanceSetting", tonumber_result1_5)
            end
        end
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 156
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: HitChance_upvr (readonly)
    ]]
    local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_2 then
        updateSliderPositionFromFov_upvr(tonumber_result1_2, true)
    else
        TextBox_upvr.Text = tostring(HitChance_upvr.Value)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript

--[[
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
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = HitChanceSetting

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = onSettingChanged
        8 [string] = HitChanceSetting

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

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [number] = 0
        9 [string] = Value
        10 [string] = HitChanceSetting
        11 [string] = onConfigLoad
        12 [string] = math
        13 [string] = clamp
        15 [number] = 100
        16 [number] = 0.803
        17 [string] = UDim2
        18 [string] = new
        20 [number] = -0.192
        21 [string] = Position
        22 [string] = tostring
        24 [string] = Text

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
        14 [number] = 0
        15 [number] = 100
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = HitChanceSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 100
        5 [number] = 0
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
        20 [string] = HitChanceSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = HitChanceSetting

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

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = HitChance
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = HitChanceSetting
        2 [string] = math
        3 [string] = clamp
        5 [number] = 100
        6 [number] = 0
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [string] = tostring
        15 [string] = Text
        16 [string] = Value

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = HitChance
        6 [Instance] = TextBox
        7 [boolean] = false

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
        14 [number] = 0
        15 [number] = 100
        16 [string] = floor
        18 [string] = Value
        19 [string] = tostring
        21 [string] = Text
        22 [string] = _G
        24 [string] = ConfigSystem
        25 [string] = onSettingChanged
        26 [string] = HitChanceSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = HitChance

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = HitChance

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 100
        5 [number] = 0
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
        20 [string] = HitChanceSetting

====================================================================================================
]]


----// XEClient/rage_LegsSetting_1769301597.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton2.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:39:55
-- Luau version 6, Types version 3
-- Time taken: 0.004023 seconds

local var1_upvw = false
local TweenService_upvr = game:GetService("TweenService")
local Parent_upvr = script.Parent
local Legs_upvr = script.Parent.Parent.Parent.Parent.Parent.Legs
local function setToggleEnabled_upvr(arg1, arg2) -- Line 13, Named "setToggleEnabled"
    --[[ Upvalues[4]:
        [1]: var1_upvw (read and write)
        [2]: TweenService_upvr (readonly)
        [3]: Parent_upvr (readonly)
        [4]: Legs_upvr (readonly)
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
    if Legs_upvr then
        Legs_upvr.Value = var1_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("LegsSetting", var1_upvw)
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
        _G.ConfigSystem.settings.LegsSetting = var1_upvw
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 48
            --[[ Upvalues[2]:
                [1]: setToggleEnabled_upvr (copied, readonly)
                [2]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "LegsSetting" then
                setToggleEnabled_upvr(arg2, false)
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.LegsSetting ~= nil then
            setToggleEnabled_upvr(_G.ConfigSystem.settings.LegsSetting, false)
        end
    end
end)()

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.spisok.Frame.ScrollingFrame.TextButton2.LocalScript

--[[
Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [string] = LegsSetting
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
        22 [string] = LegsSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggleEnabled
        2 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = LegsSetting

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
        3 [Instance] = TextButton2
        4 [Instance] = Legs

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
        22 [string] = LegsSetting

====================================================================================================
]]


----// XEClient/rage_PredictionToggle_1769301694.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle3.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:40:55
-- Luau version 6, Types version 3
-- Time taken: 0.004626 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local Prediction_upvr = script.Parent.Parent:FindFirstChild("Prediction")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function setToggleEnabled_upvr(arg1, arg2) -- Line 14, Named "setToggleEnabled"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: Prediction_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var8
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var8 = udim2_upvr
        return var8
    end
    if not var7_upvw or not INLINED() then
        var8 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var8;
    }):Play()
    if Prediction_upvr then
        Prediction_upvr.Value = var7_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("PredictionToggle", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 31
    --[[ Upvalues[2]:
        [1]: setToggleEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setToggleEnabled_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.PredictionToggle = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 41
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: Prediction_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "PredictionToggle" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if Prediction_upvr then
                Prediction_upvr.Value = var7_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle3.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = PredictionToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = PredictionToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggleEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = Prediction
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = PredictionToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = Prediction

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = PredictionToggle

====================================================================================================
]]

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame.toggle3.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = PredictionToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = PredictionToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setToggleEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = Prediction
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = PredictionToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: setToggleEnabled

Function Upvalues: setToggleEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = Prediction

Function Constants: setToggleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = PredictionToggle

====================================================================================================
]]


----// XEClient/rage_TorsoSetting_1769301588.lua
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


----// XEClient/rage_doubletap_1769301882.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle3.LocalScript
-- Took 0.29s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:44:18
-- Luau version 6, Types version 3
-- Time taken: 0.004398 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local DT_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("DT")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function updateVisuals_upvr(arg1, arg2) -- Line 15, Named "updateVisuals"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: DT_upvr (readonly)
        [3]: udim2_upvr (readonly)
        [4]: udim2_upvr_2 (readonly)
        [5]: TweenService_upvr (readonly)
        [6]: Frame2_upvr (readonly)
        [7]: TweenInfo_new_result1_upvr (readonly)
    ]]
    local var8
    if var8 then
    else
        var8 = true
        var7_upvw = var8
        var8 = DT_upvr.Value
        if var8 ~= arg1 then
            var8 = DT_upvr
            var8.Value = arg1
        end
        local function INLINED() -- Internal function, doesn't exist in bytecode
            var8 = udim2_upvr
            return var8
        end
        if not arg1 or not INLINED() then
            var8 = udim2_upvr_2
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var8;
        }):Play()
        if arg2 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("doubletap", arg1)
        end
        var7_upvw = false
    end
end
DT_upvr:GetPropertyChangedSignal("Value"):Connect(function() -- Line 35
    --[[ Upvalues[2]:
        [1]: updateVisuals_upvr (readonly)
        [2]: DT_upvr (readonly)
    ]]
    updateVisuals_upvr(DT_upvr.Value, true)
end)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 40
    --[[ Upvalues[1]:
        [1]: DT_upvr (readonly)
    ]]
    DT_upvr.Value = not DT_upvr.Value
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.doubletap = DT_upvr.Value
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 50
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: DT_upvr (readonly)
            [3]: udim2_upvr (readonly)
            [4]: udim2_upvr_2 (readonly)
            [5]: TweenService_upvr (readonly)
            [6]: Frame2_upvr (readonly)
            [7]: TweenInfo_new_result1_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "doubletap" then
            var7_upvw = true
            DT_upvr.Value = arg2
            if not arg2 or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            var7_upvw = false
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
else
    onConfigLoad_upvr = warn
    onConfigLoad_upvr("ConfigSystem не найдена! Настройка BAim не будет сохраняться.")
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle3.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = doubletap
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: updateVisuals

Function Upvalues: updateVisuals

Function Constants: updateVisuals
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = doubletap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = DT
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = doubletap
        2 [string] = Value
        3 [string] = Position
        5 [string] = Create
        6 [string] = Play

====================================================================================================

Function Dump: updateVisuals

Function Upvalues: updateVisuals
        1 [boolean] = false
        2 [Instance] = DT
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [UDim2] = {0, 0}, {-0.191819623, 0}
        5 [Instance] = TweenService
        6 [Instance] = Frame2
        7 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: updateVisuals
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = doubletap

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = DT

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = updateVisuals
        2 [Instance] = DT

Function Constants: Unknown Name
        1 [string] = Value

====================================================================================================
]]


----// XEClient/rage_unknown_1769301844.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle2.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:43:34
-- Luau version 6, Types version 3
-- Time taken: 0.001975 seconds

local Frame2_upvr = script.Parent.Frame2
local ShotTP_upvr = script.Parent.Parent.Parent.Frame:WaitForChild("ShotTP")
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 10
    --[[ Upvalues[6]:
        [1]: ShotTP_upvr (readonly)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    local var8 = not ShotTP_upvr.Value
    ShotTP_upvr.Value = var8
    local var9
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var9 = udim2_upvr
        return var9
    end
    if not var8 or not INLINED() then
        var9 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var9;
    }):Play()
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.rage.ScrollingFrame.Frame1.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = ShotTP
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: Unknown Name
        1 [string] = Value
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================
]]


----// XEClient/visual_AspectRatioSliderSetting_1769302595.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:56:34
-- Luau version 6, Types version 3
-- Time taken: 0.012239 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local Parent = script.Parent
local Parent_upvr_2 = script.Parent.Parent
local Parent_upvr = Parent_upvr_2.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local AspectRatio_upvr = Parent_upvr.Parent.AspectRatio
local var7_upvw = false
local var8_upvw = 0
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 26, Named "updateSliderPositionFromFov"
    --[[ Upvalues[3]:
        [1]: Parent_upvr_2 (readonly)
        [2]: TextBox_upvr (readonly)
        [3]: AspectRatio_upvr (readonly)
    ]]
    local clamped_4 = math.clamp(arg1, 0.1, 1.2)
    Parent_upvr_2.Position = UDim2.new((clamped_4 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
    local var10 = math.floor(clamped_4 * 10 + 0.5) / 10
    TextBox_upvr.Text = tostring(var10)
    AspectRatio_upvr.Value = var10
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", var10)
    end
end
local function updateSliderFromMouse_upvr() -- Line 46, Named "updateSliderFromMouse"
    --[[ Upvalues[7]:
        [1]: Parent_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_upvr_2 (readonly)
        [5]: AspectRatio_upvr (readonly)
        [6]: TextBox_upvr (readonly)
        [7]: var7_upvw (read and write)
    ]]
    local X = Parent_upvr.AbsoluteSize.X
    local var12
    if X <= 0 then
    else
        var12 = Parent_upvr.AbsolutePosition
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
        Parent_upvr_2.Position = UDim2.new(clamped, 0, -0.192, 0)
        local var17 = math.floor((clamped / 0.803 * 1.0999999999999999 + 0.1) * 10 + 0.5) / 10
        AspectRatio_upvr.Value = var17
        TextBox_upvr.Text = tostring(var17)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", var17)
        end
    end
end
;(function() -- Line 81, Named "initializeWithConfig"
    --[[ Upvalues[3]:
        [1]: AspectRatio_upvr (readonly)
        [2]: Parent_upvr_2 (readonly)
        [3]: TextBox_upvr (readonly)
    ]]
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.AspectRatioSliderSetting = AspectRatio_upvr.Value or 0.1
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 90
            --[[ Upvalues[4]:
                [1]: Parent_upvr_2 (copied, readonly)
                [2]: TextBox_upvr (copied, readonly)
                [3]: AspectRatio_upvr (copied, readonly)
                [4]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "AspectRatioSliderSetting" then
                local clamped_5 = math.clamp(arg2, 0.1, 1.2)
                Parent_upvr_2.Position = UDim2.new((clamped_5 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
                local var21 = math.floor(clamped_5 * 10 + 0.5) / 10
                TextBox_upvr.Text = tostring(var21)
                AspectRatio_upvr.Value = var21
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.AspectRatioSliderSetting then
            local clamped_2 = math.clamp(_G.ConfigSystem.settings.AspectRatioSliderSetting, 0.1, 1.2)
            Parent_upvr_2.Position = UDim2.new((clamped_2 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
            local var23 = math.floor(clamped_2 * 10 + 0.5) / 10
            TextBox_upvr.Text = tostring(var23)
            AspectRatio_upvr.Value = var23
        else
            local clamped_3 = math.clamp(0.1, 0.1, 1.2)
            Parent_upvr_2.Position = UDim2.new((clamped_3 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
            local var25 = math.floor(clamped_3 * 10 + 0.5) / 10
            TextBox_upvr.Text = tostring(var25)
            AspectRatio_upvr.Value = var25
        end
    end
    onConfigLoad_upvr = 0.1
    onConfigLoad_upvr = math.clamp(onConfigLoad_upvr, 0.1, 1.2)
    local var26 = onConfigLoad_upvr
    Parent_upvr_2.Position = UDim2.new((var26 - 0.1) / 1.0999999999999999 * 0.803, 0, -0.192, 0)
    var26 = math.floor(var26 * 10 + 0.5) / 10
    local var27 = var26
    TextBox_upvr.Text = tostring(var27)
    AspectRatio_upvr.Value = var27
end)()
local function _() -- Line 119, Named "saveOnMouseRelease"
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1 = tonumber(TextBox_upvr.Text)
        if tonumber_result1 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", tonumber_result1)
        end
    end
end
local var31_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 130
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_upvr_2 (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var31_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_upvr_2.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var31_upvw then
            var31_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 139
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var31_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var31_upvw then
                    var31_upvw:Disconnect()
                    var31_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 154
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_2 and _G.ConfigSystem then
                _G.ConfigSystem.onSettingChanged("AspectRatioSliderSetting", tonumber_result1_2)
            end
        end
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 162
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: AspectRatio_upvr (readonly)
    ]]
    local tonumber_result1_3 = tonumber(TextBox_upvr.Text)
    if tonumber_result1_3 then
        updateSliderPositionFromFov_upvr(tonumber_result1_3, true)
    else
        TextBox_upvr.Text = tostring(AspectRatio_upvr.Value)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.slidebar.Frame2.TextButton.LocalScript

--[[
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
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = AspectRatioSliderSetting

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

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = onSettingChanged
        8 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [number] = 0.1
        9 [string] = Value
        10 [string] = AspectRatioSliderSetting
        11 [string] = onConfigLoad
        12 [number] = 1.2
        13 [string] = math
        14 [string] = clamp
        16 [number] = 1.0999999999999999
        17 [number] = 0.803
        18 [string] = UDim2
        19 [string] = new
        21 [number] = -0.192
        22 [string] = Position
        23 [number] = 10
        24 [number] = 0.5
        25 [string] = floor
        27 [string] = tostring
        29 [string] = Text

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
        14 [number] = 0.1
        15 [number] = 1.0999999999999999
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Value
        21 [string] = tostring
        23 [string] = Text
        24 [string] = _G
        26 [string] = ConfigSystem
        27 [string] = onSettingChanged
        28 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [number] = 0.1
        2 [number] = 1.2
        3 [string] = math
        4 [string] = clamp
        6 [number] = 1.0999999999999999
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [number] = 10
        14 [number] = 0.5
        15 [string] = floor
        17 [string] = tostring
        19 [string] = Text
        20 [string] = Value
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = AspectRatioSliderSetting

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

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = AspectRatio
        4 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = AspectRatioSliderSetting
        2 [number] = 0.1
        3 [number] = 1.2
        4 [string] = math
        5 [string] = clamp
        7 [number] = 1.0999999999999999
        8 [number] = 0.803
        9 [string] = UDim2
        10 [string] = new
        12 [number] = -0.192
        13 [string] = Position
        14 [number] = 10
        15 [number] = 0.5
        16 [string] = floor
        18 [string] = tostring
        20 [string] = Text
        21 [string] = Value

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [Instance] = AspectRatio
        6 [Instance] = TextBox
        7 [boolean] = false

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
        14 [number] = 0.1
        15 [number] = 1.0999999999999999
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Value
        21 [string] = tostring
        23 [string] = Text
        24 [string] = _G
        26 [string] = ConfigSystem
        27 [string] = onSettingChanged
        28 [string] = AspectRatioSliderSetting

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [Instance] = AspectRatio

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = Value
        5 [string] = tostring

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [Instance] = Frame2
        2 [Instance] = TextBox
        3 [Instance] = AspectRatio

Function Constants: updateSliderPositionFromFov
        1 [number] = 0.1
        2 [number] = 1.2
        3 [string] = math
        4 [string] = clamp
        6 [number] = 1.0999999999999999
        7 [number] = 0.803
        8 [string] = UDim2
        9 [string] = new
        11 [number] = -0.192
        12 [string] = Position
        13 [number] = 10
        14 [number] = 0.5
        15 [string] = floor
        17 [string] = tostring
        19 [string] = Text
        20 [string] = Value
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = AspectRatioSliderSetting

====================================================================================================
]]


----// XEClient/visual_AspectRatioToggleSetting_1769302582.lua
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


----// XEClient/visual_BackTrackLocal_1769302626.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle5.LocalScript
-- Took 0.36s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:57:03
-- Luau version 6, Types version 3
-- Time taken: 0.060589 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local BacktrackGhosts_upvr = workspace:FindFirstChild("BacktrackGhosts")
if not BacktrackGhosts_upvr then
    BacktrackGhosts_upvr = Instance.new("Folder", workspace)
end
BacktrackGhosts_upvr.Name = "BacktrackGhosts"
local var9_upvw
local var10_upvw
local var11_upvw
local btl_upvr = game:GetService("ReplicatedStorage"):WaitForChild("btl")
local function _() -- Line 34, Named "isFakeLagEnabled"
    if _G.ConfigSystem then
        local settings_2 = _G.ConfigSystem.settings
        if settings_2 then
            if _G.ConfigSystem.settings.FakeLag ~= true then
                settings_2 = false
            else
                settings_2 = true
            end
            return settings_2
        end
    end
    return false
end
local function _() -- Line 44, Named "clearGhost"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: BacktrackGhosts_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Destroy()
        var9_upvw = nil
    end
    var10_upvw = nil
    BacktrackGhosts_upvr:ClearAllChildren()
end
local function createGhost_upvr(arg1) -- Line 53, Named "createGhost"
    --[[ Upvalues[2]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: BacktrackGhosts_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local Character_3 = LocalPlayer_upvr.Character
    local var96
    if not Character_3 then
        return nil
    end
    var96 = "HumanoidRootPart"
    if not Character_3:FindFirstChild(var96) then
        return nil
    end
    Character_3.Archivable = true
    local clone_2 = Character_3:Clone()
    var96 = false
    Character_3.Archivable = var96
    if not clone_2 then
        var96 = nil
        return var96
    end
    var96 = LocalPlayer_upvr.Name.."_Ghost"
    clone_2.Name = var96
    var96 = pairs(clone_2:GetDescendants())
    local pairs_result1, pairs_result2_4, pairs_result3 = pairs(clone_2:GetDescendants())
    for _, v in pairs_result1, pairs_result2_4, pairs_result3 do
        if v:IsA("Script") or v:IsA("LocalScript") or v:IsA("Sound") or v:IsA("BillboardGui") or v:IsA("Humanoid") or v:IsA("AlignPosition") or v:IsA("AlignOrientation") or v:IsA("BodyMover") or v:IsA("BodyGyro") or v:IsA("BodyVelocity") or v:IsA("BodyPosition") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") or v:IsA("Animator") then
            v:Destroy()
        end
    end
    pairs_result1 = pairs(clone_2:GetDescendants())
    local pairs_result1_2, pairs_result2_5, pairs_result3_3 = pairs(clone_2:GetDescendants())
    for _, v_2 in pairs_result1_2, pairs_result2_5, pairs_result3_3 do
        if v_2:IsA("Motor6D") or v_2:IsA("Weld") or v_2:IsA("WeldConstraint") or v_2:IsA("HingeConstraint") or v_2:IsA("BallSocketConstraint") or v_2:IsA("Constraint") or v_2:IsA("JointInstance") then
            v_2:Destroy()
        end
    end
    pairs_result1_2 = Color3.fromRGB(0, 255, 0)
    if script.Parent.Parent:FindFirstChild("btcolor") then
        pairs_result1_2 = script.Parent.Parent.btcolor.Value
    end
    for _, v_3 in pairs(clone_2:GetDescendants()) do
        if v_3:IsA("BasePart") then
            v_3.Anchored = true
            v_3.CanCollide = false
            v_3.CanTouch = false
            v_3.CanQuery = false
            v_3.Massless = true
            v_3.Material = Enum.Material.ForceField
            v_3.Transparency = 0.7
            v_3.Color = pairs_result1_2
            v_3.CastShadow = false
            if v_3.Name == "Head" then
                local face = v_3:FindFirstChild("face")
                if face then
                    face:Destroy()
                end
            end
        end
    end
    if not true then
        clone_2:Destroy()
        return nil
    end
    for _, v_4 in pairs(clone_2:GetChildren()) do
        if v_4:IsA("Accessory") then
            v_4:Destroy()
        end
    end
    clone_2.Parent = BacktrackGhosts_upvr
    return clone_2
end
local function updateGhostPose_upvr(arg1, arg2) -- Line 135, Named "updateGhostPose"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var9_upvw (read and write)
        [4]: var10_upvw (read and write)
        [5]: BacktrackGhosts_upvr (readonly)
        [6]: var11_upvw (read and write)
        [7]: createGhost_upvr (readonly)
    ]]
    if not var7_upvw then
    else
        local Character_2 = LocalPlayer_upvr.Character
        if not Character_2 then return end
        local Humanoid_2 = Character_2:FindFirstChild("Humanoid")
        if Humanoid_2 and Humanoid_2.Health <= 0 then
            if var9_upvw then
                var9_upvw:Destroy()
                var9_upvw = nil
            end
            var10_upvw = nil
            BacktrackGhosts_upvr:ClearAllChildren()
            return
        end
        if not var9_upvw or var10_upvw ~= Character_2 or var11_upvw ~= arg2 or not var9_upvw.Parent then
            if var9_upvw then
                var9_upvw:Destroy()
                var9_upvw = nil
            end
            var10_upvw = nil
            BacktrackGhosts_upvr:ClearAllChildren()
            var9_upvw = createGhost_upvr(arg2)
            if var9_upvw then
                var10_upvw = Character_2
                var11_upvw = arg2
            else
                return
            end
        end
        local HumanoidRootPart_2 = Character_2:FindFirstChild("HumanoidRootPart")
        if not HumanoidRootPart_2 then return end
        for _, v_5 in pairs(var9_upvw:GetDescendants()) do
            if v_5:IsA("BasePart") then
                local SOME = Character_2:FindFirstChild(v_5.Name, true)
                if SOME and SOME:IsA("BasePart") then
                    v_5.CFrame = arg1 * HumanoidRootPart_2.CFrame:Inverse() * SOME.CFrame
                end
            end
        end
    end
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 182
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: BacktrackGhosts_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Destroy()
        var9_upvw = nil
    end
    var10_upvw = nil
    BacktrackGhosts_upvr:ClearAllChildren()
    task.spawn(function() -- Line 185
        --[[ Upvalues[1]:
            [1]: arg1 (readonly)
        ]]
        arg1:WaitForChild("HumanoidRootPart", 10)
    end)
end)
LocalPlayer_upvr.CharacterRemoving:Connect(function() -- Line 190
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: var10_upvw (read and write)
        [3]: BacktrackGhosts_upvr (readonly)
    ]]
    if var9_upvw then
        var9_upvw:Destroy()
        var9_upvw = nil
    end
    var10_upvw = nil
    BacktrackGhosts_upvr:ClearAllChildren()
end)
local var135_upvw = 0
game:GetService("RunService").Heartbeat:Connect(function() -- Line 198
    --[[ Upvalues[4]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: var135_upvw (read and write)
        [4]: btl_upvr (readonly)
    ]]
    if var7_upvw and LocalPlayer_upvr.Character and LocalPlayer_upvr.Character:FindFirstChild("HumanoidRootPart") and 0.05 < tick() - var135_upvw then
        -- KONSTANTERROR: Expression was reused, decompilation is incorrect
        var135_upvw = tick()
        local var136
        if _G.ConfigSystem and _G.ConfigSystem.settings then
            if _G.ConfigSystem.settings.FakeLag ~= true then
                var136 = false
            else
                var136 = true
            end
        else
            var136 = false
        end
        btl_upvr:FireServer(var136)
    end
end)
btl_upvr.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 214
    --[[ Upvalues[3]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: updateGhostPose_upvr (readonly)
    ]]
    local var141
    if var7_upvw then
        if not arg2 then
            if arg3 then
                local Character_5 = LocalPlayer_upvr.Character
                if Character_5 then
                    local HumanoidRootPart = Character_5:FindFirstChild("HumanoidRootPart")
                    if HumanoidRootPart then
                        var141 = HumanoidRootPart.CFrame - HumanoidRootPart.AssemblyLinearVelocity * arg3
                    end
                end
            end
        end
        updateGhostPose_upvr(var141, arg2)
    end
end)
local function setBacktrackEnabled_upvr(arg1, arg2) -- Line 234, Named "setBacktrackEnabled"
    --[[ Upvalues[10]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: var9_upvw (read and write)
        [8]: var10_upvw (read and write)
        [9]: BacktrackGhosts_upvr (readonly)
        [10]: var11_upvw (read and write)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    var7_upvw = arg1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 20 start (CF ANALYSIS FAILED)
    local var144 = udim2_upvr_2
    if not var144 then
        -- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
        var144 = udim2_upvr
        -- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var144;
    }):Play()
    if not var7_upvw then
        if var9_upvw then
            var9_upvw:Destroy()
            var9_upvw = nil
        end
        var10_upvw = nil
        BacktrackGhosts_upvr:ClearAllChildren()
        var11_upvw = nil
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("BackTrackLocal", var7_upvw)
    end
    -- KONSTANTERROR: [3] 4. Error Block 20 end (CF ANALYSIS FAILED)
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 249
    --[[ Upvalues[2]:
        [1]: setBacktrackEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setBacktrackEnabled_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.BackTrackLocal = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 258
        --[[ Upvalues[11]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: var9_upvw (read and write)
            [8]: var10_upvw (read and write)
            [9]: BacktrackGhosts_upvr (readonly)
            [10]: var11_upvw (read and write)
            [11]: onConfigLoad_upvr (readonly)
        ]]
        -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [5] 5. Error Block 19 start (CF ANALYSIS FAILED)
        local var149 = udim2_upvr_2
        if not var149 then
            -- KONSTANTERROR: [7] 7. Error Block 4 start (CF ANALYSIS FAILED)
            var149 = udim2_upvr
            -- KONSTANTERROR: [7] 7. Error Block 4 end (CF ANALYSIS FAILED)
        end
        TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
            Position = var149;
        }):Play()
        if not var7_upvw then
            if var9_upvw then
                var9_upvw:Destroy()
                var9_upvw = nil
            end
            var10_upvw = nil
            BacktrackGhosts_upvr:ClearAllChildren()
            var11_upvw = nil
        end
        -- KONSTANTERROR: [5] 5. Error Block 19 end (CF ANALYSIS FAILED)
        -- KONSTANTERROR: [38] 33. Error Block 18 start (CF ANALYSIS FAILED)
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
        -- KONSTANTERROR: [38] 33. Error Block 18 end (CF ANALYSIS FAILED)
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame1.toggle5.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = BackTrackLocal
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Destroy
        7 [string] = ClearAllChildren

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setBacktrackEnabled

Function Upvalues: setBacktrackEnabled

Function Constants: setBacktrackEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = onSettingChanged
        11 [string] = BackTrackLocal

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = AssemblyLinearVelocity
        5 [string] = CFrame

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = tick
        6 [number] = 0.05
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = settings
        11 [string] = FakeLag
        12 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: updateGhostPose

Function Upvalues: updateGhostPose

Function Constants: updateGhostPose
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = Parent
        8 [string] = HumanoidRootPart
        9 [string] = CFrame
        10 [string] = Inverse
        11 [string] = pairs
        13 [string] = GetDescendants
        14 [string] = BasePart
        15 [string] = IsA
        16 [string] = Name

====================================================================================================

Function Dump: createGhost

Function Upvalues: createGhost

Function Constants: createGhost
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Archivable
        5 [string] = Clone
        6 [string] = Name
        7 [string] = _Ghost
        8 [string] = pairs
        10 [string] = GetDescendants
        11 [string] = Script
        12 [string] = IsA
        13 [string] = LocalScript
        14 [string] = Sound
        15 [string] = BillboardGui
        16 [string] = Humanoid
        17 [string] = AlignPosition
        18 [string] = AlignOrientation
        19 [string] = BodyMover
        20 [string] = BodyGyro
        21 [string] = BodyVelocity
        22 [string] = BodyPosition
        23 [string] = BodyForce
        24 [string] = VectorForce
        25 [string] = LineForce
        26 [string] = Animator
        27 [string] = Destroy
        28 [string] = Motor6D
        29 [string] = Weld
        30 [string] = WeldConstraint
        31 [string] = HingeConstraint
        32 [string] = BallSocketConstraint
        33 [string] = Constraint
        34 [string] = JointInstance
        35 [string] = Color3
        36 [string] = fromRGB
        38 [string] = script
        40 [string] = Parent
        41 [string] = btcolor
        42 [string] = Value
        43 [string] = BasePart
        44 [string] = Anchored
        45 [string] = CanCollide
        46 [string] = CanTouch
        47 [string] = CanQuery
        48 [string] = Massless
        49 [string] = Enum
        50 [string] = Material
        51 [string] = ForceField
        53 [number] = 0.7
        54 [string] = Transparency
        55 [string] = Color
        56 [string] = CastShadow
        57 [string] = Head
        58 [string] = face
        59 [string] = GetChildren
        60 [string] = Accessory

====================================================================================================

Function Dump: clearGhost

Function Upvalues: clearGhost

Function Constants: clearGhost
        1 [string] = Destroy
        2 [string] = ClearAllChildren

====================================================================================================

Function Dump: isFakeLagEnabled

Function Upvalues: isFakeLagEnabled

Function Constants: isFakeLagEnabled
        1 [string] = _G
        3 [string] = ConfigSystem
        4 [string] = settings
        5 [string] = FakeLag

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = quit_xyz
        3 [number] = 0
        4 [Instance] = btl

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = tick
        6 [number] = 0.05
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = settings
        11 [string] = FakeLag
        12 [string] = FireServer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setBacktrackEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = quit_xyz
        3 [function] = updateGhostPose

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = AssemblyLinearVelocity
        5 [string] = CFrame

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        3 [Instance] = BacktrackGhosts

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        3 [Instance] = BacktrackGhosts

Function Constants: Unknown Name
        1 [string] = Destroy
        2 [string] = ClearAllChildren
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: updateGhostPose

Function Upvalues: updateGhostPose
        1 [boolean] = false
        2 [Instance] = quit_xyz
        5 [Instance] = BacktrackGhosts
        7 [function] = createGhost

Function Constants: updateGhostPose
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = Health
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = Parent
        8 [string] = HumanoidRootPart
        9 [string] = CFrame
        10 [string] = Inverse
        11 [string] = pairs
        13 [string] = GetDescendants
        14 [string] = BasePart
        15 [string] = IsA
        16 [string] = Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        9 [Instance] = BacktrackGhosts
        11 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = BackTrackLocal
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Destroy
        7 [string] = ClearAllChildren

====================================================================================================

Function Dump: setBacktrackEnabled

Function Upvalues: setBacktrackEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        9 [Instance] = BacktrackGhosts

Function Constants: setBacktrackEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Destroy
        6 [string] = ClearAllChildren
        7 [string] = _G
        9 [string] = ConfigSystem
        10 [string] = onSettingChanged
        11 [string] = BackTrackLocal

====================================================================================================

Function Dump: createGhost

Function Upvalues: createGhost
        1 [Instance] = quit_xyz
        2 [Instance] = BacktrackGhosts

Function Constants: createGhost
        1 [string] = Character
        2 [string] = HumanoidRootPart
        3 [string] = FindFirstChild
        4 [string] = Archivable
        5 [string] = Clone
        6 [string] = Name
        7 [string] = _Ghost
        8 [string] = pairs
        10 [string] = GetDescendants
        11 [string] = Script
        12 [string] = IsA
        13 [string] = LocalScript
        14 [string] = Sound
        15 [string] = BillboardGui
        16 [string] = Humanoid
        17 [string] = AlignPosition
        18 [string] = AlignOrientation
        19 [string] = BodyMover
        20 [string] = BodyGyro
        21 [string] = BodyVelocity
        22 [string] = BodyPosition
        23 [string] = BodyForce
        24 [string] = VectorForce
        25 [string] = LineForce
        26 [string] = Animator
        27 [string] = Destroy
        28 [string] = Motor6D
        29 [string] = Weld
        30 [string] = WeldConstraint
        31 [string] = HingeConstraint
        32 [string] = BallSocketConstraint
        33 [string] = Constraint
        34 [string] = JointInstance
        35 [string] = Color3
        36 [string] = fromRGB
        38 [string] = script
        40 [string] = Parent
        41 [string] = btcolor
        42 [string] = Value
        43 [string] = BasePart
        44 [string] = Anchored
        45 [string] = CanCollide
        46 [string] = CanTouch
        47 [string] = CanQuery
        48 [string] = Massless
        49 [string] = Enum
        50 [string] = Material
        51 [string] = ForceField
        52 [EnumItem] = Enum.Material.ForceField
        53 [number] = 0.7
        54 [string] = Transparency
        55 [string] = Color
        56 [string] = CastShadow
        57 [string] = Head
        58 [string] = face
        59 [string] = GetChildren
        60 [string] = Accessory

====================================================================================================
]]


----// XEClient/visual_Blur_1769302478.lua
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


----// XEClient/visual_Fovchanger_1769302418.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.slidebar.Frame2.TextButton.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:53:36
-- Luau version 6, Types version 3
-- Time taken: 0.016339 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local CurrentCamera_upvw = workspace.CurrentCamera
local Parent = script.Parent
local Parent_2_upvr = script.Parent.Parent
local TextBox_upvr = Parent.Parent.Parent.TextBox
local var7_upvw = false
local var8_upvw = 0
local var9_upvw = 70
local function updateSliderPositionFromFov_upvr(arg1, arg2) -- Line 31, Named "updateSliderPositionFromFov"
    --[[ Upvalues[4]:
        [1]: var9_upvw (read and write)
        [2]: Parent_2_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: CurrentCamera_upvw (read and write)
    ]]
    local var10 = math.floor(math.clamp(arg1, 1, 121) * 10 + 0.5) / 10
    var9_upvw = var10
    Parent_2_upvr.Position = UDim2.new((var10 - 1) / 120 * 0.803, 0, -0.192, 0)
    TextBox_upvr.Text = tostring(var10)
    if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
        CurrentCamera_upvw.FieldOfView = var10
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("Fovchanger", var10)
    end
end
local function _() -- Line 54, Named "applyFovToCamera"
    --[[ Upvalues[2]:
        [1]: CurrentCamera_upvw (read and write)
        [2]: var9_upvw (read and write)
    ]]
    if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
        CurrentCamera_upvw.FieldOfView = var9_upvw
    end
end
local Parent_3_upvr = Parent_2_upvr.Parent
local function updateSliderFromMouse_upvr() -- Line 61, Named "updateSliderFromMouse"
    --[[ Upvalues[8]:
        [1]: Parent_3_upvr (readonly)
        [2]: UserInputService_upvr (readonly)
        [3]: var8_upvw (read and write)
        [4]: Parent_2_upvr (readonly)
        [5]: var9_upvw (read and write)
        [6]: CurrentCamera_upvw (read and write)
        [7]: TextBox_upvr (readonly)
        [8]: var7_upvw (read and write)
    ]]
    local X_2 = Parent_3_upvr.AbsoluteSize.X
    local var13
    if X_2 <= 0 then
    else
        var13 = Parent_3_upvr.AbsolutePosition
        local X = var13.X
        var13 = UserInputService_upvr:GetMouseLocation().X - var8_upvw
        local var15 = X + 0 * X_2
        local var16 = X + 0.803 * X_2
        if var13 < var15 then
            var13 = var15
        end
        if var16 < var13 then
        end
        local clamped = math.clamp((var16 - X) / X_2, 0, 0.803)
        Parent_2_upvr.Position = UDim2.new(clamped, 0, -0.192, 0)
        local var18 = math.floor((clamped / 0.803 * 120 + 1) * 10 + 0.5) / 10
        var9_upvw = var18
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var18
        end
        TextBox_upvr.Text = tostring(var18)
        if var7_upvw and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("Fovchanger", var18)
        end
    end
end
local function setupCameraWatcher_upvr() -- Line 97, Named "setupCameraWatcher"
    --[[ Upvalues[3]:
        [1]: CurrentCamera_upvw (read and write)
        [2]: var7_upvw (read and write)
        [3]: var9_upvw (read and write)
    ]]
    if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
        local any_Connect_result1_upvw = CurrentCamera_upvw:GetPropertyChangedSignal("FieldOfView"):Connect(function() -- Line 100
            --[[ Upvalues[3]:
                [1]: var7_upvw (copied, read and write)
                [2]: CurrentCamera_upvw (copied, read and write)
                [3]: var9_upvw (copied, read and write)
            ]]
            if not var7_upvw and 0.1 < math.abs(CurrentCamera_upvw.FieldOfView - var9_upvw) then
                task.wait(0.1)
                if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                    CurrentCamera_upvw.FieldOfView = var9_upvw
                end
            end
        end)
        CurrentCamera_upvw.AncestryChanged:Connect(function() -- Line 111
            --[[ Upvalues[2]:
                [1]: CurrentCamera_upvw (copied, read and write)
                [2]: any_Connect_result1_upvw (read and write)
            ]]
            if not CurrentCamera_upvw.Parent and any_Connect_result1_upvw then
                any_Connect_result1_upvw:Disconnect()
            end
        end)
    end
end
local function _() -- Line 120, Named "setupRespawnWatcher"
    --[[ Upvalues[4]:
        [1]: LocalPlayer_upvr (readonly)
        [2]: CurrentCamera_upvw (read and write)
        [3]: var9_upvw (read and write)
        [4]: setupCameraWatcher_upvr (readonly)
    ]]
    LocalPlayer_upvr.CharacterAdded:Connect(function() -- Line 121
        --[[ Upvalues[3]:
            [1]: CurrentCamera_upvw (copied, read and write)
            [2]: var9_upvw (copied, read and write)
            [3]: setupCameraWatcher_upvr (copied, readonly)
        ]]
        task.wait(0.5)
        CurrentCamera_upvw = workspace.CurrentCamera
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var9_upvw
        end
        setupCameraWatcher_upvr()
    end)
end
;(function() -- Line 130, Named "initializeWithConfig"
    --[[ Upvalues[6]:
        [1]: var9_upvw (read and write)
        [2]: Parent_2_upvr (readonly)
        [3]: TextBox_upvr (readonly)
        [4]: CurrentCamera_upvw (read and write)
        [5]: setupCameraWatcher_upvr (readonly)
        [6]: LocalPlayer_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
    task.wait(1)
    if _G.ConfigSystem then
        _G.ConfigSystem.settings.Fovchanger = 70
        local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
        _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 137
            --[[ Upvalues[5]:
                [1]: var9_upvw (copied, read and write)
                [2]: Parent_2_upvr (copied, readonly)
                [3]: TextBox_upvr (copied, readonly)
                [4]: CurrentCamera_upvw (copied, read and write)
                [5]: onConfigLoad_upvr (readonly)
            ]]
            if arg1 == "Fovchanger" then
                local var26 = math.floor(math.clamp(arg2, 1, 121) * 10 + 0.5) / 10
                var9_upvw = var26
                Parent_2_upvr.Position = UDim2.new((var26 - 1) / 120 * 0.803, 0, -0.192, 0)
                TextBox_upvr.Text = tostring(var26)
                if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                    CurrentCamera_upvw.FieldOfView = var26
                end
            end
            if onConfigLoad_upvr then
                onConfigLoad_upvr(arg1, arg2)
            end
        end
        if _G.ConfigSystem.settings.Fovchanger then
            local var27 = math.floor(math.clamp(_G.ConfigSystem.settings.Fovchanger, 1, 121) * 10 + 0.5) / 10
            var9_upvw = var27
            Parent_2_upvr.Position = UDim2.new((var27 - 1) / 120 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(var27)
            if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                CurrentCamera_upvw.FieldOfView = var27
                -- KONSTANTWARNING: GOTO [199] #152
            end
        else
            local var28 = math.floor(math.clamp(70, 1, 121) * 10 + 0.5) / 10
            var9_upvw = var28
            Parent_2_upvr.Position = UDim2.new((var28 - 1) / 120 * 0.803, 0, -0.192, 0)
            TextBox_upvr.Text = tostring(var28)
            if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
                CurrentCamera_upvw.FieldOfView = var28
                -- KONSTANTWARNING: GOTO [199] #152
            end
        end
    else
        onConfigLoad_upvr = 70
        onConfigLoad_upvr = math.clamp(onConfigLoad_upvr, 1, 121)
        onConfigLoad_upvr = math.floor(onConfigLoad_upvr * 10 + 0.5) / 10
        local var29 = onConfigLoad_upvr
        var9_upvw = var29
        Parent_2_upvr.Position = UDim2.new((var29 - 1) / 120 * 0.803, 0, -0.192, 0)
        TextBox_upvr.Text = tostring(var29)
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var29
        end
    end
    -- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [199] 152. Error Block 14 start (CF ANALYSIS FAILED)
    var29 = setupCameraWatcher_upvr
    var29()
    var29 = LocalPlayer_upvr.CharacterAdded
    var29 = var29:Connect
    var29(function() -- Line 121
        --[[ Upvalues[3]:
            [1]: CurrentCamera_upvw (copied, read and write)
            [2]: var9_upvw (copied, read and write)
            [3]: setupCameraWatcher_upvr (copied, readonly)
        ]]
        task.wait(0.5)
        CurrentCamera_upvw = workspace.CurrentCamera
        if CurrentCamera_upvw and CurrentCamera_upvw.Parent then
            CurrentCamera_upvw.FieldOfView = var9_upvw
        end
        setupCameraWatcher_upvr()
    end)
    -- KONSTANTERROR: [199] 152. Error Block 14 end (CF ANALYSIS FAILED)
end)()
local function _() -- Line 164, Named "saveOnMouseRelease"
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if var7_upvw then
        local tonumber_result1_4 = tonumber(TextBox_upvr.Text)
        if tonumber_result1_4 and _G.ConfigSystem then
            _G.ConfigSystem.onSettingChanged("Fovchanger", tonumber_result1_4)
        end
    end
end
local var34_upvw
local RunService_upvr = game:GetService("RunService")
Parent.InputBegan:Connect(function(arg1) -- Line 173
    --[[ Upvalues[7]:
        [1]: UserInputService_upvr (readonly)
        [2]: var8_upvw (read and write)
        [3]: Parent_2_upvr (readonly)
        [4]: var7_upvw (read and write)
        [5]: updateSliderFromMouse_upvr (readonly)
        [6]: var34_upvw (read and write)
        [7]: RunService_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        var8_upvw = UserInputService_upvr:GetMouseLocation().X - Parent_2_upvr.AbsolutePosition.X
        var7_upvw = true
        updateSliderFromMouse_upvr()
        if not var34_upvw then
            var34_upvw = RunService_upvr.Stepped:Connect(function() -- Line 182
                --[[ Upvalues[3]:
                    [1]: var7_upvw (copied, read and write)
                    [2]: updateSliderFromMouse_upvr (copied, readonly)
                    [3]: var34_upvw (copied, read and write)
                ]]
                if var7_upvw then
                    updateSliderFromMouse_upvr()
                elseif var34_upvw then
                    var34_upvw:Disconnect()
                    var34_upvw = nil
                end
            end)
        end
    end
end)
UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 196
    --[[ Upvalues[2]:
        [1]: var7_upvw (read and write)
        [2]: TextBox_upvr (readonly)
    ]]
    if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
        if var7_upvw then
            local tonumber_result1_2 = tonumber(TextBox_upvr.Text)
            if tonumber_result1_2 then
                if _G.ConfigSystem then
                    _G.ConfigSystem.onSettingChanged("Fovchanger", tonumber_result1_2)
                end
            end
        end
        var7_upvw = false
    end
end)
TextBox_upvr.FocusLost:Connect(function() -- Line 203
    --[[ Upvalues[3]:
        [1]: TextBox_upvr (readonly)
        [2]: updateSliderPositionFromFov_upvr (readonly)
        [3]: var9_upvw (read and write)
    ]]
    local tonumber_result1 = tonumber(TextBox_upvr.Text)
    if tonumber_result1 then
        updateSliderPositionFromFov_upvr(tonumber_result1, true)
    else
        TextBox_upvr.Text = tostring(var9_upvw)
    end
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.slidebar.Frame2.TextButton.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = Fovchanger

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
        8 [string] = Stepped
        9 [string] = Connect

====================================================================================================

Function Dump: saveOnMouseRelease

Function Upvalues: saveOnMouseRelease

Function Constants: saveOnMouseRelease
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = onSettingChanged
        8 [string] = Fovchanger

====================================================================================================

Function Dump: initializeWithConfig

Function Upvalues: initializeWithConfig

Function Constants: initializeWithConfig
        1 [string] = task
        2 [string] = wait
        4 [string] = _G
        6 [string] = ConfigSystem
        7 [string] = settings
        8 [string] = Fovchanger
        9 [string] = onConfigLoad
        10 [string] = math
        11 [string] = clamp
        13 [number] = 10
        14 [number] = 0.5
        15 [string] = floor
        17 [number] = 120
        18 [number] = 1
        19 [number] = 0.803
        20 [string] = UDim2
        21 [string] = new
        23 [number] = -0.192
        24 [string] = Position
        25 [string] = tostring
        27 [string] = Text
        28 [string] = Parent
        29 [string] = FieldOfView
        30 [string] = CharacterAdded
        31 [string] = Connect

====================================================================================================

Function Dump: setupRespawnWatcher

Function Upvalues: setupRespawnWatcher

Function Constants: setupRespawnWatcher
        1 [string] = CharacterAdded
        2 [string] = Connect

====================================================================================================

Function Dump: setupCameraWatcher

Function Upvalues: setupCameraWatcher

Function Constants: setupCameraWatcher
        1 [string] = Parent
        2 [string] = FieldOfView
        3 [string] = GetPropertyChangedSignal
        4 [string] = Connect
        5 [string] = AncestryChanged

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
        14 [number] = 1
        15 [number] = 120
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Parent
        21 [string] = FieldOfView
        22 [string] = tostring
        24 [string] = Text
        25 [string] = _G
        27 [string] = ConfigSystem
        28 [string] = onSettingChanged
        29 [string] = Fovchanger

====================================================================================================

Function Dump: applyFovToCamera

Function Upvalues: applyFovToCamera

Function Constants: applyFovToCamera
        1 [string] = Parent
        2 [string] = FieldOfView

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 10
        5 [number] = 0.5
        6 [string] = floor
        8 [number] = 120
        9 [number] = 1
        10 [number] = 0.803
        11 [string] = UDim2
        12 [string] = new
        14 [number] = -0.192
        15 [string] = Position
        16 [string] = tostring
        18 [string] = Text
        19 [string] = Parent
        20 [string] = FieldOfView
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = Fovchanger

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = TextBox

Function Constants: Unknown Name
        1 [string] = UserInputType
        2 [string] = Enum
        3 [string] = MouseButton1
        4 [EnumItem] = Enum.UserInputType.MouseButton1
        5 [string] = Text
        6 [string] = tonumber
        8 [string] = _G
        10 [string] = ConfigSystem
        11 [string] = onSettingChanged
        12 [string] = Fovchanger

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [RBXScriptConnection] = Connection

Function Constants: Unknown Name
        1 [string] = Parent
        2 [string] = Disconnect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = TextBox
        2 [function] = updateSliderPositionFromFov
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = Text
        2 [string] = tonumber
        4 [string] = tostring

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Camera
        2 [number] = 70
        3 [function] = setupCameraWatcher

Function Constants: Unknown Name
        1 [string] = task
        2 [string] = wait
        4 [number] = 0.5
        5 [string] = workspace
        6 [Instance] = Workspace
        7 [string] = CurrentCamera
        8 [string] = Parent
        9 [string] = FieldOfView

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Camera
        3 [number] = 70

Function Constants: Unknown Name
        1 [string] = FieldOfView
        2 [string] = math
        3 [string] = abs
        5 [number] = 0.1
        6 [string] = task
        7 [string] = wait
        9 [string] = Parent

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
        8 [string] = Stepped
        9 [string] = Connect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [number] = 70
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = Camera
        5 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = Fovchanger
        2 [string] = math
        3 [string] = clamp
        5 [number] = 10
        6 [number] = 0.5
        7 [string] = floor
        9 [number] = 120
        10 [number] = 1
        11 [number] = 0.803
        12 [string] = UDim2
        13 [string] = new
        15 [number] = -0.192
        16 [string] = Position
        17 [string] = tostring
        19 [string] = Text
        20 [string] = Parent
        21 [string] = FieldOfView

====================================================================================================

Function Dump: updateSliderPositionFromFov

Function Upvalues: updateSliderPositionFromFov
        1 [number] = 70
        2 [Instance] = Frame2
        3 [Instance] = TextBox
        4 [Instance] = Camera

Function Constants: updateSliderPositionFromFov
        1 [string] = math
        2 [string] = clamp
        4 [number] = 10
        5 [number] = 0.5
        6 [string] = floor
        8 [number] = 120
        9 [number] = 1
        10 [number] = 0.803
        11 [string] = UDim2
        12 [string] = new
        14 [number] = -0.192
        15 [string] = Position
        16 [string] = tostring
        18 [string] = Text
        19 [string] = Parent
        20 [string] = FieldOfView
        21 [string] = _G
        23 [string] = ConfigSystem
        24 [string] = onSettingChanged
        25 [string] = Fovchanger

====================================================================================================

Function Dump: setupCameraWatcher

Function Upvalues: setupCameraWatcher
        1 [Instance] = Camera
        2 [boolean] = false
        3 [number] = 70

Function Constants: setupCameraWatcher
        1 [string] = Parent
        2 [string] = FieldOfView
        3 [string] = GetPropertyChangedSignal
        4 [string] = Connect
        5 [string] = AncestryChanged

====================================================================================================

Function Dump: updateSliderFromMouse

Function Upvalues: updateSliderFromMouse
        1 [Instance] = slidebar
        2 [Instance] = UserInputService
        3 [number] = 0
        4 [Instance] = Frame2
        5 [number] = 70
        6 [Instance] = Camera
        7 [Instance] = TextBox
        8 [boolean] = false

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
        14 [number] = 1
        15 [number] = 120
        16 [number] = 10
        17 [number] = 0.5
        18 [string] = floor
        20 [string] = Parent
        21 [string] = FieldOfView
        22 [string] = tostring
        24 [string] = Text
        25 [string] = _G
        27 [string] = ConfigSystem
        28 [string] = onSettingChanged
        29 [string] = Fovchanger

====================================================================================================
]]


----// XEClient/visual_HitlogEnabled_1769302618.lua
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


----// XEClient/visual_ImageToggle_1769302284.lua
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


----// XEClient/visual_JumpCircleToggle_1769302295.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle2.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:51:32
-- Luau version 6, Types version 3
-- Time taken: 0.014446 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var6_upvw = false
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character_upvw = LocalPlayer_upvr.Character
if not Character_upvw then
    Character_upvw = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Humanoid_upvw = Character_upvw:WaitForChild("Humanoid")
local HumanoidRootPart_upvw = Character_upvw:WaitForChild("HumanoidRootPart")
local var11_upvw = false
local function setJumpCircleEnabled_upvr(arg1, arg2) -- Line 27, Named "setJumpCircleEnabled"
    --[[ Upvalues[6]:
        [1]: var6_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var6_upvw = arg1
    local var12
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var12 = udim2_upvr
        return var12
    end
    if not var6_upvw or not INLINED() then
        var12 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var12;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("JumpCircleToggle", var6_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 38
    --[[ Upvalues[2]:
        [1]: setJumpCircleEnabled_upvr (readonly)
        [2]: var6_upvw (read and write)
    ]]
    setJumpCircleEnabled_upvr(not var6_upvw, true)
end)
local function cfOnSurface_upvr(arg1, arg2) -- Line 42, Named "cfOnSurface"
    local Unit_2 = arg2.Unit
    local var16
    if 0.95 < math.abs(Unit_2:Dot(Vector3.new(0, 0, 1))) then
        var16 = Vector3.new(1, 0, 0)
    else
        var16 = Vector3.new(0, 0, 1)
    end
    local Unit = var16:Cross(Unit_2).Unit
    return CFrame.fromMatrix(arg1, Unit, Unit_2, Unit_2:Cross(Unit).Unit)
end
local function _(arg1) -- Line 50, Named "getEmitter"
    local class_ParticleEmitter = arg1:FindFirstChildOfClass("ParticleEmitter")
    if not class_ParticleEmitter then
        class_ParticleEmitter = arg1:FindFirstChildWhichIsA("ParticleEmitter", true)
    end
    return class_ParticleEmitter
end
local function _(arg1, arg2) -- Line 54, Named "pivotTo"
    if arg1:IsA("Model") then
        arg1:PivotTo(arg2)
    else
        arg1.CFrame = arg2
    end
end
local JumpFX_upvr = game:GetService("ReplicatedStorage").FXTemplates:WaitForChild("JumpFX")
local JumpColor_upvr = script.Parent.Parent.JumpColor
local function createJumpCircle_upvr(arg1, arg2) -- Line 62, Named "createJumpCircle"
    --[[ Upvalues[4]:
        [1]: var6_upvw (read and write)
        [2]: JumpFX_upvr (readonly)
        [3]: cfOnSurface_upvr (readonly)
        [4]: JumpColor_upvr (readonly)
    ]]
    if not var6_upvw then
    else
        local clone_upvr = JumpFX_upvr:Clone()
        clone_upvr.Parent = workspace
        if clone_upvr:IsA("Model") then
            clone_upvr:PivotTo(cfOnSurface_upvr(arg1 + arg2.Unit * 0.03, arg2))
        else
            -- KONSTANTERROR: Expression was reused, decompilation is incorrect
            clone_upvr.CFrame = cfOnSurface_upvr(arg1 + arg2.Unit * 0.03, arg2)
        end
        local class_ParticleEmitter_2 = clone_upvr:FindFirstChildOfClass("ParticleEmitter")
        if not class_ParticleEmitter_2 then
            class_ParticleEmitter_2 = clone_upvr:FindFirstChildWhichIsA("ParticleEmitter", true)
        end
        if not class_ParticleEmitter_2 then
            clone_upvr:Destroy()
            return
        end
        class_ParticleEmitter_2.Color = ColorSequence.new(JumpColor_upvr.Value)
        class_ParticleEmitter_2:Emit(1)
        task.delay(class_ParticleEmitter_2.Lifetime.Max + 0.1, function() -- Line 81
            --[[ Upvalues[1]:
                [1]: clone_upvr (readonly)
            ]]
            if clone_upvr and clone_upvr.Parent then
                clone_upvr:Destroy()
            end
        end)
    end
end
game:GetService("RunService").Heartbeat:Connect(function() -- Line 88
    --[[ Upvalues[6]:
        [1]: Character_upvw (read and write)
        [2]: Humanoid_upvw (read and write)
        [3]: HumanoidRootPart_upvw (read and write)
        [4]: LocalPlayer_upvr (readonly)
        [5]: var11_upvw (read and write)
        [6]: createJumpCircle_upvr (readonly)
    ]]
    if not Character_upvw or not Humanoid_upvw or not HumanoidRootPart_upvw then
        Character_upvw = LocalPlayer_upvr.Character
        if Character_upvw then
            Humanoid_upvw = Character_upvw:FindFirstChild("Humanoid")
            HumanoidRootPart_upvw = Character_upvw:FindFirstChild("HumanoidRootPart")
        end
    else
        local any_GetState_result1 = Humanoid_upvw:GetState()
        local var32 = true
        if any_GetState_result1 ~= Enum.HumanoidStateType.Jumping then
            var32 = false
            if any_GetState_result1 == Enum.HumanoidStateType.Freefall then
                if 5 >= HumanoidRootPart_upvw.AssemblyLinearVelocity.Y then
                    var32 = false
                else
                    var32 = true
                end
            end
        end
        if var32 then
            local var33
            if not var11_upvw then
                local Position = HumanoidRootPart_upvw.Position
                local tbl_2 = {Character_upvw}
                local RaycastParams_new_result1 = RaycastParams.new()
                RaycastParams_new_result1.FilterDescendantsInstances = tbl_2
                var33 = Enum.RaycastFilterType.Exclude
                RaycastParams_new_result1.FilterType = var33
                var33 = workspace:Raycast(Position, Vector3.new(0, -20, 0), RaycastParams_new_result1)
                while var33 and var33.Instance:IsA("TrussPart") do
                    table.insert(tbl_2, var33.Instance)
                    RaycastParams_new_result1.FilterDescendantsInstances = tbl_2
                    var33 = workspace:Raycast(Position, Vector3.new(0, -20, 0), RaycastParams_new_result1)
                end
                if var33 then
                    createJumpCircle_upvr(var33.Position, var33.Normal)
                end
            end
        end
        var11_upvw = var32
    end
end)
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 131
    --[[ Upvalues[4]:
        [1]: Character_upvw (read and write)
        [2]: Humanoid_upvw (read and write)
        [3]: HumanoidRootPart_upvw (read and write)
        [4]: var11_upvw (read and write)
    ]]
    Character_upvw = arg1
    Humanoid_upvw = arg1:WaitForChild("Humanoid")
    HumanoidRootPart_upvw = arg1:WaitForChild("HumanoidRootPart")
    var11_upvw = false
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.JumpCircleToggle = var6_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 144
        --[[ Upvalues[7]:
            [1]: var6_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "JumpCircleToggle" then
            var6_upvw = arg2
            if not var6_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle2.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = JumpCircleToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = HumanoidRootPart

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        10 [string] = Freefall
        12 [string] = AssemblyLinearVelocity
        13 [string] = Y
        14 [string] = Position
        15 [string] = RaycastParams
        16 [string] = new
        18 [string] = FilterDescendantsInstances
        19 [string] = RaycastFilterType
        20 [string] = Exclude
        22 [string] = FilterType
        23 [string] = workspace
        25 [Vector3] = 0, -20, 0
        26 [string] = Raycast
        27 [string] = Instance
        28 [string] = TrussPart
        29 [string] = IsA
        30 [string] = table
        31 [string] = insert
        33 [string] = Normal

====================================================================================================

Function Dump: createJumpCircle

Function Upvalues: createJumpCircle

Function Constants: createJumpCircle
        1 [string] = Clone
        2 [string] = workspace
        4 [string] = Parent
        5 [number] = 0.03
        6 [string] = Unit
        7 [string] = Model
        8 [string] = IsA
        9 [string] = PivotTo
        10 [string] = CFrame
        11 [string] = ParticleEmitter
        12 [string] = FindFirstChildOfClass
        13 [string] = FindFirstChildWhichIsA
        14 [string] = Destroy
        15 [string] = ColorSequence
        16 [string] = new
        18 [string] = Value
        19 [string] = Color
        20 [string] = Emit
        21 [string] = Lifetime
        22 [string] = Max
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================

Function Dump: pivotTo

Function Upvalues: pivotTo

Function Constants: pivotTo
        1 [string] = Model
        2 [string] = IsA
        3 [string] = PivotTo
        4 [string] = CFrame

====================================================================================================

Function Dump: getEmitter

Function Upvalues: getEmitter

Function Constants: getEmitter
        1 [string] = ParticleEmitter
        2 [string] = FindFirstChildOfClass
        3 [string] = FindFirstChildWhichIsA

====================================================================================================

Function Dump: cfOnSurface

Function Upvalues: cfOnSurface

Function Constants: cfOnSurface
        1 [string] = Unit
        2 [Vector3] = 0, 0, 1
        3 [string] = Dot
        4 [string] = math
        5 [string] = abs
        7 [number] = 0.95
        8 [Vector3] = 1, 0, 0
        9 [string] = Cross
        10 [string] = CFrame
        11 [string] = fromMatrix

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setJumpCircleEnabled

Function Upvalues: setJumpCircleEnabled

Function Constants: setJumpCircleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JumpCircleToggle

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
        1 [string] = JumpCircleToggle
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [Instance] = Humanoid
        3 [Instance] = HumanoidRootPart
        4 [Instance] = quit_xyz
        5 [boolean] = false
        6 [function] = createJumpCircle

Function Constants: Unknown Name
        1 [string] = Character
        2 [string] = Humanoid
        3 [string] = FindFirstChild
        4 [string] = HumanoidRootPart
        5 [string] = GetState
        6 [string] = Enum
        7 [string] = HumanoidStateType
        8 [string] = Jumping
        9 [EnumItem] = Enum.HumanoidStateType.Jumping
        10 [string] = Freefall
        11 [EnumItem] = Enum.HumanoidStateType.Freefall
        12 [string] = AssemblyLinearVelocity
        13 [string] = Y
        14 [string] = Position
        15 [string] = RaycastParams
        16 [string] = new
        18 [string] = FilterDescendantsInstances
        19 [string] = RaycastFilterType
        20 [string] = Exclude
        21 [EnumItem] = Enum.RaycastFilterType.Exclude
        22 [string] = FilterType
        23 [string] = workspace
        24 [Instance] = Workspace
        25 [Vector3] = 0, -20, 0
        26 [string] = Raycast
        27 [string] = Instance
        28 [string] = TrussPart
        29 [string] = IsA
        30 [string] = table
        31 [string] = insert
        33 [string] = Normal

====================================================================================================

Function Dump: setJumpCircleEnabled

Function Upvalues: setJumpCircleEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: setJumpCircleEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = _G
        7 [string] = ConfigSystem
        8 [string] = onSettingChanged
        9 [string] = JumpCircleToggle

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = quit_xyz
        2 [Instance] = Humanoid
        3 [Instance] = HumanoidRootPart
        4 [boolean] = false

Function Constants: Unknown Name
        1 [string] = Humanoid
        2 [string] = WaitForChild
        3 [string] = HumanoidRootPart

====================================================================================================

Function Dump: createJumpCircle

Function Upvalues: createJumpCircle
        1 [boolean] = false
        2 [Instance] = JumpFX
        3 [function] = cfOnSurface
        4 [Instance] = JumpColor

Function Constants: createJumpCircle
        1 [string] = Clone
        2 [string] = workspace
        3 [Instance] = Workspace
        4 [string] = Parent
        5 [number] = 0.03
        6 [string] = Unit
        7 [string] = Model
        8 [string] = IsA
        9 [string] = PivotTo
        10 [string] = CFrame
        11 [string] = ParticleEmitter
        12 [string] = FindFirstChildOfClass
        13 [string] = FindFirstChildWhichIsA
        14 [string] = Destroy
        15 [string] = ColorSequence
        16 [string] = new
        18 [string] = Value
        19 [string] = Color
        20 [string] = Emit
        21 [string] = Lifetime
        22 [string] = Max
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setJumpCircleEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: cfOnSurface

Function Upvalues: cfOnSurface

Function Constants: cfOnSurface
        1 [string] = Unit
        2 [Vector3] = 0, 0, 1
        3 [string] = Dot
        4 [string] = math
        5 [string] = abs
        7 [number] = 0.95
        8 [Vector3] = 1, 0, 0
        9 [string] = Cross
        10 [string] = CFrame
        11 [string] = fromMatrix

====================================================================================================
]]


----// XEClient/visual_KeybindsVisual_1769302536.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle4.LocalScript
-- Took 0.32s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:55:33
-- Luau version 6, Types version 3
-- Time taken: 0.017854 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var6_upvw = false
local var7_upvw
local var8_upvw
local Color3_fromRGB_result1_upvr = Color3.fromRGB(255, 255, 255)
local UserInputService_upvr = game:GetService("UserInputService")
local function makeDraggable_upvr(arg1) -- Line 37, Named "makeDraggable"
    --[[ Upvalues[1]:
        [1]: UserInputService_upvr (readonly)
    ]]
    local var11_upvw
    local var12_upvw
    local var13_upvw
    local var14_upvw
    arg1.InputBegan:Connect(function(arg1_2) -- Line 40
        --[[ Upvalues[4]:
            [1]: var11_upvw (read and write)
            [2]: var13_upvw (read and write)
            [3]: var14_upvw (read and write)
            [4]: arg1 (readonly)
        ]]
        if arg1_2.UserInputType == Enum.UserInputType.MouseButton1 then
            var11_upvw = true
            var13_upvw = arg1_2.Position
            var14_upvw = arg1.Position
            arg1_2.Changed:Connect(function() -- Line 46
                --[[ Upvalues[2]:
                    [1]: arg1_2 (readonly)
                    [2]: var11_upvw (copied, read and write)
                ]]
                if arg1_2.UserInputState == Enum.UserInputState.End then
                    var11_upvw = false
                end
            end)
        end
    end)
    arg1.InputChanged:Connect(function(arg1_3) -- Line 54
        --[[ Upvalues[1]:
            [1]: var12_upvw (read and write)
        ]]
        if arg1_3.UserInputType == Enum.UserInputType.MouseMovement then
            var12_upvw = arg1_3
        end
    end)
    UserInputService_upvr.InputChanged:Connect(function(arg1_4) -- Line 60
        --[[ Upvalues[5]:
            [1]: var12_upvw (read and write)
            [2]: var11_upvw (read and write)
            [3]: var13_upvw (read and write)
            [4]: arg1 (readonly)
            [5]: var14_upvw (read and write)
        ]]
        if arg1_4 == var12_upvw and var11_upvw then
            local var19 = arg1_4.Position - var13_upvw
            arg1.Position = UDim2.new(var14_upvw.X.Scale, var14_upvw.X.Offset + var19.X, var14_upvw.Y.Scale, var14_upvw.Y.Offset + var19.Y)
        end
    end)
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Color3_fromRGB_result1_upvr_4 = Color3.fromRGB(25, 25, 25)
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(20, 20, 20)
local var23_upvw
local tbl_upvw = {}
local function createGUI_upvr() -- Line 74, Named "createGUI"
    --[[ Upvalues[10]:
        [1]: var7_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: Color3_fromRGB_result1_upvr_4 (readonly)
        [4]: Color3_fromRGB_result1_upvr_2 (readonly)
        [5]: Color3_fromRGB_result1_upvr (readonly)
        [6]: TweenService_upvr (readonly)
        [7]: makeDraggable_upvr (readonly)
        [8]: var8_upvw (read and write)
        [9]: var23_upvw (read and write)
        [10]: tbl_upvw (read and write)
    ]]
    if var7_upvw then
        var7_upvw:Destroy()
    end
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KeybindsListHUD"
    ScreenGui.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false
    local Frame_3_upvr = Instance.new("Frame")
    Frame_3_upvr.Name = "Main"
    Frame_3_upvr.Size = UDim2.new(0, 200, 0, 28)
    Frame_3_upvr.Position = UDim2.new(0.02, 0, 0.5, 0)
    Frame_3_upvr.BackgroundColor3 = Color3_fromRGB_result1_upvr_4
    Frame_3_upvr.BackgroundTransparency = 0.3
    Frame_3_upvr.BorderSizePixel = 0
    Frame_3_upvr.ClipsDescendants = true
    Frame_3_upvr.Parent = ScreenGui
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Frame_3_upvr
    local Frame = Instance.new("Frame")
    Frame.Name = "Header"
    Frame.Size = UDim2.new(1, 0, 0, 28)
    Frame.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
    Frame.BackgroundTransparency = 0.4
    Frame.BorderSizePixel = 0
    Frame.Parent = Frame_3_upvr
    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Size = UDim2.new(0, 14, 0, 14)
    ImageLabel.Position = UDim2.new(0, 8, 0.5, 0)
    ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Image = "rbxassetid://97160939850076"
    ImageLabel.ImageColor3 = Color3_fromRGB_result1_upvr
    ImageLabel.Parent = Frame
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Text = "Keybinds"
    TextLabel.Size = UDim2.new(1, -30, 1, 0)
    TextLabel.Position = UDim2.new(0, 26, 0, 0)
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3_fromRGB_result1_upvr
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextSize = 12
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Center
    TextLabel.Parent = Frame
    local Frame_2 = Instance.new("Frame")
    Frame_2.Name = "List"
    Frame_2.Size = UDim2.new(1, 0, 0, 0)
    Frame_2.Position = UDim2.new(0, 0, 0, 32)
    Frame_2.BackgroundTransparency = 1
    Frame_2.Parent = Frame_3_upvr
    local UIListLayout_upvr = Instance.new("UIListLayout")
    UIListLayout_upvr.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_upvr.Padding = UDim.new(0, 3)
    UIListLayout_upvr.Parent = Frame_2
    local UIPadding = Instance.new("UIPadding")
    UIPadding.PaddingTop = UDim.new(0, 0)
    UIPadding.PaddingBottom = UDim.new(0, 0)
    UIPadding.PaddingLeft = UDim.new(0, 6)
    UIPadding.PaddingRight = UDim.new(0, 6)
    UIPadding.Parent = Frame_2
    UIListLayout_upvr:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() -- Line 148
        --[[ Upvalues[3]:
            [1]: UIListLayout_upvr (readonly)
            [2]: TweenService_upvr (copied, readonly)
            [3]: Frame_3_upvr (readonly)
        ]]
        TweenService_upvr:Create(Frame_3_upvr, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 200, 0, 28 + UIListLayout_upvr.AbsoluteContentSize.Y + 8);
        }):Play()
    end)
    makeDraggable_upvr(Frame_3_upvr)
    var8_upvw = Frame_2
    var23_upvw = UIListLayout_upvr
    var7_upvw = ScreenGui
    tbl_upvw = {}
    return ScreenGui
end
local Color3_fromRGB_result1_upvr_3 = Color3.fromRGB(180, 180, 180)
local function updateBindItem_upvr(arg1, arg2, arg3) -- Line 173, Named "updateBindItem"
    --[[ Upvalues[4]:
        [1]: var8_upvw (read and write)
        [2]: Color3_fromRGB_result1_upvr (readonly)
        [3]: Color3_fromRGB_result1_upvr_3 (readonly)
        [4]: TweenService_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
    do
        return
    end
    -- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
local function scanForActiveBinds_upvr() -- Line 294, Named "scanForActiveBinds"
    --[[ Upvalues[2]:
        [1]: var8_upvw (read and write)
        [2]: updateBindItem_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
    local function _(arg1) -- Line 297, Named "checkValue"
        if _G.ConfigSystem and _G.ConfigSystem.settings and _G.ConfigSystem.settings[arg1] == true then
            return true
        end
        if _G[arg1] == true then
            return true
        end
        return false
    end
    if _G.ConfigSystem and _G.ConfigSystem.settings and _G.ConfigSystem.settings.doubletap == true then
        -- KONSTANTWARNING: GOTO [36] #23
    end
    -- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [27] 17. Error Block 46 start (CF ANALYSIS FAILED)
    if _G.doubletap == true then
        -- KONSTANTWARNING: GOTO [36] #23
    end
    -- KONSTANTERROR: [27] 17. Error Block 46 end (CF ANALYSIS FAILED)
end
local var37_upvw
local RunService_upvr = game:GetService("RunService")
local function toggle_upvr(arg1) -- Line 339, Named "toggle"
    --[[ Upvalues[5]:
        [1]: createGUI_upvr (readonly)
        [2]: var37_upvw (read and write)
        [3]: RunService_upvr (readonly)
        [4]: scanForActiveBinds_upvr (readonly)
        [5]: var7_upvw (read and write)
    ]]
    if arg1 then
        createGUI_upvr()
        var37_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 342
            --[[ Upvalues[1]:
                [1]: scanForActiveBinds_upvr (copied, readonly)
            ]]
            if tick() % 0.2 < 0.02 then
                scanForActiveBinds_upvr()
            end
        end)
    else
        if var37_upvw then
            var37_upvw:Disconnect()
            var37_upvw = nil
        end
        if var7_upvw then
            var7_upvw:Destroy()
            var7_upvw = nil
        end
    end
end
local function setEnabled_upvr(arg1, arg2) -- Line 361, Named "setEnabled"
    --[[ Upvalues[7]:
        [1]: var6_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: toggle_upvr (readonly)
    ]]
    var6_upvw = arg1
    local var40
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var40 = udim2_upvr
        return var40
    end
    if not arg1 or not INLINED() then
        var40 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var40;
    }):Play()
    toggle_upvr(arg1)
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("KeybindsVisual", arg1)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 372
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var6_upvw (read and write)
    ]]
    setEnabled_upvr(not var6_upvw, true)
end)
task.wait(0.5)
if _G.ConfigSystem then
    if _G.ConfigSystem.settings then
        _G.ConfigSystem.settings.KeybindsVisual = var6_upvw
    end
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 384
        --[[ Upvalues[8]:
            [1]: var6_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: toggle_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "KeybindsVisual" then
            var6_upvw = arg2
            if not arg2 or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            toggle_upvr(arg2)
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end


----// XEClient/visual_indicator_1769302437.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle3.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:53:54
-- Luau version 6, Types version 3
-- Time taken: 0.013914 seconds

local TweenService_upvr = game:GetService("TweenService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Frame2_upvr = script.Parent.Frame2
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local tbl_upvr_2 = {-- : First try: K:0: attempt to index nil with 't'

local var8_upvw = false
local ScreenGui_upvr = Instance.new("ScreenGui")
ScreenGui_upvr.Name = "XEIndicator"
ScreenGui_upvr.ResetOnSpawn = false
ScreenGui_upvr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_upvr.Enabled = false
local Frame = Instance.new("Frame")
Frame.Name = "IndicatorFrame"
Frame.Active = false
Frame.Selectable = false
Frame.Size = UDim2.new(0, 80, 0, 32)
Frame.Position = UDim2.new(0.5, -40, 0.55, 0)
Frame.AnchorPoint = Vector2.new(0, 0)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui_upvr
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Title"
TextLabel.Active = false
TextLabel.Selectable = false
TextLabel.Size = UDim2.new(1, 0, 0, 10)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "xescripts"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12
TextLabel.Font = Enum.Font.Code
TextLabel.TextStrokeTransparency = 0.4
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.Parent = Frame
local TextLabel_2_upvr = Instance.new("TextLabel")
TextLabel_2_upvr.Name = "State"
TextLabel_2_upvr.Active = false
TextLabel_2_upvr.Selectable = false
TextLabel_2_upvr.Size = UDim2.new(1, 0, 0, 14)
TextLabel_2_upvr.Position = UDim2.new(0, 0, 0, 13)
TextLabel_2_upvr.BackgroundTransparency = 1
TextLabel_2_upvr.Text = "standing"
TextLabel_2_upvr.TextColor3 = Color3.fromRGB(150, 255, 150)
TextLabel_2_upvr.TextSize = 11
TextLabel_2_upvr.Font = Enum.Font.Code
TextLabel_2_upvr.TextStrokeTransparency = 0.4
TextLabel_2_upvr.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2_upvr.TextXAlignment = Enum.TextXAlignment.Center
TextLabel_2_upvr.Parent = Frame
local tbl_upvr = {
    AIR = {
        name = "in air";
        color = Color3.fromRGB(255, 180, 80);
    };
    STAND = {
        name = "standing";
        color = Color3.fromRGB(150, 255, 150);
    };
    WALK = {
        name = "moving";
        color = Color3.fromRGB(130, 200, 255);
    };
    CROUCH = {
        name = "ducking";
        color = Color3.fromRGB(255, 100, 100);
    };
}
local function isCrouching_upvr(arg1) -- Line 90, Named "isCrouching"
    --[[ Upvalues[1]:
        [1]: tbl_upvr_2 (readonly)
    ]]
    local var33 = arg1
    if var33 then
        var33 = arg1:FindFirstChildOfClass("Humanoid")
    end
    if not var33 then
        return false
    end
    local class_Animator_2 = var33:FindFirstChildOfClass("Animator")
    if not class_Animator_2 then
        return false
    end
    for _, v in pairs(class_Animator_2:GetPlayingAnimationTracks()) do
        local Animation = v.Animation
        if Animation then
            Animation = v.Animation.AnimationId
        end
        if Animation then
            local tonumber_result1_2 = tonumber(Animation:match("%d+"))
            if tonumber_result1_2 and tbl_upvr_2[tonumber_result1_2] then
                return true
            end
        end
    end
    return false
end
local function getPlayerState_upvr(arg1) -- Line 110, Named "getPlayerState"
    --[[ Upvalues[1]:
        [1]: isCrouching_upvr (readonly)
    ]]
    local var40 = arg1
    if var40 then
        var40 = arg1:FindFirstChildOfClass("Humanoid")
    end
    local var41 = arg1
    if var41 then
        var41 = arg1:FindFirstChild("HumanoidRootPart")
    end
    if not var40 or not var41 then
        return "STAND"
    end
    if isCrouching_upvr(arg1) then
        return "CROUCH"
    end
    if var40.FloorMaterial == Enum.Material.Air then
        return "AIR"
    end
    local AssemblyLinearVelocity = var41.AssemblyLinearVelocity
    if 0.5 < math.sqrt(AssemblyLinearVelocity.X ^ 2 + AssemblyLinearVelocity.Z ^ 2) then
        return "WALK"
    end
    return "STAND"
end
local var43_upvw = "STAND"
local TweenInfo_new_result1_upvr = TweenInfo.new(0.08, Enum.EasingStyle.Linear)
local function updateIndicator_upvr(arg1) -- Line 137, Named "updateIndicator"
    --[[ Upvalues[5]:
        [1]: var43_upvw (read and write)
        [2]: tbl_upvr (readonly)
        [3]: TextLabel_2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    if arg1 == var43_upvw then
    else
        var43_upvw = arg1
        local var45 = tbl_upvr[arg1]
        if not var45 then
            var45 = tbl_upvr.STAND
        end
        TextLabel_2_upvr.Text = var45.name
        TweenService_upvr:Create(TextLabel_2_upvr, TweenInfo_new_result1_upvr, {
            TextColor3 = var45.color;
        }):Play()
    end
end
local function setIndicatorEnabled_upvr(arg1, arg2) -- Line 148, Named "setIndicatorEnabled"
    --[[ Upvalues[7]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr_2 (readonly)
        [7]: ScreenGui_upvr (readonly)
    ]]
    var8_upvw = arg1
    local var47
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var47 = udim2_upvr
        return var47
    end
    if not var8_upvw or not INLINED() then
        var47 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr_2, {
        Position = var47;
    }):Play()
    ScreenGui_upvr.Enabled = var8_upvw
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("indicator", var8_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 165
    --[[ Upvalues[2]:
        [1]: setIndicatorEnabled_upvr (readonly)
        [2]: var8_upvw (read and write)
    ]]
    setIndicatorEnabled_upvr(not var8_upvw, true)
end)
if LocalPlayer_upvr.Character then
    ScreenGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 170, Named "onCharacterAdded"
    --[[ Upvalues[2]:
        [1]: ScreenGui_upvr (readonly)
        [2]: LocalPlayer_upvr (readonly)
    ]]
    ScreenGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
end)
game:GetService("RunService").RenderStepped:Connect(function() -- Line 180
    --[[ Upvalues[4]:
        [1]: var8_upvw (read and write)
        [2]: LocalPlayer_upvr (readonly)
        [3]: getPlayerState_upvr (readonly)
        [4]: updateIndicator_upvr (readonly)
    ]]
    if not var8_upvw then
    else
        local Character = LocalPlayer_upvr.Character
        if Character then
            updateIndicator_upvr(getPlayerState_upvr(Character))
        end
    end
end)
ScreenGui_upvr.Parent = LocalPlayer_upvr:WaitForChild("PlayerGui")
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.indicator = var8_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 199
        --[[ Upvalues[8]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr_2 (readonly)
            [7]: ScreenGui_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "indicator" then
            var8_upvw = arg2
            if not var8_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr_2, {
                Position = udim2_upvr_2;
            }):Play()
            ScreenGui_upvr.Enabled = var8_upvw
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle3.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = indicator
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Enabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded

Function Constants: onCharacterAdded
        1 [string] = PlayerGui
        2 [string] = WaitForChild
        3 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name

====================================================================================================

Function Dump: setIndicatorEnabled

Function Upvalues: setIndicatorEnabled

Function Constants: setIndicatorEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Enabled
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = indicator

====================================================================================================

Function Dump: updateIndicator

Function Upvalues: updateIndicator

Function Constants: updateIndicator
        1 [string] = STAND
        2 [string] = name
        3 [string] = Text
        4 [string] = TextColor3
        6 [string] = color
        7 [string] = Create
        8 [string] = Play

====================================================================================================

Function Dump: getPlayerState

Function Upvalues: getPlayerState

Function Constants: getPlayerState
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = HumanoidRootPart
        4 [string] = FindFirstChild
        5 [string] = STAND
        6 [string] = CROUCH
        7 [string] = FloorMaterial
        8 [string] = Enum
        9 [string] = Material
        10 [string] = Air
        12 [string] = AIR
        13 [string] = AssemblyLinearVelocity
        14 [number] = 2
        15 [string] = X
        16 [string] = Z
        17 [string] = math
        18 [string] = sqrt
        20 [number] = 0.5
        21 [string] = WALK

====================================================================================================

Function Dump: isCrouching

Function Upvalues: isCrouching

Function Constants: isCrouching
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = Animator
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = Animation
        8 [string] = AnimationId
        9 [string] = %d+
        10 [string] = match
        11 [string] = tonumber

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = XEIndicator
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = indicator
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Enabled

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = quit_xyz
        3 [function] = getPlayerState
        4 [function] = updateIndicator

Function Constants: Unknown Name
        1 [string] = Character

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setIndicatorEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: getPlayerState

Function Upvalues: getPlayerState
        1 [function] = isCrouching

Function Constants: getPlayerState
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = HumanoidRootPart
        4 [string] = FindFirstChild
        5 [string] = STAND
        6 [string] = CROUCH
        7 [string] = FloorMaterial
        8 [string] = Enum
        9 [string] = Material
        10 [string] = Air
        11 [EnumItem] = Enum.Material.Air
        12 [string] = AIR
        13 [string] = AssemblyLinearVelocity
        14 [number] = 2
        15 [string] = X
        16 [string] = Z
        17 [string] = math
        18 [string] = sqrt
        20 [number] = 0.5
        21 [string] = WALK

====================================================================================================

Function Dump: isCrouching

Function Upvalues: isCrouching
        1 [table]:
        1 [table] table: 0x3f19d763c07d4bc5
                1 [boolean] = true
                2 [boolean] = true

Function Constants: isCrouching
        1 [string] = Humanoid
        2 [string] = FindFirstChildOfClass
        3 [string] = Animator
        4 [string] = pairs
        6 [string] = GetPlayingAnimationTracks
        7 [string] = Animation
        8 [string] = AnimationId
        9 [string] = %d+
        10 [string] = match
        11 [string] = tonumber

====================================================================================================

Function Dump: setIndicatorEnabled

Function Upvalues: setIndicatorEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = XEIndicator

Function Constants: setIndicatorEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Enabled
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = indicator

====================================================================================================

Function Dump: updateIndicator

Function Upvalues: updateIndicator
        1 [string] = STAND
        2 [table]:
        2 [table] table: 0x88cbe11154c8c415
                1 [table]:
                CROUCH [table] table: 0x3db3e0db2407d0d5
                        1 [string] = ducking
                        2 [Color3] = 1, 0.392157, 0.392157
                2 [table]:
                STAND [table] table: 0x556fc0bc04264a75
                        1 [string] = standing
                        2 [Color3] = 0.588235, 1, 0.588235
                3 [table]:
                AIR [table] table: 0x26bdf34e68ccc325
                        1 [string] = in air
                        2 [Color3] = 1, 0.705882, 0.313726
                4 [table]:
                WALK [table] table: 0xcdddf0aa901f5485
                        1 [string] = moving
                        2 [Color3] = 0.509804, 0.784314, 1
        3 [Instance] = State
        4 [Instance] = TweenService
        5 [TweenInfo] = Time:0.08 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Linear

Function Constants: updateIndicator
        1 [string] = STAND
        2 [string] = name
        3 [string] = Text
        4 [string] = TextColor3
        6 [string] = color
        7 [string] = Create
        8 [string] = Play

====================================================================================================

Function Dump: onCharacterAdded

Function Upvalues: onCharacterAdded
        1 [Instance] = XEIndicator
        2 [Instance] = quit_xyz

Function Constants: onCharacterAdded
        1 [string] = PlayerGui
        2 [string] = WaitForChild
        3 [string] = Parent

====================================================================================================
]]


----// XEClient/visual_killeffect_1769302446.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle4.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.012010 seconds

local TweenService_upvr = game:GetService("TweenService")
local Players_upvr = game:GetService("Players")
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Frame2_upvr = script.Parent.Frame2
local scope_upvr = game.ReplicatedStorage.cfgg.scope
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var9_upvw = false
local tbl_upvr_2 = {
    dur = 0.75;
    impactLife = 2.15;
    impactFade = 2;
}
local tbl_upvr = {"FXTemplates", "ImpactFX"}
local function _() -- Line 26, Named "getTemplate"
    --[[ Upvalues[2]:
        [1]: ReplicatedStorage_upvr (readonly)
        [2]: tbl_upvr (readonly)
    ]]
    local var14
    for i = 1, #tbl_upvr do
        var14 = var14:FindFirstChild(tbl_upvr[i])
        if not var14 then
            return nil
        end
    end
    return var14
end
local function setEmittersEnabled_upvr(arg1, arg2) -- Line 35, Named "setEmittersEnabled"
    for _, v in ipairs(arg1:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            v.Enabled = arg2
        end
    end
end
local Debris_upvr = game:GetService("Debris")
local function createImpactEffect_upvr(arg1) -- Line 43, Named "createImpactEffect"
    --[[ Upvalues[5]:
        [1]: ReplicatedStorage_upvr (readonly)
        [2]: tbl_upvr (readonly)
        [3]: setEmittersEnabled_upvr (readonly)
        [4]: tbl_upvr_2 (readonly)
        [5]: Debris_upvr (readonly)
    ]]
    -- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
    local _ = 1
    -- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [15] 15. Error Block 4 start (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [15] 15. Error Block 4 end (CF ANALYSIS FAILED)
    -- KONSTANTERROR: [6] 7. Error Block 14 start (CF ANALYSIS FAILED)
    if not ReplicatedStorage_upvr then
        -- KONSTANTWARNING: GOTO [17] #17
    end
    -- KONSTANTERROR: [6] 7. Error Block 14 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 69, Named "createKillEffect"
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: Players_upvr (readonly)
        [3]: createImpactEffect_upvr (readonly)
    ]]
    if not var9_upvw then
    else
        local SOME_2 = Players_upvr:FindFirstChild(arg1)
        if not SOME_2 then return end
        local Character_2 = SOME_2.Character
        if not Character_2 then return end
        local Head = Character_2:FindFirstChild("Head")
        if not Head then return end
        createImpactEffect_upvr(Head.Position)
    end
end
ReplicatedStorage_upvr:WaitForChild("inf").OnClientEvent:Connect(function(arg1) -- Line 84
    --[[ Upvalues[3]:
        [1]: var9_upvw (read and write)
        [2]: Players_upvr (readonly)
        [3]: createImpactEffect_upvr (readonly)
    ]]
    if not var9_upvw then
    else
        local SOME = Players_upvr:FindFirstChild(arg1)
        if not SOME then return end
        local Character = SOME.Character
        if not Character then return end
        local Head_2 = Character:FindFirstChild("Head")
        if not Head_2 then return end
        createImpactEffect_upvr(Head_2.Position)
    end
end)
local function setAvailableEspEnabled_upvr(arg1, arg2) -- Line 88, Named "setAvailableEspEnabled"
    --[[ Upvalues[7]:
        [1]: var9_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: scope_upvr (readonly)
    ]]
    var9_upvw = arg1
    local var29
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var29 = udim2_upvr_2
        return var29
    end
    if not var9_upvw or not INLINED() then
        var29 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var29;
    }):Play()
    if scope_upvr then
        scope_upvr.Value = var9_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("killeffect", var9_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 103
    --[[ Upvalues[2]:
        [1]: setAvailableEspEnabled_upvr (readonly)
        [2]: var9_upvw (read and write)
    ]]
    setAvailableEspEnabled_upvr(not var9_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.killeffect = var9_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 113
        --[[ Upvalues[8]:
            [1]: var9_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: scope_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "killeffect" then
            var9_upvw = arg2
            if not var9_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
            if scope_upvr then
                scope_upvr.Value = var9_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame4.toggle4.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = killeffect
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

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
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = killeffect

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = FindFirstChild
        2 [string] = Character
        3 [string] = Head
        4 [string] = Position

====================================================================================================

Function Dump: createKillEffect

Function Upvalues: createKillEffect

Function Constants: createKillEffect
        1 [string] = FindFirstChild
        2 [string] = Character
        3 [string] = Head
        4 [string] = Position

====================================================================================================

Function Dump: createImpactEffect

Function Upvalues: createImpactEffect

Function Constants: createImpactEffect
        1 [string] = FindFirstChild
        2 [string] = Clone
        3 [string] = Anchored
        4 [string] = CanCollide
        5 [string] = CanQuery
        6 [string] = CanTouch
        7 [string] = Transparency
        8 [string] = CFrame
        9 [string] = new
        11 [string] = workspace
        13 [string] = Parent
        14 [string] = impactLife
        15 [string] = impactFade
        16 [string] = task
        17 [string] = spawn
        19 [string] = dur
        20 [string] = AddItem

====================================================================================================

Function Dump: setEmittersEnabled

Function Upvalues: setEmittersEnabled

Function Constants: setEmittersEnabled
        1 [string] = ipairs
        3 [string] = GetDescendants
        4 [string] = ParticleEmitter
        5 [string] = IsA
        6 [string] = Enabled

====================================================================================================

Function Dump: getTemplate

Function Upvalues: getTemplate

Function Constants: getTemplate
        1 [string] = FindFirstChild

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = scope
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = killeffect
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAvailableEspEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [Instance] = Players
        3 [function] = createImpactEffect

Function Constants: Unknown Name
        1 [string] = FindFirstChild
        2 [string] = Character
        3 [string] = Head
        4 [string] = Position

====================================================================================================

Function Dump: setEmittersEnabled

Function Upvalues: setEmittersEnabled

Function Constants: setEmittersEnabled
        1 [string] = ipairs
        3 [string] = GetDescendants
        4 [string] = ParticleEmitter
        5 [string] = IsA
        6 [string] = Enabled

====================================================================================================

Function Dump: setAvailableEspEnabled

Function Upvalues: setAvailableEspEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = scope

Function Constants: setAvailableEspEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = killeffect

====================================================================================================

Function Dump: createImpactEffect

Function Upvalues: createImpactEffect
        1 [Instance] = ReplicatedStorage
        2 [table]:
        2 [table] table: 0x855406912d4584b5
                1 [string] = FXTemplates
                2 [string] = ImpactFX
        3 [function] = setEmittersEnabled
        4 [table]:
        4 [table] table: 0xeae552a369518165
                1 [number] = 2
                2 [number] = 0.75
                3 [number] = 2.15
        5 [Instance] = Debris

Function Constants: createImpactEffect
        1 [string] = FindFirstChild
        2 [string] = Clone
        3 [string] = Anchored
        4 [string] = CanCollide
        5 [string] = CanQuery
        6 [string] = CanTouch
        7 [string] = Transparency
        8 [string] = CFrame
        9 [string] = new
        11 [string] = workspace
        12 [Instance] = Workspace
        13 [string] = Parent
        14 [string] = impactLife
        15 [string] = impactFade
        16 [string] = task
        17 [string] = spawn
        19 [string] = dur
        20 [string] = AddItem

====================================================================================================
]]


----// XEClient/visual_sivusuauwall_1769302510.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle7.LocalScript
-- Took 0.3s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:55:08
-- Luau version 6, Types version 3
-- Time taken: 0.012359 seconds

local TweenService_upvr = game:GetService("TweenService")
local Workspace_upvr = game:GetService("Workspace")
local TextButton = script.Parent:WaitForChild("TextButton", 5)
if not TextButton then
    TextButton = script.Parent.TextButton
end
local Frame2_upvr = script.Parent:WaitForChild("Frame2", 5)
if not Frame2_upvr then
    Frame2_upvr = script.Parent.Frame2
end
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var8_upvw = false
local tbl_2_upvr = {
    TracerColor = ColorSequence.new(Color3.fromRGB(255, 255, 255));
    TracerWidth = 0.1;
    MarkerSize = Vector3.new(0.5, 0.5, 0.5);
    EntryColor = Color3.fromRGB(255, 50, 50);
    ExitColor = Color3.fromRGB(50, 255, 50);
    Lifetime = 3;
}
local Debris_upvr = game:GetService("Debris")
local function createMarker_upvr(arg1, arg2) -- Line 32, Named "createMarker"
    --[[ Upvalues[4]:
        [1]: tbl_2_upvr (readonly)
        [2]: Workspace_upvr (readonly)
        [3]: TweenService_upvr (readonly)
        [4]: Debris_upvr (readonly)
    ]]
    local Part_upvr = Instance.new("Part")
    Part_upvr.Name = "wbmhgfhf"
    Part_upvr.Anchored = true
    Part_upvr.CanCollide = false
    Part_upvr.CanQuery = false
    Part_upvr.CastShadow = false
    Part_upvr.Material = Enum.Material.Neon
    Part_upvr.Color = arg2
    Part_upvr.Size = tbl_2_upvr.MarkerSize
    Part_upvr.CFrame = CFrame.new(arg1)
    Part_upvr.Parent = Workspace_upvr
    Part_upvr.Transparency = 0.5
    TweenService_upvr:Create(Part_upvr, TweenInfo.new(0.3), {
        Transparency = 0;
    }):Play()
    Debris_upvr:AddItem(Part_upvr, tbl_2_upvr.Lifetime)
    task.delay(tbl_2_upvr.Lifetime - 0.5, function() -- Line 54
        --[[ Upvalues[2]:
            [1]: Part_upvr (readonly)
            [2]: TweenService_upvr (copied, readonly)
        ]]
        if Part_upvr.Parent then
            TweenService_upvr:Create(Part_upvr, TweenInfo.new(0.5), {
                Transparency = 1;
                Size = Vector3.new(0, 0, 0);
            }):Play()
        end
    end)
end
local function createTracer_upvr(arg1, arg2) -- Line 62, Named "createTracer"
    --[[ Upvalues[2]:
        [1]: Workspace_upvr (readonly)
        [2]: tbl_2_upvr (readonly)
    ]]
    local Attachment_upvr_2 = Instance.new("Attachment", Workspace_upvr.Terrain)
    local Attachment_upvr = Instance.new("Attachment", Workspace_upvr.Terrain)
    Attachment_upvr_2.Position = arg1
    Attachment_upvr.Position = arg2
    local Beam_upvr = Instance.new("Beam")
    Beam_upvr.Attachment0 = Attachment_upvr_2
    Beam_upvr.Attachment1 = Attachment_upvr
    Beam_upvr.Color = tbl_2_upvr.TracerColor
    Beam_upvr.Width0 = tbl_2_upvr.TracerWidth
    Beam_upvr.Width1 = tbl_2_upvr.TracerWidth
    Beam_upvr.FaceCamera = true
    Beam_upvr.LightEmission = 1
    Beam_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)})
    Beam_upvr.Parent = Workspace_upvr.Terrain
    task.delay(0.1, function() -- Line 83
        --[[ Upvalues[3]:
            [1]: Beam_upvr (readonly)
            [2]: Attachment_upvr_2 (readonly)
            [3]: Attachment_upvr (readonly)
        ]]
        for i = 0, 1, 0.1 do
            Beam_upvr.Transparency = NumberSequence.new(i)
            task.wait(0.03)
        end
        Attachment_upvr_2:Destroy()
        Attachment_upvr:Destroy()
    end)
end
local function processWallbang_upvr(arg1, arg2, arg3) -- Line 93, Named "processWallbang"
    --[[ Upvalues[3]:
        [1]: Workspace_upvr (readonly)
        [2]: createMarker_upvr (readonly)
        [3]: tbl_2_upvr (readonly)
    ]]
    local var30 = arg2 - arg1
    local Magnitude_2 = var30.Magnitude
    local Unit_2 = var30.Unit
    local RaycastParams_new_result1 = RaycastParams.new()
    RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
    local tbl = {}
    tbl[1] = arg3
    local Character = game:GetService("Players").LocalPlayer.Character
    if Character then
        table.insert(tbl, Character)
    end
    RaycastParams_new_result1.FilterDescendantsInstances = tbl
    local any_Raycast_result1_3 = Workspace_upvr:Raycast(arg1, Unit_2 * Magnitude_2, RaycastParams_new_result1)
    if any_Raycast_result1_3 then
        local any_Raycast_result1_2 = Workspace_upvr:Raycast(arg2, -Unit_2 * Magnitude_2, RaycastParams_new_result1)
        if any_Raycast_result1_2 then
            local Magnitude_4 = (any_Raycast_result1_3.Position - any_Raycast_result1_2.Position).Magnitude
            if 0.5 < Magnitude_4 and Magnitude_4 < Magnitude_2 then
                createMarker_upvr(any_Raycast_result1_3.Position, tbl_2_upvr.EntryColor)
                createMarker_upvr(any_Raycast_result1_2.Position, tbl_2_upvr.ExitColor)
            end
        end
    end
end
Workspace_upvr.ChildAdded:Connect(function(arg1) -- Line 134
    --[[ Upvalues[3]:
        [1]: var8_upvw (read and write)
        [2]: createTracer_upvr (readonly)
        [3]: processWallbang_upvr (readonly)
    ]]
    if not var8_upvw then
    elseif arg1.Name == "bulletxdd" then
        task.spawn(function() -- Line 138
            --[[ Upvalues[3]:
                [1]: arg1 (readonly)
                [2]: createTracer_upvr (copied, readonly)
                [3]: processWallbang_upvr (copied, readonly)
            ]]
            task.wait()
            if not arg1 or not arg1.Parent then
            else
                arg1.Transparency = 1
                local CFrame = arg1.CFrame
                local Z = arg1.Size.Z
                local LookVector = CFrame.LookVector
                local var44 = CFrame.Position - (LookVector) * (Z / 2)
                local var45 = CFrame.Position + (LookVector) * (Z / 2)
                createTracer_upvr(var44, var45)
                processWallbang_upvr(var44, var45, arg1)
            end
        end)
    end
end)
local function setEnabled_upvr(arg1, arg2) -- Line 163, Named "setEnabled"
    --[[ Upvalues[6]:
        [1]: var8_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var8_upvw = arg1
    local var46
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var46 = udim2_upvr
        return var46
    end
    if not var8_upvw or not INLINED() then
        var46 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var46;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("sivusuauwall", var8_upvw)
    end
end
TextButton.MouseButton1Click:Connect(function() -- Line 170
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var8_upvw (read and write)
    ]]
    setEnabled_upvr(not var8_upvw, true)
end)
if _G.ConfigSystem then
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 174
        --[[ Upvalues[7]:
            [1]: var8_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "sivusuauwall" then
            var8_upvw = arg2
            if not var8_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle7.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = sivusuauwall
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
        9 [string] = sivusuauwall

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd
        3 [string] = task
        4 [string] = spawn

====================================================================================================

Function Dump: processWallbang

Function Upvalues: processWallbang

Function Constants: processWallbang
        1 [string] = Magnitude
        2 [string] = Unit
        3 [string] = RaycastParams
        4 [string] = new
        6 [string] = Enum
        7 [string] = RaycastFilterType
        8 [string] = Exclude
        10 [string] = FilterType
        11 [string] = game
        13 [string] = Players
        14 [string] = GetService
        15 [string] = LocalPlayer
        16 [string] = Character
        17 [string] = table
        18 [string] = insert
        20 [string] = FilterDescendantsInstances
        21 [string] = Raycast
        22 [string] = Position
        23 [number] = 0.5
        24 [string] = EntryColor
        25 [string] = ExitColor

====================================================================================================

Function Dump: createTracer

Function Upvalues: createTracer

Function Constants: createTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Attachment
        5 [string] = Terrain
        6 [string] = Position
        7 [string] = Beam
        8 [string] = Attachment0
        9 [string] = Attachment1
        10 [string] = TracerColor
        11 [string] = Color
        12 [string] = TracerWidth
        13 [string] = Width0
        14 [string] = Width1
        15 [string] = FaceCamera
        16 [string] = LightEmission
        17 [string] = NumberSequence
        19 [string] = NumberSequenceKeypoint
        21 [string] = Transparency
        22 [string] = Parent
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================

Function Dump: createMarker

Function Upvalues: createMarker

Function Constants: createMarker
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = wbmhgfhf
        6 [string] = Name
        7 [string] = Anchored
        8 [string] = CanCollide
        9 [string] = CanQuery
        10 [string] = CastShadow
        11 [string] = Enum
        12 [string] = Material
        13 [string] = Neon
        15 [string] = Color
        16 [string] = MarkerSize
        17 [string] = Size
        18 [string] = CFrame
        20 [string] = Parent
        21 [number] = 0.5
        22 [string] = Transparency
        23 [string] = TweenInfo
        25 [number] = 0.3
        27 [string] = Create
        28 [string] = Play
        29 [string] = Lifetime
        30 [string] = AddItem
        31 [string] = task
        32 [string] = delay

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = createTracer
        3 [function] = processWallbang

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd
        3 [string] = task
        4 [string] = spawn

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
        9 [string] = sivusuauwall

====================================================================================================

Function Dump: processWallbang

Function Upvalues: processWallbang
        1 [Instance] = Workspace
        2 [function] = createMarker
        3 [table]:
        3 [table] table: 0xbcbea866f4825d85
                1 [Color3] = 0.196078, 1, 0.196078
                2 [number] = 3
                3 [number] = 0.1
                4 [Color3] = 1, 0.196078, 0.196078
                5 [Vector3] = 0.5, 0.5, 0.5
                6 [ColorSequence] = 0 1 1 1 0 1 1 1 1 0 

Function Constants: processWallbang
        1 [string] = Magnitude
        2 [string] = Unit
        3 [string] = RaycastParams
        4 [string] = new
        6 [string] = Enum
        7 [string] = RaycastFilterType
        8 [string] = Exclude
        9 [EnumItem] = Enum.RaycastFilterType.Exclude
        10 [string] = FilterType
        11 [string] = game
        12 [Instance] = Ugc
        13 [string] = Players
        14 [string] = GetService
        15 [string] = LocalPlayer
        16 [string] = Character
        17 [string] = table
        18 [string] = insert
        20 [string] = FilterDescendantsInstances
        21 [string] = Raycast
        22 [string] = Position
        23 [number] = 0.5
        24 [string] = EntryColor
        25 [string] = ExitColor

====================================================================================================

Function Dump: createMarker

Function Upvalues: createMarker
        1 [table] (Recursive table detected)
        2 [Instance] = Workspace
        3 [Instance] = TweenService
        4 [Instance] = Debris

Function Constants: createMarker
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = wbmhgfhf
        6 [string] = Name
        7 [string] = Anchored
        8 [string] = CanCollide
        9 [string] = CanQuery
        10 [string] = CastShadow
        11 [string] = Enum
        12 [string] = Material
        13 [string] = Neon
        14 [EnumItem] = Enum.Material.Neon
        15 [string] = Color
        16 [string] = MarkerSize
        17 [string] = Size
        18 [string] = CFrame
        20 [string] = Parent
        21 [number] = 0.5
        22 [string] = Transparency
        23 [string] = TweenInfo
        25 [number] = 0.3
        27 [string] = Create
        28 [string] = Play
        29 [string] = Lifetime
        30 [string] = AddItem
        31 [string] = task
        32 [string] = delay

====================================================================================================

Function Dump: createTracer

Function Upvalues: createTracer
        1 [Instance] = Workspace
        2 [table] (Recursive table detected)

Function Constants: createTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Attachment
        5 [string] = Terrain
        6 [string] = Position
        7 [string] = Beam
        8 [string] = Attachment0
        9 [string] = Attachment1
        10 [string] = TracerColor
        11 [string] = Color
        12 [string] = TracerWidth
        13 [string] = Width0
        14 [string] = Width1
        15 [string] = FaceCamera
        16 [string] = LightEmission
        17 [string] = NumberSequence
        19 [string] = NumberSequenceKeypoint
        21 [string] = Transparency
        22 [string] = Parent
        23 [string] = task
        24 [string] = delay
        26 [number] = 0.1

====================================================================================================
]]


----// XEClient/visual_skeletonesppp_1769302374.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame2.toggle15.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:52:51
-- Luau version 6, Types version 3
-- Time taken: 0.003779 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local tracers_upvr = script.Parent.Parent:FindFirstChild("tracers")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function setAvailableEspEnabled_upvr(arg1, arg2) -- Line 16, Named "setAvailableEspEnabled"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: tracers_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var8
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var8 = udim2_upvr
        return var8
    end
    if not var7_upvw or not INLINED() then
        var8 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var8;
    }):Play()
    if tracers_upvr then
        tracers_upvr.Value = var7_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("skeletonesppp", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 35
    --[[ Upvalues[2]:
        [1]: setAvailableEspEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setAvailableEspEnabled_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.skeletonesppp = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 48
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: tracers_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "skeletonesppp" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if tracers_upvr then
                tracers_upvr.Value = var7_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame2.toggle15.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = skeletonesppp
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

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
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = skeletonesppp

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = tracers
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = skeletonesppp
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAvailableEspEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAvailableEspEnabled

Function Upvalues: setAvailableEspEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = tracers

Function Constants: setAvailableEspEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = skeletonesppp

====================================================================================================
]]


----// XEClient/visual_tracerssssesp_1769302365.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame2.toggle14.LocalScript
-- Took 0.29s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:52:41
-- Luau version 6, Types version 3
-- Time taken: 0.003777 seconds

local TweenService_upvr = game:GetService("TweenService")
local Frame2_upvr = script.Parent.Frame2
local tracers_upvr = script.Parent.Parent:FindFirstChild("tracers")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var7_upvw = false
local function setAvailableEspEnabled_upvr(arg1, arg2) -- Line 16, Named "setAvailableEspEnabled"
    --[[ Upvalues[7]:
        [1]: var7_upvw (read and write)
        [2]: udim2_upvr (readonly)
        [3]: udim2_upvr_2 (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
        [7]: tracers_upvr (readonly)
    ]]
    var7_upvw = arg1
    local var8
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var8 = udim2_upvr
        return var8
    end
    if not var7_upvw or not INLINED() then
        var8 = udim2_upvr_2
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var8;
    }):Play()
    if tracers_upvr then
        tracers_upvr.Value = var7_upvw
    end
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("tracerssssesp", var7_upvw)
    end
end
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 35
    --[[ Upvalues[2]:
        [1]: setAvailableEspEnabled_upvr (readonly)
        [2]: var7_upvw (read and write)
    ]]
    setAvailableEspEnabled_upvr(not var7_upvw, true)
end)
task.wait(1)
if _G.ConfigSystem then
    _G.ConfigSystem.settings.tracerssssesp = var7_upvw
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 48
        --[[ Upvalues[8]:
            [1]: var7_upvw (read and write)
            [2]: udim2_upvr (readonly)
            [3]: udim2_upvr_2 (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: tracers_upvr (readonly)
            [8]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "tracerssssesp" then
            var7_upvw = arg2
            if not var7_upvw or not udim2_upvr then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr_2;
            }):Play()
            if tracers_upvr then
                tracers_upvr.Value = var7_upvw
            end
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame2.toggle14.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = tracerssssesp
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

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
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = tracerssssesp

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = tracers
        8 [function] = Unknown Name

Function Constants: Unknown Name
        1 [string] = tracerssssesp
        2 [string] = Position
        4 [string] = Create
        5 [string] = Play
        6 [string] = Value

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setAvailableEspEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: setAvailableEspEnabled

Function Upvalues: setAvailableEspEnabled
        1 [boolean] = false
        2 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        3 [UDim2] = {0, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [Instance] = Frame2
        6 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint
        7 [Instance] = tracers

Function Constants: setAvailableEspEnabled
        1 [string] = Position
        3 [string] = Create
        4 [string] = Play
        5 [string] = Value
        6 [string] = _G
        8 [string] = ConfigSystem
        9 [string] = onSettingChanged
        10 [string] = tracerssssesp

====================================================================================================
]]


----// XEClient/visual_trafccer_1769302517.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle6.LocalScript
-- Took 0.31s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:55:15
-- Luau version 6, Types version 3
-- Time taken: 0.019338 seconds

local TweenService_upvr = game:GetService("TweenService")
local Workspace_upvr = game:GetService("Workspace")
local Debris_upvr = game:GetService("Debris")
local TextButton = script.Parent:WaitForChild("TextButton", 5)
if not TextButton then
    TextButton = script.Parent.TextButton
end
local Frame2_upvr = script.Parent:WaitForChild("Frame2", 5)
if not Frame2_upvr then
    Frame2_upvr = script.Parent.Frame2
end
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local udim2_upvr_2 = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local var9_upvw = false
local tbl_upvr = {
    dur = 0.75;
    tex = "rbxassetid://93746968407218";
    alpha = 0.03;
    wGlow = 0.35;
    wCore = 0.1;
    wStatic = 0.45;
    col = ColorSequence.new(Color3.fromRGB(255, 255, 255));
}
local function _(arg1, arg2) -- Line 25, Named "anchor"
    local Part = Instance.new("Part")
    Part.Anchored = true
    Part.Transparency = 1
    Part.CanCollide = false
    Part.CanQuery = false
    Part.CanTouch = false
    Part.Size = Vector3.new(0, 0, 0)
    Part.Position = arg2
    Part.Parent = arg1
    return Part
end
local function beam_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 38, Named "beam"
    --[[ Upvalues[1]:
        [1]: tbl_upvr (readonly)
    ]]
    local Beam = Instance.new("Beam")
    Beam.Attachment0 = arg1
    Beam.Attachment1 = arg2
    Beam.Texture = tbl_upvr.tex
    Beam.TextureMode = Enum.TextureMode.Wrap
    Beam.TextureLength = arg6
    Beam.TextureSpeed = arg5
    Beam.LightEmission = 1
    Beam.LightInfluence = 0
    Beam.FaceCamera = true
    Beam.Color = tbl_upvr.col
    Beam.Transparency = NumberSequence.new(arg4)
    Beam.Width0 = arg3
    Beam.Width1 = arg3
    Beam.CurveSize0 = 0
    Beam.CurveSize1 = 0
    Beam.ZOffset = arg7 or 0
    return Beam
end
local function spawnImpact_upvr(arg1) -- Line 59, Named "spawnImpact"
    --[[ Upvalues[2]:
        [1]: Workspace_upvr (readonly)
        [2]: Debris_upvr (readonly)
    ]]
    local Part_3 = Instance.new("Part")
    Part_3.Anchored = true
    Part_3.Transparency = 1
    Part_3.CanCollide = false
    Part_3.Position = arg1
    Part_3.Parent = Workspace_upvr
    Debris_upvr:AddItem(Part_3, 2)
    for _, v in pairs({{
        tex = "rbxassetid://3270017";
        size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 2.5)});
        drag = 0;
    }, {
        tex = "rbxassetid://242203166";
        size = NumberSequence.new(1, 0);
        drag = 0;
    }, {
        tex = "rbxassetid://243661300";
        size = NumberSequence.new(0.2, 0);
        drag = 8;
        speed = NumberRange.new(10, 25);
    }}) do
        local ParticleEmitter = Instance.new("ParticleEmitter", Part_3)
        ParticleEmitter.Texture = v.tex
        ParticleEmitter.Size = v.size
        ParticleEmitter.Drag = v.drag
        ParticleEmitter.Lifetime = NumberRange.new(0.2, 0.5)
        ParticleEmitter.Rate = 0
        local speed = v.speed
        if not speed then
            speed = NumberRange.new(0)
        end
        ParticleEmitter.Speed = speed
        ParticleEmitter.LightEmission = 1
        ParticleEmitter:Emit(5)
    end
end
local function spawnTracer_upvr(arg1, arg2) -- Line 85, Named "spawnTracer"
    --[[ Upvalues[6]:
        [1]: Workspace_upvr (readonly)
        [2]: beam_upvr (readonly)
        [3]: tbl_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: spawnImpact_upvr (readonly)
        [6]: Debris_upvr (readonly)
    ]]
    local Folder = Instance.new("Folder")
    Folder.Name = "Lightning_FX"
    Folder.Parent = Workspace_upvr
    local Part_2 = Instance.new("Part")
    Part_2.Anchored = true
    Part_2.Transparency = 1
    Part_2.CanCollide = false
    Part_2.CanQuery = false
    Part_2.CanTouch = false
    Part_2.Size = Vector3.new(0, 0, 0)
    Part_2.Position = arg1
    Part_2.Parent = Folder
    local Part_4 = Instance.new("Part")
    Part_4.Anchored = true
    Part_4.Transparency = 1
    Part_4.CanCollide = false
    Part_4.CanQuery = false
    Part_4.CanTouch = false
    Part_4.Size = Vector3.new(0, 0, 0)
    Part_4.Position = arg2
    Part_4.Parent = Folder
    local Attachment = Instance.new("Attachment")
    Attachment.Parent = Part_2
    local Attachment_2 = Instance.new("Attachment")
    Attachment_2.Parent = Part_4
    local beam_result1 = beam_upvr(Attachment, Attachment_2, tbl_upvr.wGlow, tbl_upvr.alpha, 14, 1.35, 0)
    beam_result1.Parent = Folder
    local beam_result1_2 = beam_upvr(Attachment, Attachment_2, tbl_upvr.wCore, 0, 0, 1.35, 0.12)
    beam_result1_2.Parent = Folder
    local beam_result1_3 = beam_upvr(Attachment, Attachment_2, tbl_upvr.wStatic, 0.35, 22, 0.9, -0.12)
    beam_result1_3.Parent = Folder
    local TweenInfo_new_result1 = TweenInfo.new(tbl_upvr.dur, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService_upvr:Create(beam_result1, TweenInfo_new_result1, {
        Width0 = 0;
        Width1 = 0;
    }):Play()
    TweenService_upvr:Create(beam_result1_2, TweenInfo_new_result1, {
        Width0 = 0;
        Width1 = 0;
    }):Play()
    TweenService_upvr:Create(beam_result1_3, TweenInfo_new_result1, {
        Width0 = 0;
        Width1 = 0;
    }):Play()
    spawnImpact_upvr(arg2)
    Debris_upvr:AddItem(Folder, tbl_upvr.dur + 1.2)
end
Workspace_upvr.ChildAdded:Connect(function(arg1) -- Line 117
    --[[ Upvalues[2]:
        [1]: var9_upvw (read and write)
        [2]: spawnTracer_upvr (readonly)
    ]]
    if not var9_upvw then
    else
        if arg1.Name ~= "bulletxdd_fx" or not arg1:IsA("Folder") then return end
        task.spawn(function() -- Line 121
            --[[ Upvalues[2]:
                [1]: arg1 (readonly)
                [2]: spawnTracer_upvr (copied, readonly)
            ]]
            task.wait()
            if not arg1 or not arg1.Parent then
            else
                local Mover = arg1:FindFirstChild("Mover")
                local Trace = arg1:FindFirstChild("Trace", true)
                if not Mover or not Trace then return end
                Trace.Enabled = false
                local Attachment0 = Trace.Attachment0
                if not Attachment0 or not Trace.Attachment1 then return end
                local WorldPosition = Attachment0.WorldPosition
                spawnTracer_upvr(WorldPosition, Mover.CFrame.LookVector * 1000 + WorldPosition)
            end
        end)
    end
end)
local function setEnabled_upvr(arg1, arg2) -- Line 142, Named "setEnabled"
    --[[ Upvalues[6]:
        [1]: var9_upvw (read and write)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: Frame2_upvr (readonly)
        [6]: TweenInfo_new_result1_upvr (readonly)
    ]]
    var9_upvw = arg1
    local var46
    local function INLINED() -- Internal function, doesn't exist in bytecode
        var46 = udim2_upvr_2
        return var46
    end
    if not var9_upvw or not INLINED() then
        var46 = udim2_upvr
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = var46;
    }):Play()
    if arg2 and _G.ConfigSystem then
        _G.ConfigSystem.onSettingChanged("trafccer", var9_upvw)
    end
end
TextButton.MouseButton1Click:Connect(function() -- Line 149
    --[[ Upvalues[2]:
        [1]: setEnabled_upvr (readonly)
        [2]: var9_upvw (read and write)
    ]]
    setEnabled_upvr(not var9_upvw, true)
end)
if _G.ConfigSystem then
    local onConfigLoad_upvr = _G.ConfigSystem.onConfigLoad
    _G.ConfigSystem.onConfigLoad = function(arg1, arg2) -- Line 153
        --[[ Upvalues[7]:
            [1]: var9_upvw (read and write)
            [2]: udim2_upvr_2 (readonly)
            [3]: udim2_upvr (readonly)
            [4]: TweenService_upvr (readonly)
            [5]: Frame2_upvr (readonly)
            [6]: TweenInfo_new_result1_upvr (readonly)
            [7]: onConfigLoad_upvr (readonly)
        ]]
        if arg1 == "trafccer" then
            var9_upvw = arg2
            if not var9_upvw or not udim2_upvr_2 then
            end
            TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
                Position = udim2_upvr;
            }):Play()
        end
        if onConfigLoad_upvr then
            onConfigLoad_upvr(arg1, arg2)
        end
    end
end

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame6.toggle6.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = trafccer
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
        9 [string] = trafccer

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd_fx
        3 [string] = Folder
        4 [string] = IsA
        5 [string] = task
        6 [string] = spawn

====================================================================================================

Function Dump: spawnTracer

Function Upvalues: spawnTracer

Function Constants: spawnTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Folder
        5 [string] = Lightning_FX
        6 [string] = Name
        7 [string] = Parent
        8 [string] = Part
        9 [string] = Anchored
        10 [string] = Transparency
        11 [string] = CanCollide
        12 [string] = CanQuery
        13 [string] = CanTouch
        14 [Vector3] = 0, 0, 0
        15 [string] = Size
        16 [string] = Position
        17 [string] = Attachment
        18 [string] = wGlow
        19 [string] = alpha
        20 [number] = 1.35
        21 [string] = wCore
        22 [number] = 0.12
        23 [string] = wStatic
        24 [number] = 0.35
        25 [number] = 0.9
        26 [number] = -0.12
        27 [string] = TweenInfo
        29 [string] = dur
        30 [string] = Enum
        31 [string] = EasingStyle
        32 [string] = Quad
        34 [string] = EasingDirection
        35 [string] = Out
        37 [string] = Width0
        38 [string] = Width1
        40 [string] = Create
        41 [string] = Play
        42 [number] = 1.2
        43 [string] = AddItem

====================================================================================================

Function Dump: spawnImpact

Function Upvalues: spawnImpact

Function Constants: spawnImpact
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = Anchored
        6 [string] = Transparency
        7 [string] = CanCollide
        8 [string] = Position
        9 [string] = Parent
        10 [string] = AddItem
        11 [string] = tex
        12 [string] = size
        13 [string] = drag
        15 [string] = rbxassetid://3270017
        16 [string] = NumberSequence
        18 [string] = NumberSequenceKeypoint
        20 [number] = 0.5
        21 [number] = 2.5
        22 [string] = rbxassetid://242203166
        23 [string] = speed
        25 [string] = rbxassetid://243661300
        26 [number] = 0.2
        27 [string] = NumberRange
        29 [string] = pairs
        31 [string] = ParticleEmitter
        32 [string] = Texture
        33 [string] = Size
        34 [string] = Drag
        35 [string] = Lifetime
        36 [string] = Rate
        37 [string] = Speed
        38 [string] = LightEmission
        39 [string] = Emit

====================================================================================================

Function Dump: beam

Function Upvalues: beam

Function Constants: beam
        1 [string] = Instance
        2 [string] = new
        4 [string] = Beam
        5 [string] = Attachment0
        6 [string] = Attachment1
        7 [string] = tex
        8 [string] = Texture
        9 [string] = Enum
        10 [string] = TextureMode
        11 [string] = Wrap
        13 [string] = TextureLength
        14 [string] = TextureSpeed
        15 [string] = LightEmission
        16 [string] = LightInfluence
        17 [string] = FaceCamera
        18 [string] = col
        19 [string] = Color
        20 [string] = NumberSequence
        22 [string] = Transparency
        23 [string] = Width0
        24 [string] = Width1
        25 [string] = CurveSize0
        26 [string] = CurveSize1
        27 [number] = 0
        28 [string] = ZOffset

====================================================================================================

Function Dump: anchor

Function Upvalues: anchor

Function Constants: anchor
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = Anchored
        6 [string] = Transparency
        7 [string] = CanCollide
        8 [string] = CanQuery
        9 [string] = CanTouch
        10 [Vector3] = 0, 0, 0
        11 [string] = Size
        12 [string] = Position
        13 [string] = Parent

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [function] = setEnabled
        2 [boolean] = false

Function Constants: Unknown Name

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [boolean] = false
        2 [function] = spawnTracer

Function Constants: Unknown Name
        1 [string] = Name
        2 [string] = bulletxdd_fx
        3 [string] = Folder
        4 [string] = IsA
        5 [string] = task
        6 [string] = spawn

====================================================================================================

Function Dump: spawnImpact

Function Upvalues: spawnImpact
        1 [Instance] = Workspace
        2 [Instance] = Debris

Function Constants: spawnImpact
        1 [string] = Instance
        2 [string] = new
        4 [string] = Part
        5 [string] = Anchored
        6 [string] = Transparency
        7 [string] = CanCollide
        8 [string] = Position
        9 [string] = Parent
        10 [string] = AddItem
        11 [string] = tex
        12 [string] = size
        13 [string] = drag
        15 [string] = rbxassetid://3270017
        16 [string] = NumberSequence
        18 [string] = NumberSequenceKeypoint
        20 [number] = 0.5
        21 [number] = 2.5
        22 [string] = rbxassetid://242203166
        23 [string] = speed
        25 [string] = rbxassetid://243661300
        26 [number] = 0.2
        27 [string] = NumberRange
        29 [string] = pairs
        31 [string] = ParticleEmitter
        32 [string] = Texture
        33 [string] = Size
        34 [string] = Drag
        35 [string] = Lifetime
        36 [string] = Rate
        37 [string] = Speed
        38 [string] = LightEmission
        39 [string] = Emit

====================================================================================================

Function Dump: beam

Function Upvalues: beam
        1 [table]:
        1 [table] table: 0x82f9aaea471de055
                1 [number] = 0.35
                2 [number] = 0.75
                3 [ColorSequence] = 0 1 1 1 0 1 1 1 1 0 
                4 [string] = rbxassetid://93746968407218
                5 [number] = 0.45
                6 [number] = 0.03
                7 [number] = 0.1

Function Constants: beam
        1 [string] = Instance
        2 [string] = new
        4 [string] = Beam
        5 [string] = Attachment0
        6 [string] = Attachment1
        7 [string] = tex
        8 [string] = Texture
        9 [string] = Enum
        10 [string] = TextureMode
        11 [string] = Wrap
        12 [EnumItem] = Enum.TextureMode.Wrap
        13 [string] = TextureLength
        14 [string] = TextureSpeed
        15 [string] = LightEmission
        16 [string] = LightInfluence
        17 [string] = FaceCamera
        18 [string] = col
        19 [string] = Color
        20 [string] = NumberSequence
        22 [string] = Transparency
        23 [string] = Width0
        24 [string] = Width1
        25 [string] = CurveSize0
        26 [string] = CurveSize1
        27 [number] = 0
        28 [string] = ZOffset

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
        9 [string] = trafccer

====================================================================================================

Function Dump: spawnTracer

Function Upvalues: spawnTracer
        1 [Instance] = Workspace
        2 [function] = beam
        3 [table] (Recursive table detected)
        4 [Instance] = TweenService
        5 [function] = spawnImpact
        6 [Instance] = Debris

Function Constants: spawnTracer
        1 [string] = Instance
        2 [string] = new
        4 [string] = Folder
        5 [string] = Lightning_FX
        6 [string] = Name
        7 [string] = Parent
        8 [string] = Part
        9 [string] = Anchored
        10 [string] = Transparency
        11 [string] = CanCollide
        12 [string] = CanQuery
        13 [string] = CanTouch
        14 [Vector3] = 0, 0, 0
        15 [string] = Size
        16 [string] = Position
        17 [string] = Attachment
        18 [string] = wGlow
        19 [string] = alpha
        20 [number] = 1.35
        21 [string] = wCore
        22 [number] = 0.12
        23 [string] = wStatic
        24 [number] = 0.35
        25 [number] = 0.9
        26 [number] = -0.12
        27 [string] = TweenInfo
        29 [string] = dur
        30 [string] = Enum
        31 [string] = EasingStyle
        32 [string] = Quad
        33 [EnumItem] = Enum.EasingStyle.Quad
        34 [string] = EasingDirection
        35 [string] = Out
        36 [EnumItem] = Enum.EasingDirection.Out
        37 [string] = Width0
        38 [string] = Width1
        40 [string] = Create
        41 [string] = Play
        42 [number] = 1.2
        43 [string] = AddItem

====================================================================================================
]]


----// XEClient/visual_unknown_1769302305.lua
-- Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle4.LocalScript
-- Took 0.28s to decompile.
-- Executor: Delta (1.1.704.1060)

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-01-25 00:51:43
-- Luau version 6, Types version 3
-- Time taken: 0.002494 seconds

local Frame2_upvr = script.Parent.Frame2
local udim2_upvr_2 = UDim2.new(0, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local udim2_upvr = UDim2.new(0.609, 0, Frame2_upvr.Position.Y.Scale, Frame2_upvr.Position.Y.Offset)
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
script.Parent.TextButton.MouseButton1Click:Connect(function() -- Line 9
    --[[ Upvalues[5]:
        [1]: Frame2_upvr (readonly)
        [2]: udim2_upvr_2 (readonly)
        [3]: udim2_upvr (readonly)
        [4]: TweenService_upvr (readonly)
        [5]: TweenInfo_new_result1_upvr (readonly)
    ]]
    -- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
    local var7
    if 0.1 >= Frame2_upvr.Position.X.Scale then
        var7 = false
    else
        var7 = true
    end
    if not var7 or not udim2_upvr_2 then
    end
    TweenService_upvr:Create(Frame2_upvr, TweenInfo_new_result1_upvr, {
        Position = udim2_upvr;
    }):Play()
end)

-- // Function Dumper made by King.Kevin
-- // Script Path: game:GetService("Players").quit_xyz.PlayerGui.ScreenGui.Frame.Components.visual.ScrollingFrame.Frame.toggle4.LocalScript

--[[
Function Dump: Unknown Name

Function Upvalues: Unknown Name

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = X
        3 [string] = Scale
        4 [number] = 0.1
        6 [string] = Create
        7 [string] = Play

====================================================================================================

Function Dump: Unknown Name

Function Upvalues: Unknown Name
        1 [Instance] = Frame2
        2 [UDim2] = {0, 0}, {-0.191819623, 0}
        3 [UDim2] = {0.609000027, 0}, {-0.191819623, 0}
        4 [Instance] = TweenService
        5 [TweenInfo] = Time:0.35 DelayTime:0 RepeatCount:0 Reverses:False EasingDirection:Out EasingStyle:Quint

Function Constants: Unknown Name
        1 [string] = Position
        2 [string] = X
        3 [string] = Scale
        4 [number] = 0.1
        6 [string] = Create
        7 [string] = Play

====================================================================================================
]]









