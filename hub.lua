
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/stefannnnnnnn/kavok/main/edit"))()
local Window = Library.CreateLib("Stefan Hub", colors)
local Tab = Window:NewTab("Quest Farm")
local Tab2 = Window:NewTab("Settings")
local Section = Tab:NewSection("Quest/Npc Farming")
local Section2 = Tab2:NewSection("Menu Settings")





Section:NewToggle("Enabled", "Enables the auto farm", function(state)
    if state then
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do 
    if v:IsA("Tool") and v.Name == "None" then
    v:Activate()
end
end
    else
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do 
    if v:IsA("Tool") and v.Name == "None" then
    v.Parent = game.Players.LocalPlayer.Backpack
end
end
    end
end)

Section:NewLabel("Looking for a quest/npc?")

Section:NewDropdown("Choose Quest", "DropdownInf", {"Soldier", "Clown Pirate", "Option 3"}, function(currentOption)
    if currentOption == "Soldier" then 
for i,v in pairs(game:GetService("Workspace").Monster.Mon["Soldier [Lv. 1]"]:GetChildren()) do 
if v.ClassName == "Part" and v.Name == "HumanoidRootPart" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end
else 
if currentOption == "Clown Pirate" then 
print("Clown Pirate")
end
end
end)
Section:NewToggle("Start Scroll Sniper", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
Section:NewToggle("Snipe on PS", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section2:NewKeybind("Menu Toggle", "KeybindInfo", Enum.KeyCode.P, function()
	Library:ToggleUI()
end)

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
