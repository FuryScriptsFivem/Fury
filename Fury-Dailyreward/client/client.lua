local QBCore = exports['qb-core']:GetCoreObject()

local receivedmoney = false

local playerPed = PlayerPedId()


Citizen.CreateThread(function()
    Wait(0)
    exports[Config.Target]:AddBoxZone("daily-reward", vector3(436.28, -978.66, 30.69), 1, 1, {
         name = "daily-reward",
         heading = "2",
                   --debugPoly=true,
        minZ = 27.49,
        maxZ = 31.49
    },{
    options = {
        {
        type = "client",
        event = "qb-dailyreward:giveMoney",
        icon = "fas fa-money-bill",
        label = "Claim Reward",
        --job = "police",     -- here u can put ur custom job
        gang = "ballas",    -- here u put ur custom gang
        },
    },
    distance = 2.5
})
end)

RegisterNetEvent("qb-dailyreward:giveMoney")
AddEventHandler("qb-dailyreward:giveMoney", function()
    QBCore.Functions.Progressbar('Getting Reward', 'Getting Reward', Config.Claiming, false, false, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {
		animDict = 'anim@gangops@facility@servers@',
		anim = 'hotwire',
		flags = 16,
	}, {}, {}, function()
        if receivedmoney == false then
            TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_MOP", 0, true)
            TriggerServerEvent("qb-dailyreward:server:giveMoney") 
            receivedmoney = true
            Citizen.Wait(2000)
            QBCore.Functions.Notify('Reward Collected !!', 'success', 5000)
            else
                QBCore.Functions.Notify('Reward Received !!', 'error', 5000)
        end
    end)

    end)

    




























--Model Name:	prop_recyclebin_02b
--Model Hash:	673826957

--Heading:	179.94
--Coords:		vector3(436.91, -988.08, 29.69)
--Rotation:	vector3(0.0, 0.04, 179.94)