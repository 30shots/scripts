-- if your a dev of aimblox reading this, your fuckin stupid
local plr    = game:GetService("Players").LocalPlayer
local remote = game:GetService("ReplicatedStorage").Remotes.HitLobbyTarget;

-- anti-afk (credits to original creator(s))
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

while true do
    wait(0.2)
    remote:FireServer()
end
