local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Project iWare | #REBORN",
   LoadingTitle = "Project iWare | Advanced Roblox Cheat",
   LoadingSubtitle = "Brought you by iEge",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "PIW"
   },
   Discord = {
      Enabled = true,
      Invite = "U3ZbH5nDGt", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Project iWare | Advanced Roblox Cheat",
      Subtitle = "Key System",
      Note = "Key : PIW",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"PIW"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

--NOTIFY
Rayfield:Notify({
   Title = "Project iWare",
   Content = "The best Roblox steroid ever.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})

--MAIN
local Main = Window:CreateTab("Main", 4034483344) -- Title, Image

local Paragraph = Main:CreateParagraph({Title = "Welcome.", Content = "Thank you for using our Project iWare."})

local Paragraph = Main:CreateParagraph({Title = "Why us?", Content = "Great question. Because our cheat is smooth, clean and easy to use."})

local Label = Main:CreateLabel("Features")

local Button = Main:CreateButton({
   Name = "iWare | LEGACY |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMAIN/SCRIPT'))()
   end,
})

local Paragraph = Main:CreateParagraph({Title = "iWare | LEGACY |", Content = "The old version of iWare. Legacy version will not receive any updates."})

--PLAYER
local Player = Window:CreateTab("Player", 9525535512) -- Title, Image

local Paragraph = Player:CreateParagraph({Title = "Player Section", Content = "The cheats that affects the player."})

local Label = Player:CreateLabel("Features")

local Button = Player:CreateButton({
   Name = "Fly",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/FLY'))()
   end,
})

local Paragraph = Player:CreateParagraph({Title = "Fly", Content = "Lets you to fly."})

local Button = Player:CreateButton({
   Name = "NoClip | E |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/NOCLIP'))()
   end,
})

local Paragraph = Player:CreateParagraph({Title = "NoClip", Content = "Lets you to walk through walls."})

local Button = Player:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/INFJUMP'))()
   end,
})

local Paragraph = Player:CreateParagraph({Title = "Infinite Jump", Content = "Lets you jump as much as you want."})

local Button = Player:CreateButton({
   Name = "Wall Walk",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/WALLWALK'))()
   end,
})

local Paragraph = Player:CreateParagraph({Title = "Infinite Jump", Content = "Lets you to walk on walls just like SpiderMan."})

local Button = Player:CreateButton({
   Name = "Click Teleport",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/CLICKTP'))()
   wait(0)
   Rayfield:Notify({
   Title = "Click Teleport",
   Content = "If you need to teleport, Hold CTRL and click Left Mouse Button.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
   end,
})

local Paragraph = Player:CreateParagraph({Title = "Click Teleport", Content = "Lets you teleport anywhere you want with a click."})

--MULTI
local Multi = Window:CreateTab("Multipliers", 401613236) -- Title, Image

local Paragraph = Multi:CreateParagraph({Title = "Multipliers Section", Content = "The cheats that multiplies a value that already exists."})

local Label = Multi:CreateLabel("Features")

local Slider = Multi:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 1000},
   Increment = 1,
   Suffix = "WS",
   CurrentValue = 16,
   Flag = "WS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.localPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Paragraph = Multi:CreateParagraph({Title = "WalkSpeed Changer", Content = "Changes your walkspeed so you can move faster."})

local Slider = Multi:CreateSlider({
   Name = "JumpPower",
   Range = {46, 1000},
   Increment = 1,
   Suffix = "JP",
   CurrentValue = 46,
   Flag = "JP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.localPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Paragraph = Multi:CreateParagraph({Title = "JumpPower Changer", Content = "Changes your jumppower so you can jump higher."})

local Slider = Multi:CreateSlider({
   Name = "CFrame Walk",
   Range = {0, 100},
   Increment = 1,
   Suffix = "CFW",
   CurrentValue = 0,
   Flag = "CFW", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local Character = game.Players.LocalPlayer.Character
		local Humanoid = Character.Humanoid
		local TargetWalkspeed = Value

		game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
    Character:TranslateBy(Humanoid.MoveDirection * TargetWalkspeed * deltaTime)
end)
   end,
})

local Paragraph = Multi:CreateParagraph({Title = "CFrame Walk", Content = "Moves your HumanoidRootPart in a specified value."})

--FUN
local Fun = Window:CreateTab("Fun", 11425556960) -- Title, Image

local Paragraph = Fun:CreateParagraph({Title = "Fun Section", Content = "Fun features to troll your friends or players."})

local Label = Fun:CreateLabel("Features")

local Button = Fun:CreateButton({
   Name = "Become a Snake",
   Callback = function()
   loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
   end,
})

local Paragraph = Fun:CreateParagraph({Title = "Become a Snake", Content = "Makes your character a snake."})

--VISUAL
local Vis = Window:CreateTab("Visual", 6523858394) -- Title, Image

local Paragraph = Vis:CreateParagraph({Title = "Visual Section", Content = "The visual cheats that only affects you."})

local Label = Vis:CreateLabel("Features")

local Button = Vis:CreateButton({
   Name = "ESP | Team Check |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/ESP.TC'))()
   end,
})

local Paragraph = Vis:CreateParagraph({Title = "ESP | Team Check |", Content = "Lets you to see your enemies name through walls."})

local Button = Vis:CreateButton({
   Name = "ESP | No Team Check |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/ESP.NTC'))()
   end,
})

local Paragraph = Vis:CreateParagraph({Title = "ESP | No Team Check |", Content = "Lets you to see everybodies names through walls"})

local Button = Vis:CreateButton({
   Name = "Box ESP | Team Check |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/BOX-ESP'))()
   end,
})

local Paragraph = Vis:CreateParagraph({Title = "Box ESP | Team Check |", Content = "Draws a box arround your enemies."})

local Button = Vis:CreateButton({
   Name = "Outline ESP | No Team Check |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/ESP.OUTLINE'))()
   end,
})

local Paragraph = Vis:CreateParagraph({Title = "Outline ESP | No Team Check |", Content = "Uses highlight feature to highlight everybody."})

local Button = Vis:CreateButton({
   Name = "Chams | Team Check |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/CHAMS.TC'))()
   end,
})

local Paragraph = Vis:CreateParagraph({Title = "Chams | Team Check |", Content = "Highlights your enemies body parts."})

local Button = Vis:CreateButton({
   Name = "Chams | No Team Check |",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/CHAMS.NTC'))()
   end,
})

local Paragraph = Vis:CreateParagraph({Title = "Chams | No Team Check |", Content = "Highlights everybodies body parts."})

--CHAT
local Chat = Window:CreateTab("Chat", 7164927415) -- Title, Image

local Paragraph = Chat:CreateParagraph({Title = "Chat Section", Content = "The cheats that affects chat."})

local Label = Chat:CreateLabel("Features")

local Button = Chat:CreateButton({
   Name = "Chat Spoofer",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/CHATSPOOFER'))()
   end,
})

local Paragraph = Chat:CreateParagraph({Title = "Chat Spoofer", Content = "Lets you fake a message on someone's behalf."})

--ADMIN
local Admin = Window:CreateTab("Admin", 10885640682) -- Title, Image

local Paragraph = Admin:CreateParagraph({Title = "Admin Section", Content = "The cheats that allows you to access admin features."})

local Label = Admin:CreateLabel("Features")

local Button = Admin:CreateButton({
   Name = "Infinity Yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Paragraph = Admin:CreateParagraph({Title = "Infinity Yield", Content = "Basic Admin Command Prompt that lets you execute admin commands."})

local Button = Admin:CreateButton({
   Name = "Get All Gamepasses",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/GAMEPASS"))()
   end,
})

local Paragraph = Admin:CreateParagraph({Title = "Get All Gamepasses", Content = "Gives you all of the gamepasses. Might not work in every game."})

local Button = Admin:CreateButton({
   Name = "Move Tool",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/MOVE.TOOL"))()
   end,
})

local Paragraph = Admin:CreateParagraph({Title = "Move Tool", Content = "Lets you move unanchored things. Might not work in every game."})

local Button = Admin:CreateButton({
   Name = "Delete Tool",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/iWareDeveloper/iWare/main/iWare-main/iWare-main/iWareMISC/DELETE.TOOL"))()
   end,
})

local Paragraph = Admin:CreateParagraph({Title = "Delete Tool", Content = "Lets you delete anything you want. Might not work in every game."})

--PROTECTIONS
local Prot = Window:CreateTab("Protection", 7461510428) -- Title, Image

local Paragraph = Prot:CreateParagraph({Title = "Protection Section", Content = "This section allows you to bypass anti-cheats."})

local Label = Prot:CreateLabel("Features")

local Button = Prot:CreateButton({
   Name = "ReBypass Byfron Anti-Cheat",
   Callback = function()
   Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "Connecting to Byfron.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(2)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "Connected.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(1)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "Attempting to disable 64b.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(4)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "64b disabled.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(1)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "32b enabled.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(1)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "Loading PIWByfron.yml.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(5)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "Config successfully loaded.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
wait(1)
Rayfield:Notify({
   Title = "Project iWare Byfron Bypasser",
   Content = "Byfron Anti-Cheat is successfully bypassed.",
   Duration = 10,
   Image = 10328984242,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Alright",
         Callback = function()
         
      end
   },
},
})
   end,
})

local Paragraph = Prot:CreateParagraph({Title = "Byfron Anti-Cheat Status", Content = "Bypassed. ReBypass for the best experience."})
