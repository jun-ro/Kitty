local Kitty = require(script.Parent.Kitty)

--# Create Hitbox

local Part = Instance.new("Part",workspace)

Part.Size = Vector3.new(6,1,2)
Part.Material = Enum.Material.SmoothPlastic
Part.Anchored = false
Part.CanCollide = true
Part.Position = Vector3.new(10,0,0)

Kitty.setupReg(Part, Vector3.new(2.5,0,0), Vector3.new(0,0,0),Vector3.new(-2.5,0,0))

local Newhitbox = Kitty.CreateRegHitbox(Part)

Kitty.startHitbox(Newhitbox)

function hitbox_damage(hit, humanoid)
  print(hit)
  humanoid:TakeDamage(10)
  local asset_table = Kitty.ProduceGlowTable(hit.Parent)
  Kitty.bindGlow(asset_table, hit.Parent)
  task.wait(0.2)
  Kitty.unbindGlow(hit.Parent:WaitForChild("GlowStorage"))
end


Kitty.Register(Newhitbox, hitbox_damage)


game.Players.PlayerAdded:Connect(function(player)
  player.CharacterAdded:Connect(function(char)
      local asset_table = Kitty.ProduceGlowTable(char)
      print(asset_table)
      Kitty.bindGlow(asset_table, char)
      task.wait(20)
      Kitty.unbindGlow(char:WaitForChild("GlowStorage"))
      print("Kitty has unbinded the glow")
    end)
end)



