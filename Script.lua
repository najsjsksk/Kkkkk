if not getgenv().Key or not getgenv().id then
    error("Chưa có KEY hoặc ID.")
end

local http = game:HttpGet("https://your-api-site.com/validate?key=" .. getgenv().Key .. "&id=" .. getgenv().id .. "&hwid=" .. game:GetService('RbxAnalyticsService'):GetClientId())
local response = game:GetService("HttpService"):JSONDecode(http)

if not response.success then
    error(response.message or "Không xác thực được.")
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
