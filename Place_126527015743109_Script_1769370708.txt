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
