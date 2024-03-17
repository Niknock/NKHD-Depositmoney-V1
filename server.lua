ESX = nil

if Config.ESX == 'old' then
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
elseif Config.ESX == 'new' then
    ESX = exports["es_extended"]:getSharedObject()
else
    print('Wrong ESX Type!')
end

RegisterServerEvent('nkhd_depositmoney:checkJob')
AddEventHandler('nkhd_depositmoney:checkJob', function(SocietyName, amount)

    for _, playerId in ipairs(GetPlayers()) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        local playerName = xPlayer.getName()

        if xPlayer and xPlayer.job and xPlayer.job.name == SocietyName then
            TriggerClientEvent('nkhd_depositmoney:jobNotif', source, playerName, amount)
        end
    end
end)
