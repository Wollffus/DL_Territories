ESX                           = nil
local PlayerData              = {}
local inZone = false
local inZone2 = false
local inZone3 = false
local inZone4 = false
local inZone5 = false
local inZone6 = false
local cooldown = 0
local cooldownrun = false

Citizen.CreateThread(function ()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
 	PlayerData = ESX.GetPlayerData()
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)
-------------------------------------------------------------------

local gangs = {
{name = 'Ballas Hood', gang = 'SouthsideBallas'},
{name = 'Runtz Hood', gang = 'RuntzGang'},
{name = 'Slump Hood', gang = 'SlumpGang'},
{name = 'Ghost Hood', gang = 'GhostGang'},
{name = 'South Side', gang = 'South Side'},
{name = 'South Side', gang = 'South Side'}
}

--------------------------------------------------------------------


Citizen.CreateThread(function ()
  while true do
    Wait(0)

    local coords = GetEntityCoords(PlayerPedId())


		if (Vdist(coords, 63.99, -1903.16, 21.22, true) < 75.0) then
			if inZone == false then
				inZone = true
				if cooldown == 0 then
					PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
					ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[1].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
					cooldown = 1000
						cooldownrun = true
						countdown()
				end
			end
		else
			inZone = false
		end

		if (Vdist(coords, -179.66, -1649.65, 32.66, true) < 75.0) then
			if inZone2 == false then
				inZone2 = true
				if cooldown == 0 then
					PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
					ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[2].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
					cooldown = 1000
						cooldownrun = true
						countdown()
				end
			end
		else
			inZone2 = false
		end

		if (Vdist(coords, 82.27, -1590.51, 28.71, true) < 75.0) then
			if inZone3 == false then
				inZone3 = true
					if cooldown == 0 then
						PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
						ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[3].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
						cooldown = 1000
						cooldownrun = true
						countdown()
					end
			end
		else
			inZone3 = false
		end

		if (Vdist(coords, 324.02, -2031.00, 20.23, true) < 75.0) then
			if inZone4 == false then
				inZone4 = true
					if cooldown == 0 then
						PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
						ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[4].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
						cooldown = 1000
						cooldownrun = true
						countdown()
					end
			end
		else
			inZone4 = false
		end

--[[		if (Vdist(coords, 327.39, -2033.77, 20.95, true) < 100.0) then
			if inZone4 == false then
				inZone4 = true
					if cooldown == 0 then
						PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
						ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[4].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
						cooldown = 1000
						cooldownrun = true
						countdown()
					end
			end
		else
			inZone4 = false
		end

		    local coords = GetEntityCoords(PlayerPedId())

		if (Vdist(coords, 480.64, -1614.93, 28.80, true) < 150.0) then
			if inZone5 == false then
				inZone5 = true
					if cooldown == 0 then
						PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
						ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[5].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
						cooldown = 1000
						cooldownrun = true
						countdown()
					end
			end
		else
			inZone5 = false
		end

				if (Vdist(coords, -101.40, -1298.24, 28.92, true) < 100.0) then
			if inZone6 == false then
				inZone6 = true
					if cooldown == 0 then
						PlaySoundFrontend(-1, "MP_AWARD", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
						ESX.ShowAdvancedNotification('Attention', 'Gang Turf', 'ENTER AT OWN RISK ~r~' .. gangs[6].gang, 'CHAR_LESTER_DEATHWISH', 8, false, true, 90)
						cooldown = 1000
						cooldownrun = true
						countdown()
					end
			end
		else
			inZone6 = false
		end]]
	end
end)

function countdown()
	Citizen.CreateThread(function ()
		while cooldown ~= 0 and cooldownrun do
			Citizen.Wait(0)
			cooldown = cooldown - 1
		end
		cooldown = 0
		cooldownrun = false
	end)
end