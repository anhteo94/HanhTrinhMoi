-- Phạm Nghĩa IOS Script Loader (Rebuild)
local ScriptLoader = {}

ScriptLoader.Scripts = {
    [2753915549] = {
        Url = "https://raw.githubusercontent.com/PhamNghiaDev/BloxFruit/main/BloxFruit.lua",
        Title = "Blox Fruits Sea 1"
    },
    [4442272183] = {
        Url = "https://raw.githubusercontent.com/PhamNghiaDev/BloxFruit/main/BloxFruit.lua",
        Title = "Blox Fruits Sea 2"
    },
    [7449423635] = {
        Url = "https://raw.githubusercontent.com/PhamNghiaDev/BloxFruit/main/BloxFruit.lua",
        Title = "Blox Fruits Sea 3"
    },
    [126884695634066] = {
        Url = "https://raw.githubusercontent.com/PhamNghiaDev/GAG/main/GAG.lua",
        Title = "Grow A Garden"
    }
}

function ScriptLoader:GetScriptEntry(PlaceId)
    return self.Scripts[PlaceId]
end

function ScriptLoader:LoadScript(entry)
    if not entry then return end
    local ok, fn = pcall(function()
        return loadstring(game:HttpGet(entry.Url))
    end)
    if ok and fn then
        task.spawn(fn)
    end
end



ScriptLoader:LoadForPlace(game.PlaceId)

