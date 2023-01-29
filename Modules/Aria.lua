local Aria = {}
local CP = game:GetService("ContentProvider")

function Aria.createAnimation(Parent, id)

  -- # Just to make sure :3 (I hate my life)

  if Parent == nil then
    Parent = workspace
  end

  local Animation = Instance.new("Animation",Parent)
  Animation.AnimationId = id

  return Animation

end

function Aria.createAnimator(Humanoid)
  local Animator = Humanoid:FindFirstChild("Animator")

  if Animator and Animator.className == "Animator" or Animator:IsA("Animator") then
    print("What are you doing? You already have an Animator.")
  elseif not Animator then
      local new_Animator = Instance.new("Animator",Humanoid)
      new_Animator.Name = "Animator"
      print("Kitty has generated a new Animator.")
  end

  return new_Animator
  
end


function Aria.CacheAnimation(Animation: Instance)
  local success, error = pcall(function()
    local cached_animation = CP:PreloadAsync(Animation)
  end)
  
  if success then 
    print("Kitty has successfully cached your animation.")
    return cached_animation
  elseif error then
    print("Kitty could not cache your animation due to: "..error)
  end
end


function Aria.LoadAnimation(Animation, Animator)
  local playable_animation = Animator:LoadAnimation(Animation)
  return playable_animation
end

function Aria.CacheBulkAnimations(Animations: table)

  local loaded_table = {}


  for i,v in pairs(Animations) do
    if v then
      table.insert(loaded_table, v)
    end
  end

  local success, error = pcall(function()
    CP:PreloadAsync(loaded_table)
  end)

  if success then
    print("Kitty has successfully loaded bulked animations")
    return loaded_table
  elseif error then
    print("Kitty has failed to load the animations due to: "..error)
  end

end





return Aria
