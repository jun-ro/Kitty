local Glow = {}
local TS = game:GetService("TweenService")

function Glow.getCharacter(character)
    local part_table = {}

    for i,v in pairs(character:GetChildren()) do
      if v.className == "Part" then
            table.insert(part_table, v)
        end
    end

    return part_table

end


function Glow.bindGlow(part_table, character)

    local GlowStorage = Instance.new("Folder",character)
    GlowStorage.Name = "GlowStorage" 

    for i,v in pairs(part_table) do
        local glow_part = Instance.new("Part", GlowStorage); glow_part.Name = "Glowies_"..v.Name
        -- Change only this part. --
        glow_part.Material = Enum.Material.ForceField
        glow_part.Color = Color3.fromRGB(255,0,0)
        glow_part.Transparency = 0.5
        glow_part.Size = v.Size + Vector3.new(0.5,0.5,0.5)
        glow_part.Position = v.Position
        glow_part.CanCollide = false
        glow_part.Anchored = true
    end
end


function Glow.unbindGlow(GlowFolder)
    
    local time = 0.5
    local info = TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
    local goal = {}
    goal.Transparency = 1

    for i,v in pairs(GlowFolder:GetChildren()) do
        local tween = TS:Create(v, info, goal)
        tween:Play()
    end

    task.wait(time+0.5)
    GlowFolder:Destroy()

end

return Glow
