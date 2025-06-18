-- Phạm Nghĩa IOS – Min Gaming Style Full – Sea 3

local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"
))()
local Window = Library.CreateLib("Phạm Nghĩa IOS", "Midnight")

-- Thiết lập background là ảnh của anh
Window:ChangeBackground("https://raw.githubusercontent.com/anhteo94/HanhTrinhMoi/main/AnhCuaAnh.png")

-- Tab: Tộc V4
local t1 = Window:NewTab("Tộc V4")
local s1 = t1:NewSection("Tộc")
s1:NewToggle("Auto Tộc V4", "Tự động far mobs Tộc V4", function(v) _G.AutoTocV4 = v end)

-- Tab: Cửa hàng
local t2 = Window:NewTab("Cửa hàng")
local s2 = t2:NewSection("Mua/Bán")
s2:NewButton("Mở Shop", "Mua item từ NPC", function()
    -- TODO: code shop
end)

-- Tab: Dịch chuyển
local t3 = Window:NewTab("Dịch chuyển")
local s3 = t3:NewSection("TP")
s3:NewButton("TP Mỹ", function() end)
s3:NewButton("TP Jack", function() end)

-- Tab: Người chơi
local t4 = Window:NewTab("Người chơi")
local s4 = t4:NewSection("Player")
s4:NewToggle("ESP Player", "", function(v) _G.ESPPlayer = v end)
s4:NewToggle("Theo sau", "", function(v) _G.Follow = v end)

-- Tab: Cài đặt
local t5 = Window:NewTab("Cài đặt")
local s5 = t5:NewSection("Settings")
s5:NewToggle("Theme tối", "", function(v) _G.DarkTheme = v end)
s5:NewButton("Reset UI", "", function() Window:Destroy() end)

-- (Anh có thể thêm tab khác như Sự kiện, Tập kích, Trái… nếu cần)
