-- ==================== LOADER.LUA - SIMPLE ====================
print(" ")
print("========================================")
print("🔗 HANHUB LOADER v1.0")
print("========================================")

local mainScriptURL = "https://raw.githubusercontent.com/hanifabdullahzuhdi123/testing/main/Main/HanHub.lua"

print("📥 Downloading main script...")
print("URL: " .. mainScriptURL)
print(" ")

-- Download script
local scriptContent = game:HttpGet(mainScriptURL)
print("✅ Downloaded: " .. #scriptContent .. " characters")

-- Load and execute
loadstring(scriptContent)()

print("✅ Script loaded successfully!")
print(" ")
print("🎮 If you see HanHub UI, it's working!")
print("========================================")
