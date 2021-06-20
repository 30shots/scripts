local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local playerTextBox = Instance.new("TextBox")
local label = Instance.new("TextLabel")
local teleportBtn = Instance.new("TextButton")
local title = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.384118199, 0, 0.407862425, 0)
Frame.Size = UDim2.new(0, 250, 0, 150)
Frame.Draggable = true
Frame.Active = true
Frame.Selectable = true

playerTextBox.Name = "playerTextBox"
playerTextBox.Parent = Frame
playerTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerTextBox.Position = UDim2.new(0.100000001, 0, 0.400000006, 0)
playerTextBox.Size = UDim2.new(0, 200, 0, 40)
playerTextBox.Font = Enum.Font.SourceSans
playerTextBox.Text = ""
playerTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
playerTextBox.TextSize = 14.000

label.Name = "label"
label.Parent = Frame
label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.Position = UDim2.new(0.100000001, 0, 0.200000003, 0)
label.Size = UDim2.new(0, 200, 0, 20)
label.Font = Enum.Font.SourceSans
label.Text = "Enter Player Name:"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextSize = 14.000

teleportBtn.Name = "teleportBtn"
teleportBtn.Parent = Frame
teleportBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleportBtn.Position = UDim2.new(0.100000001, 0, 0.720000029, 0)
teleportBtn.Size = UDim2.new(0, 200, 0, 34)
teleportBtn.Font = Enum.Font.SourceSans
teleportBtn.Text = "Teleport"
teleportBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
teleportBtn.TextSize = 14.000

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.247999996, 0, 0.0533333346, 0)
title.Size = UDim2.new(0, 125, 0, 14)
title.Font = Enum.Font.SourceSans
title.Text = "30shots Teleport"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

plrs = game:GetService("Players")
plr  = plrs.LocalPlayer

teleportBtn.MouseButton1Down:Connect(function()
    print(tostring(playerTextBox.Text))
    plr.Character.HumanoidRootPart.CFrame = plrs[tostring(playerTextBox.Text)].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
end)
