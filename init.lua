clay = {}

function clay.register_clay(name, description, texture, color) 
	minetest.register_node(name, {
		description = description,
		tiles = {texture},
		groups = {crumbly = 3, clay = 1},
		sounds = default.node_sound_dirt_defaults(),
	})

	minetest.register_craft({
		output = name,
		recipe = {
			{"default:clay", color},
		}
	})
end

clay.register_clay("clay:red", "Red Clay", "clay_red.png", "dye:red")
clay.register_clay("clay:green", "Green Clay", "clay_green.png", "dye:green")
clay.register_clay("clay:blue", "Blue Clay", "clay_blue.png", "dye:blue")
clay.register_clay("clay:yellow", "Yellow Clay", "clay_yellow.png", "dye:yellow")

clay.register_clay("clay:grey", "Grey Clay", "clay_grey.png", "dye:grey")

clay.register_clay("clay:white", "White Clay", "clay_white.png", "dye:white")
clay.register_clay("clay:black", "Black Clay", "clay_black.png", "dye:black")
