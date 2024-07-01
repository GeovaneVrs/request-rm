-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vRP = {}
Tunnel.bindInterface("aqua_request", vRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.aquarequest(message)
    local result = nil

    SendNUIMessage({variavel = "open", message = message})

    Citizen.CreateThread(
        function()
            while result == nil do
                if IsControlJustPressed(0, 246) then
                    SendNUIMessage({variavel = "Y"})
                    result = true
                    break
                end
                if IsControlJustPressed(0, 303) then
                    SendNUIMessage({variavel = "U"})
                    result = false
                    break
                end

                Citizen.Wait(0)
            end
        end
    )

    while result == nil do
        Citizen.Wait(0)
    end

    return result
end
