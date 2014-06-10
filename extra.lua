
--= Additional Items

-- Glostone and Recipe (A little bit of light decoration)
minetest.register_node("ethereal:glostone", {
	description = "Glo Stone",
	tiles = {"glostone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	light_source = LIGHT_MAX - 1,
	drop = 'ethereal:glostone',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'ethereal:glostone',
	recipe = {
		{'default:torch', 'default:stone', 'dye:yellow'},
		{'', '', ''},
		{'', '', ''},
	}
})

-- Ladder (Changes default recipe to give 2x ladders instead of only 1)
minetest.register_craft({
	output = 'default:ladder 2',
	recipe = {
		{'group:stick', '', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', '', 'group:stick'},
	}
})

-- Charcoal Lump
minetest.register_craftitem("ethereal:charcoal_lump", {
	description = "Lump of Charcoal",
	inventory_image = "charcoal_lump.png",
})

minetest.register_craft({
	output = 'ethereal:charcoal_lump 2',
	recipe = {
		{'ethereal:scorched_tree'}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:charcoal_lump",
	burntime = 20,
})

-- Make Torch from Charcoal Lump
minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'ethereal:charcoal_lump'},
		{'default:stick'},
	}
})