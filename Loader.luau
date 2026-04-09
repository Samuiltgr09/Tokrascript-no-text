local Loadstring = loadstring or getgenv().loadstring or getfenv().loadstring
local HttpGet = game.HttpGet
if not (Loadstring and HttpGet) then return end

local Repository = "https://github.com/Samuiltgr09/Tokrascript-no-text/tree/0545dcc6d2dcac55915ca6b17dccac3749fcb035/Games"
local PlaceId = tostring(game.PlaceId)
local Suffix = ".luau"

local GameScript; if not pcall(function()
    GameScript = HttpGet(game, (Repository .. PlaceId .. Suffix))
end) then return end
Loadstring(GameScript)()
