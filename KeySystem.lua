-- Phạm Nghĩa Hub | Key System UI
local Key = "phamnghia123"
local HttpGet = game:HttpGet

-- UI
local GUI = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", GUI)
local Title = Instance.new("TextLabel", Frame)
local Input = Instance.new("TextBox", Frame)
local Submit = Instance.new("TextButton", Frame)

GUI.Name = "KeySystemUI"
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0

Title.Text = "🔐 Phạm Nghĩa Hub - Nhập Key"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

Input.PlaceholderText = "Nhập Key Tại Đây..."
Input.Size = UDim2.new(1, -20, 0, 40)
Input.Position = UDim2.new(0, 10, 0, 50)
Input.Font = Enum.Font.Gotham
Input.TextColor3 = Color3.new(1, 1, 1)
Input.TextSize = 16
Input.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Input.BorderSizePixel = 0

Submit.Text = "✅ Kiểm tra key"
Submit.Size = UDim2.new(1, -20, 0, 30)
Submit.Position = UDim2.new(0, 10, 0, 100)
Submit.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
Submit.Font = Enum.Font.GothamBold
Submit.TextSize = 16
Submit.TextColor3 = Color3.new(1, 1, 1)
Submit.BorderSizePixel = 0

-- Kiểm tra key
Submit.MouseButton1Click:Connect(function()
    if Input.Text == Key then
        GUI:Destroy()
        loadstring(HttpGet("https://raw.githubusercontent.com/anhteo94/HanhTrinhMoi/main/PhamNghiaHub.lua"))()
    else
        game.Players.LocalPlayer:Kick("❌ Sai key! Mua tại TikTok: @evening01240")
    end
end)
