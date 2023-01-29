                                                                                                                                                                                                --[[
                            ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷
                            ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇
                            ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽
                            ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕
                            ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕
                            ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕
                            ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄
                            ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕
                            ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿
                            ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                            ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟
                            ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠
                            ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙
                            ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣
                                                                                                                                                                                        ]]--
                                                                                                                                                                                                --[[

                          db   dD d888888b d888888b d888888b db    db 
                          88 ,8P'   `88'   `~~88~~' `~~88~~' `8b  d8' 
                          88,8P      88       88       88     `8bd8'  
                          88`8b      88       88       88       88    
                          87 `88.   .88.      88       88       88    
                          YP   YD Y888888P    YP       YP       YP    
                                                
                                     Made by Junnie#0072                                                                                                                                                ]]--



                                                                                                                                                                                --[[
                Before you use this I want to say that, yes you don't need this 
        but it's a good way to manage all of your needed modules and premade functions
        into one dependency, so that you only have to require one and only one module script.

                                                                                                                                                                                ]]--
local Kitty = {}
local Modules = script.Parent --# Change this to wherever you're storing the modules at

-- # Require variables (Basically node_modules for roblox but it's like 10x worse)

local CP = game:GetService("ContentProvider")
local Glow = require(Modules:FindFirstChild('Glow'))
local Register = require(Modules:FindFirstChild('Register'))
local Cacher = require(Modules:FindFirstChild('Cacher'))
local Aria = require(Modules:FindFirstChild("Aria"))
-- # Glow commands

function Kitty.ProduceGlowTable(character)
    return Glow.getCharacter(character)
end

function Kitty.bindGlow(asset_table, character)
    Glow.bindGlow(asset_table, character)
end

function Kitty.unbindGlow(GlowFolder)
    Glow.unbindGlow(GlowFolder)
end

-- # Register Commands (Basically just using RaycastHitbox but allowing me to easily use functions)

function Kitty.setupReg(part, x,y,z)
    Register.Setup(part,x,y,z)
end

function Kitty.CreateRegHitbox(part)
   return Register.createHitbox(part)
end

function Kitty.startHitbox(func_)
    Register.StartHitbox(func_)
end

function Kitty.stopHitbox(func_)
    Register.StopHitbox(func_)
end

function Kitty.Register(hitbox, func_)
    Register.register(hitbox, func_)
end


-- # Cacher Commands, better way to pre-load every asset.

function Kitty.Cache(folder)
    Cacher.Cache(folder)
end



-- # Aria (Animations Module)

function Kitty.createAnimation(Parent, id)
    Aria.createAnimation(Parent, id)
end

function Kitty.createAnimator(Humanoid)
    Aria.createAnimator(Humanoid)
end

function Kitty.CacheAnimation(Animation)
    return Aria.CacheAnimation(Animation)
end

function Kitty.LoadAnimation(Animation, Animator)
    return Aria.LoadAnimation(Animation, Animator)
end

function Kitty.CacheBulkAnimations(Animations)
    return Aria.CacheBulkAnimations(Animations)]
end


return Kitty

