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
