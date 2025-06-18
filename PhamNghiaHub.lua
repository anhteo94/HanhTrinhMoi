-- Phạm Nghĩa Hub (v1.0) – Không cần key, có thể kéo được

-- Load UI library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/library.lua"))()
local Window = Library.CreateLib("Phạm Nghĩa Hub", "Ocean")

-- Cho phép kéo menu
Window.draggable = true

-- Khởi tạo UI chính
Window:Init(function()
    -- ==== TAB: Thông Tin =====
    local t1 = Window:NewTab("📌 Thông Tin")
    local s1 = t1:NewSection("User Info")
    s1:NewLabel("Tên: "..game.Players.LocalPlayer.Name)
    s1:NewLabel("Level: <chưa tích hợp>")
    s1:NewLabel("Map hiện tại: <chưa tích hợp>")
    s1:NewLabel("Trạng thái: Đang chờ")

    -- ==== TAB: Auto Farm =====
    local t2 = Window:NewTab("⚔️ Auto Farm")
    local s2 = t2:NewSection("Cài đặt farm")
    s2:NewToggle("Auto Farm Level", "", function(v) _G.AutoFarmLevel = v end)
    s2:NewToggle("Auto Farm Bone", "", function(v) _G.AutoFarmBone = v end)
    s2:NewToggle("Auto Farm Chest", "", function(v) _G.AutoFarmChest = v end)
    s2:NewToggle("Auto Farm Mastery", "", function(v) _G.AutoFarmMaster = v end)

    -- ==== TAB: Auto Boss =====
    local t3 = Window:NewTab("👑 Auto Boss")
    local s3 = t3:NewSection("Boss")
    s3:NewButton("Auto Kill Saber", "", function()
        -- TODO: code kill boss ở đây
    end)
    s3:NewButton("TP đến Boss", "", function()
        -- TODO: teleport đến boss
    end)

    -- ==== TAB: Misc =====
    local t4 = Window:NewTab("⚙️ Misc")
    local s4 = t4:NewSection("Tùy chỉnh chung")
    s4:NewSlider("Tốc độ chạy", "Đi nhanh hơn", 100, 500, function(val)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
    end)
    s4:NewToggle("Fly", "Bay trên không", function(v)
        _G.FlyEnabled = v
        -- TODO: code fly
    end)

    -- Tab khác, Nhiệm vụ, Auto Raid... anh thêm tùy chỉnh dán vào sau đây
end)  -- <-- Kết thúc Window:Init
