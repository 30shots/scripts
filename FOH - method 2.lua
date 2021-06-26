local ws = game:GetService("Workspace")
local rs = game:GetService("RunService")
local content = ws.Map.Content

local function destroyDamage()
    if content then
        for i1,v1 in pairs(content:GetChildren()) do
            for i2,v2 in pairs(v1:GetChildren()) do
                if tostring(v2.Name) == tostring("Damage") then
                    v2:Destroy()
                end
            end
        end
    else
        local msg = Instance.new("Hint")
        msg.Parent = ws
        msg.Text = "theres nothing to delete bruh"
        wait(1)
        msg:Destroy()
    end
end

rs.Stepped:connect(function()
    destroyDamage()
end)
