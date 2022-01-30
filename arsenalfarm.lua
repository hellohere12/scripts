if game.PlaceId ~= 286090429 then
    return
end
getgenv().Farm = true 
local time = 45
spawn(function()
while Farm do task.wait()
 pcall(function()
local args = {
 [1] = "TBC"
}

game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(unpack(args))
end) end end)

spawn(function()
while Farm do task.wait(0.1)
pcall(function()
function getClosest()
        local closestdistance = 210
        local ClosetPlayer = nil
        for i,v in pairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer and v.Team ~= game.Players.LocalPlayer.Team then
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                if distance < closestdistance then
                    closestdistance = distance
                    ClosetPlayer = v
                end
            end
        end
        return ClosetPlayer
        end 
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getClosest().Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 2)
end) end end)
spawn(function()
while Farm do task.wait(0.2)
pcall(function()
for i,v in pairs(game.Players:GetPlayers()) do
    if v.Name == game.Players.LocalPlayer.Name then
        else

local ohNumber1 = 80
local ohInstance2 = workspace[v.Name].Hitbox

game:GetService("ReplicatedStorage").Events.FallDamage:FireServer(ohNumber1, ohInstance2)
end end end) end end)

spawn(function()
while Farm do task.wait(time)
pcall(function()
 for i = 1,9 do 
local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
     local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
     for _, s in pairs(ServersToTP.data) do
       if s.playing ~= s.maxPlayers then
           TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
           wait()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/wqrey/scripts/main/load.lua"))()
      end end end end) end end)
