local key = "SceTeamV1"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sce Prison Hub V2", "Midnight")
local Tab = Window:NewTab("home")
local Section = Tab:NewSection("prison life")

local function checkKey()
    local userInput = io.read()
    if userInput == key then
        return true
    else
        return false
    end
end

if checkKey() then
    Section:NewButton("Tiger Admin", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
        print("Clicked")
    end)

    Section:NewButton("Prisonware", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
        print("Clicked")
    end)

    Section:NewButton("Tbao Hub", "ButtonInfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaohubPrisonLife"))()
        print("Clicked")
    end)

    Section:NewToggle("ToggleText", "ToggleInfo", function(state)
        if state then
            print("Toggle On")
        else
            print("Toggle Off")
        end
    end)

    Section:NewSlider("Speed hack", "SliderInfo", {
        min = 0,
        max = 500,
        precise = false
    }, function(sliderValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sliderValue
    end)

    Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
        print("You just clicked the bind")
    end)

    Section:NewKeybind("Key system", "KeybindInfo", Enum.KeyCode.F, function()
        Library:ToggleUI()
    end)

    local themes = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }

    for theme, color in pairs(themes) do
        Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
            Library:ChangeColor(theme, color3)
        end)
    end
else
    print("Invalid key.")
end
