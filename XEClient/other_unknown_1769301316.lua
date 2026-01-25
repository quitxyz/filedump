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
