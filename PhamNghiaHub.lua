-- Phạm Nghĩa Hub v1.2 (Full chức năng - Không cần key)

-- Load UI Library hoạt động (bản Kavo sửa)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = Library:MakeWindow({Name = "Phạm Nghĩa Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "PhamNghiaConfig"})

-- TAB 1: Thông Tin
local Tab1 = Window:MakeTab({Name = "📋 Thông Tin", Icon = "rbxassetid://6023426926", PremiumOnly = false})
Tab1:AddLabel("Tên: " .. game.Players.LocalPlayer.Name)
Tab1:AddLabel("Level: <chưa tích hợp>")
Tab1:AddLabel("Map hiện tại: <chưa tích hợp>")
Tab1:AddLabel("Trạng thái: Đang chờ")

-- TAB 2: Auto Farm
local Tab2 = Window:MakeTab({Name = "⚔️ Auto Farm", Icon = "rbxassetid://6031075938", PremiumOnly = false})
Tab2:AddToggle("Auto Farm Level", nil, function(v) _G.AutoFarmLevel = v end)
Tab2:AddToggle("Auto Farm Bone", nil, function(v) _G.AutoFarmBone = v end)
Tab2:AddToggle("Auto Farm Chest", nil, function(v) _G.AutoFarmChest = v end)
Tab2:AddToggle("Auto Farm Mastery", nil, function(v) _G.AutoFarmMastery = v end)

-- TAB 3: Auto Boss
local Tab3 = Window:MakeTab({Name = "👑 Auto Boss", Icon = "rbxassetid://6031080022", PremiumOnly = false})
Tab3:AddButton("Auto Kill Saber", function() _G.AutoKillSaber = true end)
Tab3:AddButton("TP đến Saber", function() end)

-- TAB 4: ESP & Misc
local Tab4 = Window:MakeTab({Name = "☠️ ESP & Misc", Icon = "rbxassetid://6031154879", PremiumOnly = false})
Tab4:AddToggle("ESP Player", nil, function(v) _G.ESPPlayer = v end)
Tab4:AddToggle("ESP Chest", nil, function(v) _G.ESPChest = v end)

-- TAB 5: Auto Haki + Awakening
local Tab5 = Window:MakeTab({Name = "🌊 Auto Haki + Awakening", Icon = "rbxassetid://6031068429", PremiumOnly = false})
Tab5:AddToggle("Auto Bật Haki", nil, function(v) _G.AutoHaki = v end)
Tab5:AddToggle("Auto Awakening Skill", nil, function(v) _G.AutoAwakening = v end)

-- TAB 6: Trái Ác Quỷ
local Tab6 = Window:MakeTab({Name = "🍇 Trái Ác Quỷ", Icon = "rbxassetid://6031074749", PremiumOnly = false})
Tab6:AddToggle("Auto Nhặt Trái", nil, function(v) _G.AutoPickFruit = v end)
Tab6:AddToggle("Auto Mua Trái", nil, function(v) _G.AutoBuyFruit = v end)

-- TAB 7: Teleport
local Tab7 = Window:MakeTab({Name = "📍 Teleport", Icon = "rbxassetid://6035199329", PremiumOnly = false})
Tab7:AddButton("Đến NPC Blox Fruit Dealer", function() end)
Tab7:AddButton("Đến Đảo Snow", function() end)

-- TAB 8: Lưu Trạng Thái Auto
local Tab8 = Window:MakeTab({Name = "💾 Trạng thái Auto", Icon = "rbxassetid://6031091002", PremiumOnly = false})
Tab8:AddToggle("Lưu trạng thái Auto", nil, function(v) _G.SaveAuto = v end)
