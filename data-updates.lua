local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

-- Smooth ice
if settings.startup["ice-actually-melts--smooth-ice-melts"].value then
	data.raw.tile['ice-smooth'].thawed_variant = 'brash-ice'
end

if settings.startup["ice-actually-melts--smooth-ice-buildable"].value then
	data.raw.tile['ice-smooth'].collision_mask = tile_collision_masks.ground()
end

-- Ice platform
if settings.startup["ice-actually-melts--ice-platform-melts"].value then
	data.raw.tile['ice-platform'].thawed_variant = 'brash-ice'
end

if settings.startup["ice-actually-melts--ice-platform-buildable"].value then
	data.raw.tile['ice-platform'].collision_mask = tile_collision_masks.ground()
end