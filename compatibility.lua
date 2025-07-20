if data.raw["space-location"]["slp-solar-system-sun2"] then
	data.raw["space-location"]["slp-solar-system-sun2"].redrawn_connections_exclude = true
end

if data.raw.planet["terrapalus"] then
	local planet = data.raw.planet["terrapalus"]
	if
		not (planet.orbit and planet.orbit.parent and planet.orbit.parent.name and planet.orbit.parent.name == "gleba")
	then
		PlanetsLib:update({
			{
				type = "planet",
				name = "terrapalus",
				orbit = {
					parent = {
						type = "planet",
						name = "gleba",
					},
					distance = 3.5,
					orientation = 0.46,
				},
			},
		})
	end
end

if data.raw.planet["erimos-prime"] then
	data.raw.planet["erimos-prime"].distance = 13.3
end
