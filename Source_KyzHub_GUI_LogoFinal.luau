local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create the main window with red theme colors
local Window = OrionLib:MakeWindow({
    Name = "🔥DemonHubz🔥",
    HidePremium = false,
    IntroText = "Welcome!",
    SaveConfig = true,
    ConfigFolder = "MyGameConfig",
    Theme = {
        MainColor = Color3.fromRGB(255, 0, 0),        -- Bright red
        MinimizeColor = Color3.fromRGB(180, 0, 0),    -- Darker red for minimize button
        ToggleColor = Color3.fromRGB(255, 50, 50)     -- Slightly lighter red for toggles/buttons
    }
})

-- Create a tab called "Error Glove Badge"
local Tab = Window:MakeTab({
    Name = "Error Glove Badge",
    Icon = "rbxassetid://4483345998",  -- You can change the icon if you want
    PremiumOnly = false
})

-- Add the button to give the badge
Tab:AddButton({
    Name = "Error Glove Badge",
    Callback = function()
        local badgeId = 2124760254
        local player = game.Players.LocalPlayer

        -- RemoteEvent to award the badge on the server
        local RemoteEvent = game.ReplicatedStorage:FindFirstChild("AwardBadgeEvent")
        if RemoteEvent then
            RemoteEvent:FireServer(badgeId)
        else
            warn("AwardBadgeEvent not found in ReplicatedStorage")
        end
    end
})

-- Initialize the UI (required at the end)
OrionLib:Init()
