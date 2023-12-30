local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
if not game:IsLoaded() then
    game.Loaded:Wait()
end
repeat task.wait() until game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
    repeat task.wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
    until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                if v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                end
            end
            wait(0.3)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KykyryzoB/fast-slap-farm-no-autoexe/main/slpl/slpls.lua"))()
while wait(5) do 
loadstring(game:HttpGet("https://raw.githubusercontent.com/KykyryzoB/fast-slap-farm-no-autoexe/main/slpl/slpls.lua"))()
end
            ]])
end
local serverList = {}
for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
	if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
		serverList[#serverList + 1] = v.id
	end
end
if #serverList > 0 then
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KykyryzoB/fast-slap-farm-no-autoexe/main/slpl/slpls.lua"))()
end
