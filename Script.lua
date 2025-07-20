local HttpService = game:GetService("HttpService")
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local key = getgenv().Key or "ABCDEF-123456"

local response = request({
    Url = "https://workspace.bqjajkakiqwi.repl.co/api/verify",
    Method = "POST",
    Headers = {["Content-Type"] = "application/json"},
    Body = HttpService:JSONEncode({
        key = key,
        hwid = hwid
    })
})

local result = HttpService:JSONDecode(response.Body)

if result.status == "success" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
else
    warn("Lỗi xác thực: " .. result.status)
end
