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
