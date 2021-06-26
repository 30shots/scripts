-- anti-afk (credits to original creator(s))
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

game:GetService("RunService").Stepped:connect(function()
    local remote = game:GetService("ReplicatedStorage").Remotes.Game.Win 
    remote:FireServer()
end)
