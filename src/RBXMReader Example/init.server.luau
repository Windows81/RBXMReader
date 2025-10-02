--Get required Roblox services
local HttpService = game:GetService("HttpService")
local RBXM        = require(script.RBXMReader)

--Perform HTTP request
local httpOkay, data = pcall(HttpService.GetAsync, HttpService, "https://cdn.kat.gg/Testing/Tree.rbxm")

--Read instance or print error
if (httpOkay) then
	local instance = RBXM.readRBXM(data)
	instance.Parent = workspace
	print("Read successful")
else
	print("HTTP Failed")
end