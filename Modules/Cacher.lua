local Cacher = {}
local CP = game:GetService("ContentProvider")

function Cacher.Cache(folder)
  local assets = {}
  for i,v in pairs(folder:GetChildren()) do
    if v then
      table.insert(assets,v)
    end
  end

  local success, error = pcall(function()
    CP:PreloadAsync(assets)
  end)

  if success then 
    print("Kitty has successfully loaded all assets")
  elseif error then
    print("Kitty has failed to load all assets due to: "..tostring(error))
  end
end


return Cacher 
