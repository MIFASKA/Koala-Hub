-- Prison Life
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- loading ui
local Window = Library.CreateLib("Koala Hub", "Synapse") -- creating window, choosing theme


-- Player

local Player = Window:NewTab("Player") -- creating tab
local PSection = Player:NewSection("Player") -- creating section


-- Prison Life

local PL = Window:NewTab("Prison Life") -- creating tab
local PLSection = PL:NewSection("Scripts") -- creating section


-- Misc

local Misc = Window:NewTab("Misc") -- creating tab
local MSection = Misc:NewSection("Buttons") -- creating section


-- Settings

local Settings = Window:NewTab("Settings") -- creating tab
local STSection = Settings:NewSection("Settings") -- creating section


-- Credits

local Credits = Window:NewTab("Credits") -- creating tab
local CRSection = Credits:NewSection("Made by MIFASKA#2413") -- creating section

-- Sliders

PSection:NewSlider("PlayerSpeed", "Changes the player speed", 300, 16, function(s) -- 300 (MaxValue | Max Speed) | 16 (MinValue | Standart Speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


PSection:NewSlider("JumpPower", "Changes the player jump power", 350, 50, function(s) -- 350 (MaxValue | Max jump) | 50 (MinValue | Standart Jump)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


-- Buttons

MSection:NewButton("Infinity Yield", "Loads inf. yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

PLSection:NewButton("Admin", "gives admin to you", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'))()
end)

PLSection:NewButton("Customizable admin", "self expl.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Prison%20Life/Script.lua'))()
end)


-- Open Hub

STSection:NewKeybind("Open Menu key", "Click on key what you wan't to keybind", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)