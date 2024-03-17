Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local pedCoords = GetEntityCoords(PlayerPedId())

        for i, marker in ipairs(Config.Markers) do
            local distance = #(pedCoords - marker.Coords)

            if distance <= marker.Radius then
                ESX.ShowHelpNotification(marker.PromptText, false, true)
                DrawMarker(marker.Type, marker.Coords.x, marker.Coords.y, marker.Coords.z - 0.0, 0, 0, 0, 0, 0, 0, marker.Scale.x, marker.Scale.y, marker.Scale.z, marker.Color.r, marker.Color.g, marker.Color.b, marker.Color.a, false, true, 2, nil, nil, false)
                if IsControlJustPressed(0, 38) then
                    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_amount_' .. i, {
                        title = marker.MenuTitle
                    }, function(data, menu)
                        local amount = tonumber(data.value)
                        
                        if amount == nil or amount <= 0 then
                            ShowNotification(Config.NotificationInvalidAmount)
                        else
                            menu.close()
                            TriggerServerEvent(Config.DepositMoneyEvent, marker.SocietyName, amount)
                            ShowNotification(Config.NotificationDepositSuccess .. amount .. '$')
                        end
                    end, function(data, menu)
                        menu.close()
                    end)
                end
            end
        end
    end
end)

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end
