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
