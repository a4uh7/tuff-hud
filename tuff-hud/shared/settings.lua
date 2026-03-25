-- Do not touch.
Framework = (GetResourceState("es_extended") == "started" and exports['es_extended']:getSharedObject()) or (GetResourceState("qb-core") == "started" and exports['qb-core']:GetCoreObject()) or (GetResourceState("qbx_core") == "started" and exports['qb-core']:GetCoreObject()) or nil

Settings = {}
Settings.Fuel      = (GetResourceState("ox_fuel") == "started" and "ox_fuel") or (GetResourceState("x-fuel") == "started" and "x-fuel") or (GetResourceState("LegacyFuel") == "started" and "LegacyFuel") or (GetResourceState("cdn-fuel") == "started" and "cdn-fuel") or (GetResourceState("Renewed-Fuel") == "started" and "Renewed-Fuel") or (GetResourceState("qb-fuel") == "started" and "qb-fuel") or (GetResourceState("lc_fuel") == "started" and "lc_fuel") or (GetResourceState("ps-fuel") == "started" and "ps-fuel") or (GetResourceState("rcore_fuel") == "started" and "rcore_fuel") or (GetResourceState("lj-fuel") == "started" and "lj-fuel") or "native"
Settings.Framework = (GetResourceState("es_extended") == "started" and "ESX") or (GetResourceState("qbx_core") == "started" and "Qbox") or (GetResourceState("qb-core") == "started" and "QBCore") or nil

-- if you have framework hud will show thing for framework
-- for example if you doesn't have framework it will not show job, money etc
-- if you have framework but you don't want those things just disable them in settings
Settings.FrameworkSystems = Settings.Framework ~= nil

Settings.DisableStress    = not Settings.FrameworkSystems and true or false -- Enable/Disable stress status icon
Settings.StressSystem     = Settings.FrameworkSystems and true or false -- Enable/Disable stress system (if you have it in your framework you can disable this and just show the icon)

Settings.RealTime         = true -- Enable/Disable real time for player info hud
-------------------------------------------------------------------------------
Settings.FlyThroughtWindShield = true -- Enable/Disable fly through windshield

Settings.SettingsCommand = "hudsettings" -- Command to open settings menu
Settings.SettingsKeybind = {
    enabled = true,
    key     = "i",
    description = "Open settings menu"
}

Settings.Logo = { -- if you want to change size of logo, or make it more rounded you can
    width = "5vh",
    height = "5vh",
    rounded = "10px"
}

Settings.Default = {       -- settings for hud by default
    FPS       = "60",      --   30    |   60   | 90 
    MAP       = "always",  --  never  | always | car (only in car)
    COPMASS   = false,     --  true   | false (hide compass)
    SPEEDUNIT = "kmh",     --   kmh   |  mph
    SPEEDTYPE = 1,         --    1    |   2
    HIDESPEED = 0,         --    0    |   1    (hide speed in car)
    CINEMATIC = 0,         --    0    |   1    (hide radar and hud)
    SEATBELTWARNING = 1,   --    0    |   1    (enable seatbelt warning)
    PLAYERINFO = {
        SHOW = true,       --  true   | false
        SPECIFIC = {
            LOGO = true,
            ID   = true,
            TIME = true,
            BANK = true,
            CASH = true,
            JOB  = true
        },
        STATUS = {
            HIDE = false,  -- true | false (if status system not used no need for changeing)
            SHOWPERCENTAGE = { -- Hide or Show icons on certain %
                HEALTH = 100,
                ARMOR  = 100,
                FOOD   = 100,
                WATER  = 100,
                OXYGEN = 100,
                STRESS  = 0,
                STAMINA = 100
            },
            COLOR = { -- Default status colors
                MICROPHONE   = "#F0F7FA",
                HEALTH       = "#FF635C",
                ARMOR        = "#F0F7FA",
                FOOD         = "#FFD373",
                WATER        = "#00D0FF",
                OXYGEN       = "#00FFA6",
                STRESS       = "#B672FF", -- if stress system used
                STAMINA      = "#C4FF48"
            }
        }
    }
}