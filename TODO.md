# TODO

## Required for MVP
- Test non-random heat and humidity values
- Re-implement sounds into new engine
- Implement start/end events
- Make sure all weather presets are working
- Implement chat commands

## Planned for first release
- Improve test_condition function
- Implement ABM system for additional effects
- Add light level to possible conditions
- Implement fallback for sky changes without skylayer
- Configurable number of days in a year
- Add license information to source files
- Write helpful README
- Find good values for weather conditions
- Set effects on player join

## Nice to have
- Write documentation on how to add weathers and effects
- Register *Moon Phases* as a weather preset using the *skybox* effect
- Assign meta data (like "downfall", "wind", etc.) to weather presets
- Fog effects
- Optimize performance by replacing some particles with animated texture planes
- Make switches between effects more smooth
- Adjust size of particle boxes based on player speed
- Ability to register environment conditions dynamically (like the heat)
- Create conditions for time of day, annual progression, biome filters
- Let rain extinguish flames
- Ability to force toggle weather presets on / off with chat commands

## Future Plans & Ideas
- Complete season system
	- crops grow better in their respective season or worse in winter
	- regrowing apples, lemons, etc. in their respective months
	- holidays and reminders via chat commands
	- day/night cycle adjusted to season
	- special events like a bloodmoon -> increased mob spawns
- Fantasy weather effects
	- pretty skyboxes
	- swirling flower petals, mushroom spores, etc. in fitting biomes
	- underground environment effects
	- space effects at high y-level (meteors, magnetic storms, different skybox)
- Eco Pack (with climate change)
	- Integration with Technic mods, etc.
	- Track planted trees vs chopped wood, killed mobs, etc.
	- Ecological footprint influences weather
	- Extreme weather scenarios and desasters
	- Tornados, poisonous rain that kills crops and animals, bush fires,...
- Survival Pack
	- Body temperature becomes survival aspect
	- Use local heat as base value
	- swimming will cool down
	- standing near fire will warm up
	- craftable warm clothes
	- metal armor will worsen heat issues