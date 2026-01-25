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
