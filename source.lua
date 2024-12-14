local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "PigHub V2",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Gay",
   LoadingSubtitle = "by iPig",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "iPigTest"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
function WaterTappersX()
   local Tab = Window:CreateTab("Water Tappers X", 4483362458)
   getgenv().AutoClick = false
   function autoClick()
       while getgenv().AutoClick do
       game:GetService("ReplicatedStorage").Events.Click:FireServer()
       wait(0.00000001)
   end
   end
   getgenv().AutoRebirth = false
   function autoRebirth()
       while getgenv().AutoRebirth do
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(1)
           wait(10)
       end
       
   end
   local ClickToggle = Tab:CreateToggle({
      Name = "Auto Click",
      CurrentValue = false,
      Flag = "AutoClick", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
          getgenv().AutoClick = Value
          autoClick()
        end,
   })
   local RebirthToggle = Tab:CreateToggle({
      Name = "Auto Rebirth",
      CurrentValue = false,
      Flag = "AutoRebirth", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
          getgenv().AutoRebirth = Value
          autoRebirth()
        end,
   })
end
function ArmWrestleSimulator()
   local Tab = Window:CreateTab("Arm Wrestle Simulator", 4483362458)
   getgenv().AutoClick = false
   function autoClick()
       while getgenv().AutoClick do
         game:GetService("ReplicatedStorage").Packages.Knit.Services.ToolService.RE.onClick:FireServer()
         game:GetService("ReplicatedStorage").Packages.Knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
         wait(0.00000001)
   end
   end
   getgenv().AutoRebirth = false
   function autoRebirth()
       while getgenv().AutoRebirth do
           game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RE.onRebirthRequest:FireServer()
           wait(5)
       end
       
   end
   getgenv().AutoFight = false
   function autoFight()
       while getgenv().AutoFight do
         game:GetService("ReplicatedStorage").Packages.Knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("CyberAssassin", workspace.GameObjects.ArmWrestling["2"].NPC.CyberCop.Table, "1")
         wait(0.00000001)
         
   end
   end
   local ClickToggle = Tab:CreateToggle({
      Name = "Auto Click",
      CurrentValue = false,
      Flag = "AutoClick", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
          getgenv().AutoClick = Value
          autoClick()
        end,
   })
   local RebirthToggle = Tab:CreateToggle({
      Name = "Auto Rebirth",
      CurrentValue = false,
      Flag = "AutoRebirth", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
          getgenv().AutoRebirth = Value
          autoRebirth()
        end,
   })
   local FightToggle = Tab:CreateToggle({
      Name = "Auto Fight",
      CurrentValue = false,
      Flag = "AutoFight", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
          getgenv().AutoFight = Value
          autoFight()
        end,
   })
end
if game.PlaceId == 16531873022 then
   WaterTappersX()
elseif game.PlaceId == 13127800756 then
   ArmWrestleSimulator()
end