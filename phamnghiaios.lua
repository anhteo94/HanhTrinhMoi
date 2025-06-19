repeat wait() until game:IsLoaded()

-- Hiển thị thông báo loading
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Phạm Nghĩa IOS",
    Text = "Đang tải script...",
    Duration = 3
})

-- Load script gốc Min Gaming (giữ full chức năng)
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinXoE"))()
end)

if not success then
    warn("Không thể tải script gốc:", err)
end

-- Sau khi GUI gốc đã bật, mình chờ rồi thay tên + ảnh
spawn(function()
    wait(5)  -- đợi GUI hình thành
    local ui = game.CoreGui:FindFirstChildWhichIsA("ScreenGui", true)
    if ui then
        -- Thay tên
        for _, lbl in pairs(ui:GetDescendants()) do
            if lbl:IsA("TextLabel") and lbl.Text:find("Min") then
                lbl.Text = lbl.Text:gsub("Min Gaming", "Phạm Nghĩa IOS")
            end
        end
        -- Thay ảnh
        for _, img in pairs(ui:GetDescendants()) do
            if img:IsA("ImageLabel") then
                img.Image = "https://i.imgur.com/JrgPMTO.jpeg"  -- link Obito
            end
        end
    end
end)
