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
