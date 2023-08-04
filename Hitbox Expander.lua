local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local GuiLabel = Instance.new("TextLabel")
local SizeChange = Instance.new("TextBox")
local ChangeSize = Instance.new("TextLabel")
local Enter = Instance.new("TextButton")
local Rainbow = Instance.new("TextButton")
local ChangeTransparency = Instance.new("TextLabel")
local Transparency = Instance.new("TextBox")
local GuiLabel_2 = Instance.new("TextLabel")


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderColor3 = Color3.fromRGB(170, 0, 255)
Frame.BorderSizePixel = 6
Frame.Position = UDim2.new(0.0886889473, 0, 0.290801167, 0)
Frame.Size = UDim2.new(0, 246, 0, 179)
Frame.Draggable = true

GuiLabel.Name = "GuiLabel"
GuiLabel.Parent = Frame
GuiLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GuiLabel.BackgroundTransparency = 1.000
GuiLabel.Position = UDim2.new(0.274638087, 0, -0.0368590131, 0)
GuiLabel.Size = UDim2.new(0, 105, 0, 45)
GuiLabel.Font = Enum.Font.Fantasy
GuiLabel.Text = "christian's Hitbox Extender"
GuiLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
GuiLabel.TextSize = 14.000

SizeChange.Name = "SizeChange"
SizeChange.Parent = Frame
SizeChange.BackgroundColor3 = Color3.fromRGB(98, 96, 95)
SizeChange.BorderColor3 = Color3.fromRGB(80, 76, 76)
SizeChange.Position = UDim2.new(0.0809041932, 0, 0.302300155, 0)
SizeChange.Size = UDim2.new(0, 45, 0, 42)
SizeChange.Font = Enum.Font.SourceSans
SizeChange.Text = ""
SizeChange.TextColor3 = Color3.fromRGB(0, 0, 0)
SizeChange.TextSize = 14.000

ChangeSize.Name = "ChangeSize"
ChangeSize.Parent = Frame
ChangeSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChangeSize.BackgroundTransparency = 1.000
ChangeSize.Position = UDim2.new(0.274638116, 0, 0.298336506, 0)
ChangeSize.Size = UDim2.new(0, 105, 0, 45)
ChangeSize.Font = Enum.Font.Fantasy
ChangeSize.Text = "Change Size"
ChangeSize.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeSize.TextSize = 14.000

Enter.Name = "Enter"
Enter.Parent = Frame
Enter.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
Enter.Position = UDim2.new(0.72349751, 0, 0.284435987, 0)
Enter.Size = UDim2.new(0, 52, 0, 50)
Enter.Font = Enum.Font.SourceSans
Enter.Text = "Enter"
Enter.TextColor3 = Color3.fromRGB(0, 0, 0)
Enter.TextSize = 14.000
Enter.TextTransparency = 0.400

Rainbow.Name = "Rainbow"
Rainbow.Parent = Frame
Rainbow.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Rainbow.Position = UDim2.new(0.72349751, 0, 0.658737659, 0)
Rainbow.Size = UDim2.new(0, 52, 0, 50)
Rainbow.Font = Enum.Font.SourceSans
Rainbow.Text = "Rainbow"
Rainbow.TextColor3 = Color3.fromRGB(0, 0, 0)
Rainbow.TextSize = 14.000
Rainbow.TextTransparency = 0.400

ChangeTransparency.Name = "ChangeTransparency"
ChangeTransparency.Parent = Frame
ChangeTransparency.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChangeTransparency.BackgroundTransparency = 1.000
ChangeTransparency.Position = UDim2.new(0.274638116, 0, 0.65029186, 0)
ChangeTransparency.Size = UDim2.new(0, 105, 0, 45)
ChangeTransparency.Font = Enum.Font.Fantasy
ChangeTransparency.Text = "Transparency"
ChangeTransparency.TextColor3 = Color3.fromRGB(255, 255, 255)
ChangeTransparency.TextSize = 14.000

Transparency.Name = "Transparency"
Transparency.Parent = Frame
Transparency.BackgroundColor3 = Color3.fromRGB(98, 96, 95)
Transparency.BorderColor3 = Color3.fromRGB(80, 76, 76)
Transparency.Position = UDim2.new(0.0809041932, 0, 0.659842014, 0)
Transparency.Size = UDim2.new(0, 45, 0, 42)
Transparency.Font = Enum.Font.SourceSans
Transparency.Text = ""
Transparency.TextColor3 = Color3.fromRGB(0, 0, 0)
Transparency.TextSize = 14.000

GuiLabel_2.Name = "GuiLabel"
GuiLabel_2.Parent = Frame
GuiLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GuiLabel_2.BackgroundTransparency = 1.000
GuiLabel_2.Position = UDim2.new(0.27057305, 0, 0.0692862347, 0)
GuiLabel_2.Size = UDim2.new(0, 105, 0, 45)
GuiLabel_2.Font = Enum.Font.Fantasy
GuiLabel_2.Text = "T to close, P to open"
GuiLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
GuiLabel_2.TextSize = 14.000

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.T then
        Frame.Visible = false
end 
end)
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.P then
        Frame.Visible = true
end 
end)

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.LeftAlt then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
            pcall(function()
                v.Character.HumanoidRootPart.Size = Vector3.new(SizeChange.Text, SizeChange.Text, SizeChange.Text)
                v.Character.HumanoidRootPart.Transparency = Transparency.Text
                v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
                v.Character.HumanoidRootPart.Material = "Neon"
                v.Character.HumanoidRootPart.CanCollide = false
            end)
        end
        end
        end
end)
    
Enter.MouseButton1Click:Connect(function()
for i, v in pairs(game.Players:GetPlayers()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        pcall(function()
        v.Character.HumanoidRootPart.Size = Vector3.new(SizeChange.Text, SizeChange.Text, SizeChange.Text)
        v.Character.HumanoidRootPart.Transparency = Transparency.Text
        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
        v.Character.HumanoidRootPart.Material = "Neon"
        v.Character.HumanoidRootPart.CanCollide = false


    Rainbow.MouseButton1Click:Connect(function()
        local TweenService = game:GetService("TweenService")
        local part = v.Character.HumanoidRootPart
        local TweeningInformation = TweenInfo.new(
        2,
        Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out,
        753475938457843579348573,
        true,
        0
        )

        local PartProperties = {
        Color = Color3.fromRGB(255,0,0)
        }

        local Tween = TweenService:Create(part,TweeningInformation,PartProperties)
        Tween:Play()
        Rainbow.BackgroundColor3 = Color3.fromRGB(0,225,0)
        
        
end)
end)
end
end
end)
