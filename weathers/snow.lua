local name = weather_mod.modname .. ":snow"

local config = {}

config.environment = {
	spawn_snow = true
}

config.particles = {
	min_pos = {x=-20, y= 3, z=-20},
	max_pos = {x= 20, y=12, z= 20},
	falling_speed=1,
	amount=40,
	exptime=8,
	size=1,
	textures = {}
}

for i = 1,12,1 do
	config.particles.textures[i] = "weather_snowflake" .. i .. ".png"
end

config.conditions = {
	min_height = weather_mod.settings.min_height,
	max_height = weather_mod.settings.max_height,
	max_heat				= 40,
	min_humidity		= 40,
	max_humidity		= 55
}

local function override(params)
	local avg_humidity = 40
	local intensity = params.humidity / avg_humidity
	local dynamic_config = {
		sound = {
			gain = math.min(intensity, 1.2)
		},
		particles = {
			amount = 50 * math.min(intensity, 1.5),
			falling_speed = 1 / math.min(intensity, 1.3)
		}
	}
	return dynamic_config
end

weather_mod.register_effect(name, config, override)
