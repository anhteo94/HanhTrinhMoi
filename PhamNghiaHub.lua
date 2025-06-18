-- Phạm Nghĩa Hub (v1.0)
-- Yêu cầu key: phamnghia123

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pham Nghia Hub", "Ocean")

-- ===== HỆ THỐNG KEY =====
local key = "phamnghia123"
local input = Window:NewTab("🔒 Key")
local keySection = input:NewSection("Nhập KEY")
keySection:NewTextBox("Key:", "Nhập key để tiếp tục", function(v)
    if v ~= key then
        game.Players.LocalPlayer:Kick("Key sai. Liên hệ @".."AnhteoTikTok")
    else
        Library:CreateLib("") -- mở UI tiếp
        game.StarterGui:SetCore("SendNotification", {
            Title = "✅", Text = "Key hợp lệ! Hub đang được tải...";
            Duration = 3
        })
        delay(1, function()
            Window:RemoveTab(input)
            Window:Init() -- khởi tạo UI chính
        end)
    end
end)

-- Hàm hỗ trợ tạo UI chỉ chạy sau xác thực
function Window:Init()
    -- Thông Tin chung
    do
        local t = Window:NewTab("📌 Thông Tin")
        local s = t:NewSection("User info")
        s:NewLabel("Tên: "..game.Players.LocalPlayer.Name)
        s:NewLabel("Level: <chưa tích hợp>")
        s:NewLabel("Map hiện tại: <chưa tích hợp>")
        s:NewLabel("Trạng thái: Đang chờ")
    end

    -- Auto Farm
    do
        local t = Window:NewTab("⚔️ Auto Farm")
        local s = t:NewSection("Cài đặt farm")
        s:NewToggle("Auto Farm Level", "", function(v) _G.AutoFarmLevel = v end)
        s:NewToggle("Auto Farm Bone", "", function(v) _G.AutoFarmBone = v end)
        s:NewToggle("Auto Farm Chest", "", function(v) _G.AutoFarmChest = v end)
        s:NewToggle("Auto Farm Mastery", "", function(v) _G.AutoFarmMaster = v end)
    end

    -- Auto Boss
    do
        local t = Window:NewTab("👑 Auto Boss")
        local s = t:NewSection("Boss")
        s:NewButton("Auto Kill Saber", "", function() end)
        s:NewButton("Auto Kill Buddha", "", function() end)
        s:NewButton("Teleport đến boss", "", function() end)
        s:NewButton("Auto lấy Haki từ Boss", "", function() end)
    end

    -- Teleport
    do
        local t = Window:NewTab("🌎 Teleport")
        local s = t:NewSection("Map / NPC")
        s:NewButton("Sea 1", "", function() end)
        s:NewButton("Sea 2", "", function() end)
        s:NewButton("Sea 3", "", function() end)
        s:NewButton("Sword Seller", "", function() end)
        s:NewButton("Fruit Dealer", "", function() end)
        s:NewButton("Đến đảo tùy chọn", "", function() end)
    end

    -- Awakening / Haki
    do
        local t = Window:NewTab("🌀 Awaken/Haki")
        local s = t:NewSection("Tăng sức mạnh")
        s:NewToggle("Auto bật Haki", "", function(v) _G.AutoHaki = v end)
        s:NewButton("Auto V2/V3 Haki", "", function() end)
        s:NewButton("Auto Awakening Skill", "", function() end)
    end

    -- Trái Ác Quỷ
    do
        local t = Window:NewTab("🍇 Devil Fruit")
        local s = t:NewSection("DF / ESP")
        s:NewToggle("ESP Trái", "", function(v) _G.ESPFruit = v end)
        s:NewToggle("Auto nhặt Trái", "", function(v) _G.AutoPickFruit = v end)
        s:NewButton("Auto mua Trái", "", function() end)
    end

    -- Item / Quest
    do
        local t = Window:NewTab("📦 Item/Quest")
        local s = t:NewSection("Task & Item")
        s:NewToggle("Auto nhận nhiệm vụ", "", function(v) _G.AutoQuest = v end)
        s:NewButton("Lấy Saber", "", function() end)
        s:NewButton("Lấy Yama", "", function() end)
        s:NewButton("Mở cửa Yama", "", function() end)
    end

    -- Auto Raid
    do
        local t = Window:NewTab("🔥 Auto Raid")
        local s = t:NewSection("Raid")
        s:NewButton("Auto Join Raid", "", function() end)
        s:NewButton("Auto Awakening Raid", "", function() end)
    end

    -- ESP & Misc
    do
        local t = Window:NewTab("👻 ESP & Misc")
        local s = t:NewSection("Khác")
        s:NewToggle("ESP Người Chơi", "", function(v) _G.ESPP = v end)
        s:NewToggle("ESP Chest", "", function(v) _G.ESPChest = v end)
        s:NewToggle("NoClip/Fly", "", function(v) _G.NoClip = v end)
        s:NewSlider("Speed", "Tốc độ", 16, 200, function(v)
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
            end
        end)
    end
end
