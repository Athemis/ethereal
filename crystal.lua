-- ADDED TenPlus1 (Crystal Spike)
minetest.register_node("ethereal:crystal_spike", {
	description = "Crystal Spike",
	drawtype = "plantlike",
	tiles = { "crystal_spike.png" },
	inventory_image = "crystal_spike.png",
	wield_image = "crystal_spike.png",
	paramtype = "light",
	light_source = LIGHT_MAX - 7,
	walkable = false,
	damage_per_second = 1,
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
})

-- ADDED TenPlus1 (Crystal Ingot)
minetest.register_craftitem("ethereal:crystal_ingot", {
	description = "Crystal Ingot",
	inventory_image = "crystal_ingot.png",
})

minetest.register_craft({
	output = 'ethereal:crystal_ingot',
	recipe = {
		{'default:mese_crystal', 'ethereal:crystal_spike', ''},
		{'', '', ''},
		{'', '', ''},
	}
})

-- TenPlus1 (Crystal Sword)
minetest.register_tool("ethereal:sword_crystal", {
	description = "Crystal Sword",
	inventory_image = "crystal_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.70, [2]=0.70, [3]=0.25}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	}
})

minetest.register_craft({
	output = 'ethereal:sword_crystal',
	recipe = {
		{'', 'ethereal:crystal_ingot', ''},
		{'', 'ethereal:crystal_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

-- ADDED TenPlus1 (Crystal Pick)
minetest.register_tool("ethereal:pick_crystal", {
	description = "Crystal Pickaxe",
	inventory_image = "crystal_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.8, [2]=0.8, [3]=0.40}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_craft({
	output = 'ethereal:pick_crystal',
	recipe = {
		{'ethereal:crystal_ingot', 'ethereal:crystal_ingot', 'ethereal:crystal_ingot'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	}
})

-- ADDED TenPlus1 (Check if Crystal Gilly Staff in Hand, breathe underwater)
minetest.register_globalstep(function(dtime)
	for _, player in ipairs(minetest.get_connected_players()) do
		if math.random() < 0.1 then
			if player:get_inventory():get_stack("main", player:get_wield_index()):get_name() == "ethereal:crystal_gilly_staff"
			and player:get_breath() < 10 then
				player:set_breath(10)
			end

		end
	end

end)

minetest.register_craftitem("ethereal:crystal_gilly_staff", {
	description = "Crystal Gilly Staff",
	inventory_image = "crystal_gilly_staff.png",
	wield_image = "crystal_gilly_staff.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_craft({
	output = 'ethereal:crystal_gilly_staff',
	recipe = {
		{'ethereal:green_moss', 'ethereal:gray_moss', 'ethereal:fiery_moss'},
		{'ethereal:crystal_moss', 'ethereal:crystal_ingot', 'ethereal:mushroom_moss'},
		{'', 'ethereal:crystal_ingot', ''},
	}
})

-- ADDED TenPlus1 (Ladder recipe, gives 2 instead of 1)
minetest.register_craft({
	output = 'default:ladder 2',
	recipe = {
		{'group:stick', '', 'group:stick'},
		{'group:stick', 'group:stick', 'group:stick'},
		{'group:stick', '', 'group:stick'},
	}
})