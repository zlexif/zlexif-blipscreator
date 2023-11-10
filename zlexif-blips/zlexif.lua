-- main.lua or similar
QBCore = exports['qb-core']:GetCoreObject()

local function CreateBlips()
    for _, blipInfo in pairs(Config.Blips) do
        local blip = AddBlipForCoord(blipInfo.coords.x, blipInfo.coords.y, blipInfo.coords.z)
        SetBlipSprite(blip, blipInfo.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipInfo.scale)
        SetBlipColour(blip, blipInfo.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipInfo.label)
        EndTextCommandSetBlipName(blip)
    end
end

AddEventHandler('playerSpawned', function()
    CreateBlips()
end)
