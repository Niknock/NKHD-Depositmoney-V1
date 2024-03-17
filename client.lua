Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local pedCoords = GetEntityCoords(PlayerPedId())

        for i, marker in ipairs(Config.Markers) do
            local distance = #(pedCoords - marker.Coords)

            if distance <= marker.Radius then
                DrawText3D(marker.Coords.x, marker.Coords.y, marker.Coords.z, marker.PromptText .. marker.MenuTitle)
                if IsControlJustPressed(0, 38) then
                    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_amount_' .. i, {
                        title = marker.MenuTitle
                    }, function(data, menu)
                        local amount = tonumber(data.value)
                        
                        if amount == nil or amount <= 0 then
                            ESX.ShowNotification(Config.NotificationInvalidAmount)
                        else
                            menu.close()
                            TriggerServerEvent(Config.DepositMoneyEvent, marker.SocietyName, amount)
                            ESX.ShowNotification(Config.NotificationDepositSuccess)
                        end
                    end, function(data, menu)
                        menu.close()
                    end)
                end
            end
        end
    end
end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end