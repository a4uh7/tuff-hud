local Strings = require 'shared.strings'
local KeyBinds = require 'shared.keybinds'

RegisterCommand("seatbelt", function()
    if not Client.Vehicle then return end
    Client.Seatbelt = not Client.Seatbelt
    Client.Functions.CreateThreadForSeatbeltExiting()

    if not Client.Seatbelt and Settings.FlyThroughtWindShield then
        SetFlyThroughWindscreenParams(7.8, 1.0, 12.0, 8.0)
    else
        SetFlyThroughWindscreenParams(10000.0, 10000.0, 1000.0, 500.0);
    end

    SendNUIMessage({
        type = "toggleSeatbelt",
        seatbelt = Client.Seatbelt
    })
end, false)

RegisterKeyMapping("seatbelt", Strings?.CommandDesc?.seatbelt, "keyboard", KeyBinds?.seatbelt)

RegisterCommand("toggleengine", function()
    if not Client.Vehicle then return end

    local veh = Client.Vehicle
    local IsRunning = GetIsVehicleEngineRunning(veh)

    SetVehicleEngineOn(veh, not IsRunning, 1, 1)
end, false)

RegisterKeyMapping("toggleengine", Strings?.CommandDesc?.engine, "keyboard", KeyBinds?.engine)

Client.Functions.UpdateKeyBinds = function()
    SendNUIMessage({
        type = "updateKeybinds",
        keybinds = KeyBinds
    })
end
