if not climate_mod.settings.sound then return end

local EFFECT_NAME = "climate_api:sound"

local handles = {}
local function start_sound(pname, weather, sound)
	if handles[pname] == nil then handles[pname] = {} end
	if handles[pname][weather] ~= nil then return end
	local handle = minetest.sound_play(sound, {
		to_player = pname,
		loop = true
	})
	handles[pname][weather] = handle
end

local function stop_sound(pname, weather, sound)
	if handles[pname] == nil or handles[pname][weather] == nil then return end
	local handle = handles[pname][weather]
	minetest.sound_stop(handle)
	handles[pname][weather] = nil
end

local function start_effect(player_data)
	for playername, data in pairs(player_data) do
		for weather, value in pairs(data) do
			start_sound(playername, weather, value)
		end
	end
end

local function handle_effect(player_data, prev_data)
	for playername, data in pairs(player_data) do
		for weather, value in pairs(data) do
			if prev_data[playername][weather] == nil then
				start_sound(playername, weather, value)
			end
		end
	end

	for playername, data in pairs(prev_data) do
		for weather, value in pairs(data) do
			if player_data[playername][weather] == nil then
				stop_sound(playername, weather, value)
			end
		end
	end
end

local function stop_effect(prev_data)
	minetest.log(dump2(prev_data, "stop_effect"))
	for playername, data in pairs(prev_data) do
		for weather, value in pairs(data) do
			stop_sound(playername, weather, value)
		end
	end
end

climate_api.register_effect(EFFECT_NAME, start_effect, "start")
climate_api.register_effect(EFFECT_NAME, handle_effect, "tick")
climate_api.register_effect(EFFECT_NAME, stop_effect, "stop")
climate_api.set_effect_cycle(EFFECT_NAME, climate_api.LONG_CYCLE)