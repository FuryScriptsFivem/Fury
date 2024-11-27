local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent("qb-dailyreward:server:giveMoney")
AddEventHandler("qb-dailyreward:server:giveMoney", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddMoney('cash', math.random(250, 750))
    Player.Functions.AddItem('sandwich', math.random(1, 3))
    Player.Functions.AddItem('water_bottle', math.random(2, 4))
    --TriggerClientEvent('QBCore:Notify', source, "Reward Collected", "success")
end)
