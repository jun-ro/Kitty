local Register = {}
local RayCastHitbox = require(script.Parent.RaycastHitboxV4)


function Register.Setup(part, x:Vector3,y:Vector3,z:Vector3)
  local A1 = Instance.new("Attachment",part)
  A1.Name = "DmgPoint"
  A1.Position = x
  local A2 = Instance.new("Attachment",part)
  A2.Name = "DmgPoint"
  A2.Position = y
  local A3 = Instance.new("Attachment",part)
  A3.Name = "DmgPoint"
  A3.Position = z
end

function Register.createHitbox(part)
  local NewHitbox = RayCastHitbox.new(part)
  return NewHitbox
end

function Register.StartHitbox(func_)
  func_:HitStart()
end

function Register.StopHitbox(func_)
  func_:HitStop()
end


function Register.register(hitbox, func_)
  hitbox.OnHit:Connect(function(hit, humanoid)
    func_(hit, humanoid)
  end)
end


return Register
