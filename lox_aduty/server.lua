local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj  end)

ESX.RegisterServerCallback("Admin:getRankFromPlayer", function(source, cb)
    local player = ESX.GetPlayerFromId(source)

    if player ~= nil then
        local playerGroup = player.getGroup()

        if playerGroup ~= nil then 
            cb(playerGroup)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)

ESX.RegisterServerCallback('rw:getGroup', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb(xPlayer.getGroup())
end)

RegisterCommand("aduty", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "pl" or xPlayer.getGroup() == "stvpl" or xPlayer.getGroup() == "manager" or xPlayer.getGroup() == "teamleitung" or xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "supermod" or xPlayer.getGroup() == "mod" or xPlayer.getGroup() == "supersupport" or xPlayer.getGroup() == "support" or xPlayer.getGroup() == "_dev" then
        TriggerClientEvent('toggleAduty', source)
    else
        TriggerClientEvent(Config.Notification, source, "#1df5fc", "Admindienst", "Du hast keine Rechte.")
    end
end, false)

RegisterCommand("ad", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "pl" or xPlayer.getGroup() == "stvpl" or xPlayer.getGroup() == "manager" or xPlayer.getGroup() == "teamleitung" or xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "supermod" or xPlayer.getGroup() == "mod" or xPlayer.getGroup() == "supersupport" or xPlayer.getGroup() == "support" or xPlayer.getGroup() == "_dev" then
        TriggerClientEvent('toggleAduty', source)
    else
        TriggerClientEvent(Config.Notification, source, "#1df5fc", "", "Du hast keine Rechte.")
    end
end, false)




TriggerEvent("es:addGroupCommand", "ad", "superadmin", function(source, args)
    TriggerClientEvent("toggleAduty", source)
end, function(source, args)
    TriggerEvent(Config.Notification, "#1df5fc", "ENTWICKLER-MODUS", "Keine Rechte.")
end)

TriggerEvent("es:addGroupCommand", "ad", "mod", function(source, args)
    TriggerClientEvent("toggleAduty", source)
end, function(source, args)
    TriggerEvent(Config.Notification, "#1df5fc", "ADMINISTRATION", "Keine Rechte.")
end)

TriggerEvent("es:addGroupCommand", "ad", "admin", function(source, args)
    TriggerClientEvent("toggleAduty", source)
end, function(source, args)
    TriggerEvent(Config.Notification, "#1df5fc", "ADMINISTRATION", "Keine Rechte.")
end)

