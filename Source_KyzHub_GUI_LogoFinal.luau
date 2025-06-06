local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui

CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "DemonHubz",
    Text = "Credits to DemonHubz",
    Duration = 10, -- Set the duration to how much you want this to stay
    -- More code in part 2
})getgenv().Config = {
    Players = nil,
    ESPPlayer = false,
    FastAttack = false,
    LockPlayers = false,
    TableLockPlayers = Enum.KeyCode.RightControl,
    TableResetPlayers = Enum.KeyCode.RightControl
}
