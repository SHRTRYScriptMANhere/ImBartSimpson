--Made By Shartmastaa.
print("Hi. im Bart Simpson!")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Bart's Simps",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "loading bart's simps",
   LoadingSubtitle = "by Shartmastaa/obama have dihh 💔💔💔",
   ShowText = "bart simp", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Who Are You?",
      Subtitle = "Tip: a simpson",
      Note = "look at tip", -- Use this to tell the user how to get a key
      FileName = "ThisIsBartKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Bart"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

--variantbles
local plr = game.Players.LocalPlayer
local plrgui = plr:WaitForChild("PlayerGui")
local char = plr.Character or plr.CharacterAdded:Wait()
local ts = plrgui:WaitForChild("TeamSelector")

--scirpt
local MainTab = Window:CreateTab("Main", "House")
local Section = MainTab:CreateSection("Gui Related")

local TeamToggle = Tab:CreateToggle({
   Name = "Team Selector (ONLY USE IF NOT ALREADY ROLE, IF YOU SELECT ANOTHER TEAM WHILE BEING ALREADY A TEAM, YOU WILL GET KICKED)",
   CurrentValue = true,
   Flag = "TToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   		if Value == true then
						ts.Enabled = true
  		else
						ts.Enabled = false
      end
   end,
})
