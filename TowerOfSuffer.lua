repeat wait() until game:IsLoaded()
if game.CoreGui:FindFirstChild("Orion") then
    game.CoreGui:FindFirstChild("Orion"):Destroy()
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tower Of Suffer", HidePremium = true, IntroText = "Towers Suck Honestly", SaveConfig = false, ConfigFolder = "TOE"})
local Home = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Main"
})

Home:AddToggle({
Name = "Get EXP And PlayTime (Auto Farm)",
Default = false,
Callback = function(oooo)
if oooo then
_G.timee = true
while _G.timee == true do
wait()
local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("timeplayed"):FireServer(unpack(args))
end
else
_G.timee = false
end
end})

Home:AddButton({
Name = "Teleport Win",
Callback = function()
repeat wait() until game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Storage.End.WinBrick.Position)
end})

Home:AddToggle({
Name = "Farm Coins",
Default = false,
Callback = function(faa)
repeat wait() until game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart
if faa then
_G.farmmm = true
while _G.farmmm == true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Storage.End.WinBrick.Position)
wait()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").vipOwner:FireServer(unpack(args))
end
else
_G.farmmm = false
end
end})

Home:AddButton({
Name = "Inf Yield",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end})

Home:AddTextbox({
Name = "Force Set Time",
Default = "Numbers",
TextDisappear = true,
Callback = function(numb)
local args = {
    [1] = numb
}

game:GetService("ReplicatedStorage").setTimer:FireServer(unpack(args))
end})

Home:AddButton({
Name = "Toggle Lock Shop",
Callback = function()
local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").lockShop:FireServer(unpack(args))
end})

Home:AddButton({
Name = "Force Reset Round",
Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").vipOwner:FireServer(unpack(args))
end})

Home:AddToggle({
Name = "Godmode/Protection",
Default = false,
Callback = function(god)
if god then
_G.protect = true
if _G.protect == true then
game:GetService("ReplicatedStorage").Mutators.Protection.Value = true
else
game:GetService("ReplicatedStorage").Mutators.Protection.Value = false
end
end
end})
