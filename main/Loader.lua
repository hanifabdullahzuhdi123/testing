-- ==================== HANHUB LOADER ====================
-- File: Loader.lua
-- Repository: testing
-- Link: https://raw.githubusercontent.com/hanifabdullahzuhdi123/testing/main/Loader.lua

print(" ")
print("╔══════════════════════════════════════╗")
print("║         HANHUB LOADER v1.0           ║")
print("╚══════════════════════════════════════╝")
print("👤 Author: hanifabdullahzuhdi123")
print("📁 Repository: testing")
print(" ")

-- URL untuk script utama
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/hanifabdullahzuhdi123/testing/main/Main/HanHub.lua"

-- Cek game
local function CheckGame()
    if game.PlaceId == 1537690962 then -- FishIt Game ID
        return true, "FishIt Roblox"
    else
        return false, "Unknown Game (ID: " .. game.PlaceId .. ")"
    end
end

-- Main loading function
local function LoadHanHub()
    print("🔍 Checking game...")
    
    local isFishIt, gameName = CheckGame()
    
    if not isFishIt then
        print("❌ ERROR: This script is for FishIt Roblox only!")
        print("❌ Current Game: " .. gameName)
        print(" ")
        warn("Please join FishIt Roblox game first!")
        return false
    end
    
    print("✅ Game detected: " .. gameName)
    print("📥 Downloading HanHub script...")
    
    -- Load main script
    local success, errorMessage = pcall(function()
        loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
    end)
    
    if success then
        print(" ")
        print("✅✅✅ LOAD SUCCESSFUL ✅✅✅")
        print(" ")
        print("🎮 CONTROLS:")
        print("   • RIGHT CONTROL - Toggle Auto Fishing")
        print("   • Wait for features to initialize...")
        print(" ")
        print("📢 Check output for more information!")
        print(" ")
        return true
    else
        print(" ")
        print("❌❌❌ LOAD FAILED ❌❌❌")
        print("Error: " .. errorMessage)
        print(" ")
        print("🔧 TROUBLESHOOTING:")
        print("   1. Check internet connection")
        print("   2. Make sure script exists on GitHub")
        print("   3. Try again in a few seconds")
        print(" ")
        return false
    end
end

-- Alternative loading method
local function LoadAlternative()
    print("🔄 Trying alternative load method...")
    
    local backupURL = "https://raw.githubusercontent.com/hanifabdullahzuhdi123/testing/main/HanHub.lua"
    
    local success, err = pcall(function()
        loadstring(game:HttpGet(backupURL))()
    end)
    
    if success then
        print("✅ Loaded from backup URL")
        return true
    else
        print("❌ Backup also failed: " .. err)
        return false
    end
end

-- Version info
local function ShowInfo()
    print(" ")
    print("📋 LOADER INFORMATION:")
    print("   • Version: 1.0.0")
    print("   • Created: 2024")
    print("   • GitHub: hanifabdullahzuhdi123/testing")
    print("   • Main Script: /Main/HanHub.lua")
    print(" ")
end

-- Main execution
ShowInfo()

print("🚀 Starting load process...")
print(" ")

-- Try to load
local loaded = LoadHanHub()

if not loaded then
    print("⚠️ Attempting alternative method...")
    LoadAlternative()
end

print(" ")
print("════════════════════════════════════════")
print(" Loader process completed. ")
print("════════════════════════════════════════")

-- Return success status
return loaded
