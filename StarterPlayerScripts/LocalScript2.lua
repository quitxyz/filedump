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
