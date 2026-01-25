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
