for _, type in pairs({ "space-location", "planet" }) do
	for _, loc in pairs(data.raw[type] or {}) do
		if loc.orbit and loc.orbit.parent and loc.orbit.parent.name then
			if loc.orbit.parent.name == "star" then
				local tier = data.raw["mod-data"]["PlanetsLib-tierlist"].data[loc.type][loc.name]

				if not tier then
					loc.cosmic_social_distancing_ignore = true
					tier = data.raw["mod-data"]["PlanetsLib-tierlist"].data.default
				end

				local exclude = (tier == -1) or (loc.tier == -1)

				if not exclude then
					loc.orientation = 1 - (tier * 0.15)
					loc.label_orientation = loc.orientation
				end
			end
		end
	end
end

require("compatibility")
