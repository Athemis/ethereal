
-- Scorched Tree Fence
minetest.register_node("ethereal:fence_scorched", {
	description = "Scorched Tree Fence",
	drawtype = "fencelike",
	tiles = {"scorched_tree.png"},
	inventory_image = "default_fence_overlay.png^scorched_tree.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^scorched_tree.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_scorched 4",
	recipe = {
		{"ethereal:scorched_tree", "", "ethereal:scorched_tree"},
		{"ethereal:scorched_tree", "", "ethereal:scorched_tree"},
	}
})

-- Jungle Wood Fence
minetest.register_node("ethereal:fence_junglewood", {
	description = "Jungle Wood Fence",
	drawtype = "fencelike",
	tiles = {"default_junglewood.png"},
	inventory_image = "default_fence_overlay.png^default_junglewood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^default_junglewood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_junglewood 4",
	recipe = {
		{"default:junglewood", "", "default:junglewood"},
		{"default:junglewood", "", "default:junglewood"},
	}
})

-- Frost Wood Fence
minetest.register_node("ethereal:fence_frostwood", {
	description = "Frost Wood Fence",
	drawtype = "fencelike",
	tiles = {"frost_wood.png"},
	inventory_image = "default_fence_overlay.png^frost_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^frost_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 1, put_out_fire = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_frostwood 4",
	recipe = {
		{"ethereal:frost_wood", "", "ethereal:frost_wood"},
		{"ethereal:frost_wood", "", "ethereal:frost_wood"},
	}
})

-- Redwood Fence
minetest.register_node("ethereal:fence_redwood", {
	description = "Redwood Fence",
	drawtype = "fencelike",
	tiles = {"redwood_wood.png"},
	inventory_image = "default_fence_overlay.png^redwood_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^redwood_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_redwood 4",
	recipe = {
		{"ethereal:redwood_wood", "", "ethereal:redwood_wood"},
		{"ethereal:redwood_wood", "", "ethereal:redwood_wood"},
	}
})

-- Willow Wood Fence
minetest.register_node("ethereal:fence_willowwood", {
	description = "Willow Wood Fence",
	drawtype = "fencelike",
	tiles = {"willow_wood.png"},
	inventory_image = "default_fence_overlay.png^willow_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^willow_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_willowwood 4",
	recipe = {
		{"ethereal:willow_wood", "", "ethereal:willow_wood"},
		{"ethereal:willow_wood", "", "ethereal:willow_wood"},
	}
})

-- Healing Tree Wood Fence
minetest.register_node("ethereal:fence_yellowwood", {
	description = "Healing Tree Wood Fence",
	drawtype = "fencelike",
	tiles = {"yellow_wood.png"},
	inventory_image = "default_fence_overlay.png^yellow_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^yellow_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, put_out_fire = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_yellowwood 4",
	recipe = {
		{"ethereal:yellow_wood", "", "ethereal:yellow_wood"},
		{"ethereal:yellow_wood", "", "ethereal:yellow_wood"},
	}
})

-- Palm Tree Wood Fence
minetest.register_node("ethereal:fence_palmwood", {
	description = "Palm Wood Fence",
	drawtype = "fencelike",
	tiles = {"moretrees_palm_wood.png"},
	inventory_image = "default_fence_overlay.png^moretrees_palm_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^moretrees_palm_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_palmwood 4",
	recipe = {
		{"ethereal:palm_wood", "", "ethereal:palm_wood"},
		{"ethereal:palm_wood", "", "ethereal:palm_wood"},
	}
})

-- Banana Tree Wood Fence
minetest.register_node("ethereal:fence_bananawood", {
	description = "Banana Wood Fence",
	drawtype = "fencelike",
	tiles = {"banana_wood.png"},
	inventory_image = "default_fence_overlay.png^banana_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^banana_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_bananawood 4",
	recipe = {
		{"ethereal:banana_wood", "", "ethereal:banana_wood"},
		{"ethereal:banana_wood", "", "ethereal:banana_wood"},
	}
})


-- Mushroom Fence
minetest.register_node("ethereal:fence_mushroom", {
	description = "Mushroom Fence",
	drawtype = "fencelike",
	tiles = {"mushroom_trunk.png"},
	inventory_image = "default_fence_overlay.png^mushroom_trunk.png^default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^mushroom_trunk.png^default_fence_overlay.png^[makealpha:255,126,126",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	output = "ethereal:fence_mushroom 4",
	recipe = {
		{"ethereal:mushroom_trunk", "", "ethereal:mushroom_trunk"},
		{"ethereal:mushroom_trunk", "", "ethereal:mushroom_trunk"},
	}
})