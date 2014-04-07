-- Change j to 1 for 3D style leaves, otherwise 0 is 2D

local j = 0

if j == 0 then
	leaftype = "plantlike"
else
	leaftype = "allfaces_optional"
end

--= Define leaves for ALL trees (and Mushroom Tops)

-- Default Apple Tree Leaves
minetest.register_node(":default:leaves", {
	description = "Leaves",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'ethereal:tree_sapling'},
				rarity = 20,
			},
			{
				items = {'default:leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- Default Jungle Tree Leaves
minetest.register_node(":default:jungleleaves", {
	description = "Jungle Leaves",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"default_jungleleaves.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{	items = {'ethereal:jungle_tree_sapling'},
				rarity = 20,
			},
			{
				items = {'default:jungleleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- Default Banana Tree Leaves
minetest.register_node("ethereal:bananaleaves", {
	description = "Banana Leaves",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"banana_leaf.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'ethereal:banana_tree_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:bananaleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- Healing Tree Leaves
minetest.register_node("ethereal:yellowleaves", {
	description = "Healing Tree Leaves",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"yellow_leaves.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{	items = {'ethereal:yellow_tree_sapling'},
				rarity = 50,
			},
			{
				items = {'ethereal:yellowleaves'},
			}
		}
	},
	-- Leaves are edible, heal half a heart
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
	light_source = 9,
})

-- Palm Tree Leaves
minetest.register_node("ethereal:palmleaves", {
	description = "Palm Leaves",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"moretrees_palm_leaves.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{	items = {'ethereal:palm_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:palmleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- Pine Tree Leaves
minetest.register_node("ethereal:pineleaves", {
	description = "Pine Needles",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"pine_leaves.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{	items = {'ethereal:pine_tree_sapling'},
				rarity = 20,
			},
			{	items = {'ethereal:pine_nuts'},
				rarity = 5,
			},
			{
				items = {'ethereal:pineleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- Frost Tree Leaves
minetest.register_node("ethereal:frost_leaves", {
	description = "Frost Leaves",
	drawtype = leaftype,
	visual_scale = 1.1,
	tiles = {"ethereal_frost_leaves.png"},
	paramtype = "light",
	waving = 1,
	groups = {snappy=3, leafdecay=3, puts_out_fire=1},
	drop = {
		max_items = 1,
		items = {
			{	items = {'ethereal:frost_tree_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:frost_leaves'},
			}
		}
	},
	light_source = 9,
	sounds = default.node_sound_leaves_defaults(),
})

-- Mushroom Tops
minetest.register_node("ethereal:mushroom", {
	description = "Mushroom Cap",
	tiles = {"mushroom_block.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1},
	drop = {
		max_items = 1,
		items = {
			{	items = {'ethereal:mushroom_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:mushroom'},
			}
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("ethereal:mushroom_pore", {
	description = "Mushroom Pore",
	tiles = {"mushroom_block2.png"},
	groups = {snappy=3,cracky=3,choppy=3,oddly_breakable_by_hand=3,disable_jump=1, fall_damage_add_percent=-100},
	sounds = default.node_sound_dirt_defaults(),
})

--= Define Fern & Shrubs

-- Fern (boston)
minetest.register_node("ethereal:fern", {
        description = "Fern",
        drawtype = "plantlike",
        visual_scale = 1.2,
        tiles = {"fern.png"},
        inventory_image = "fern.png",
        wield_image = "fern.png",
        paramtype = "light",
        waving = 1,
        walkable = false,
        is_ground_content = true,
        buildable_to = true,
	drop = {
		max_items = 1,
		items = {
			{items = {'ethereal:fern_tubers'},rarity = 6},
			{items = {'ethereal:fern'}},
		}
	},
        groups = {snappy=3,flora=1,attached_node=1},
        sounds = default.node_sound_leaves_defaults(),
        selection_box = {
                type = "fixed",
                fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
        },
})

-- Boston Ferns sometimes drop edible Tubers (heals 1/2 heart when eaten)
minetest.register_craftitem("ethereal:fern_tubers", {
	description = "Fern Tubers",
	inventory_image = "fern_tubers.png",
	on_use = minetest.item_eat(1),
})

-- Red Shrub (not flammable)
minetest.register_node("ethereal:dry_shrub", {
        description = "Fiery Dry Shrub",
        drawtype = "plantlike",
        visual_scale = 1.0,
        tiles = {"ethereal_dry_shrub.png"},
        inventory_image = "ethereal_dry_shrub.png",
        wield_image = "ethereal_dry_shrub.png",
        paramtype = "light",
        waving = 1,
        walkable = false,
        is_ground_content = true,
        buildable_to = true,
        groups = {snappy=3,flora=1,attached_node=1},
        sounds = default.node_sound_leaves_defaults(),
        selection_box = {
                type = "fixed",
                fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
        },
})

-- Grey Shrub (not Flammable - too cold to burn)
minetest.register_node("ethereal:snowygrass", {
        description = "Snowy Grass",
        drawtype = "plantlike",
        visual_scale = 0.9,
        tiles = {"ethereal_snowygrass.png"},
        inventory_image = "ethereal_snowygrass.png",
        wield_image = "ethereal_snowygrass.png",
        paramtype = "light",
	waving = 1,
        walkable = false,
        buildable_to = true,
        is_ground_content = true,
        groups = {snappy=3,flora=1,attached_node=1},
        sounds = default.node_sound_leaves_defaults(),
        selection_box = {
                type = "fixed",
                fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
        },
})

--= Define Moss Types (Has grass textures on all sides)

function ethereal.add_moss(typ, descr, texture, receipe_item)
	minetest.register_node('ethereal:'..typ..'_moss', {
		description = descr..' Moss',
		tiles = { texture },
		is_ground_content = true,
		groups = {crumbly=3 },
		sounds = default.node_sound_dirt_defaults
	})

	minetest.register_craft({
		output = 'ethereal:'..typ..'_moss',
		recipe = {{'default:dirt', receipe_item }} 
	});
end

ethereal.add_moss( 'crystal',  'Crystal',  'ethereal_frost_grass.png',  'ethereal:frost_leaves');
ethereal.add_moss( 'mushroom', 'Mushroom', 'mushroom_dirt_top.png',     'ethereal:mushroom' );
ethereal.add_moss( 'fiery',    'Fiery',    'ethereal_fiery_grass.png',  'ethereal:dry_shrub' ); 
ethereal.add_moss( 'gray',     'Gray',     'ethereal_gray_grass.png',   'ethereal:snowygrass' );
ethereal.add_moss( 'green',    'Green',    'default_grass.png',         'default:jungleleaves' );

--= Saplings and Leaves Can Be Used as Fuel

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:frost_leaves",
	burntime = 1.5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:frost_tree_sapling",
	burntime = 12.5,
})


--= Define Tree and Mushroom Trunks

-- Frost Tree Trunk
minetest.register_node("ethereal:frost_tree", {
	description = "Frost Tree",
	tiles = {"ethereal_frost_tree_top.png", "ethereal_frost_tree_top.png", "ethereal_frost_tree.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

-- Mushroom Trunk
minetest.register_node("ethereal:mushroom_trunk", {
	description = "Mushroom",
	tiles = {"mushroom_trunk_top.png", "mushroom_trunk_top.png", "mushroom_trunk.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

-- Healing Tree Trunk
minetest.register_node("ethereal:yellow_trunk", {
	description = "Healing Tree Trunk",
	tiles = {"yellow_tree_top.png", "yellow_tree_top.png", "yellow_tree.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

-- Palm Tree Trunk
minetest.register_node("ethereal:palm_trunk", {
	description = "Palm Trunk",
	tiles = {"moretrees_palm_trunk_top.png", "moretrees_palm_trunk_top.png", "moretrees_palm_trunk.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

-- Banana Tree Trunk
minetest.register_node("ethereal:banana_trunk", {
	description = "Banana Trunk",
	tiles = {"banana_trunk_top.png", "banana_trunk_top.png", "banana_trunk.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

--= Define Tree Wood

-- Healing Tree Wood
minetest.register_node("ethereal:yellow_wood", {
	description = "Healing Tree Wood",
	tiles = {"yellow_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults(),
})

-- Palm Tree Wood
minetest.register_node("ethereal:palm_wood", {
	description = "Palm Wood",
	tiles = {"moretrees_palm_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

-- Banana Tree Wood
minetest.register_node("ethereal:banana_wood", {
	description = "Banana Wood",
	tiles = {"banana_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

-- Frost Tree Wood
minetest.register_node("ethereal:frost_wood", {
	description = "Frost Wood",
	tiles = {"frost_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults(),
})

--= Define Food Items

-- Banana (Heals one heart when eaten)
minetest.register_node("ethereal:banana", {
	description = "Banana",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"banana_single.png"},
	inventory_image = "banana_single.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="ethereal:banana", param2=1})
		end
	end,
})

-- Banana Dough
minetest.register_craftitem("ethereal:banana_dough", {
	description = "Banana Dough",
	inventory_image = "banana_dough.png",
})

minetest.register_craft({
	type = "shapeless",
	output = "ethereal:banana_dough",
	recipe = {"farming:flour", "ethereal:banana"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "ethereal:banana_bread",
	recipe = "ethereal:banana_dough"
})

-- Pine Nuts (Heals 1/2 heart when eaten)
minetest.register_craftitem("ethereal:pine_nuts", {
	description = "Pine Nuts",
	inventory_image = "pine_nuts.png",
	on_use = minetest.item_eat(1),
})

-- Banana Bread (Heals 3 hearts when eaten)
minetest.register_craftitem("ethereal:banana_bread", {
	description = "Banana Bread",
	inventory_image = "banana_bread.png",
	on_use = minetest.item_eat(6),
})

-- Strawberry Bush (Gives 3 Strawberries, each heal 1/2 heart)
minetest.register_node("ethereal:strawberry_bush", {
	drawtype = "plantlike",
	walkable = false,
	paramtype = "light",
	visual_scale = 0.8,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	description = "Strawberry Bush",
	tiles = {"strawberry_bush.png"},
	is_ground_content = true,
	groups = {snappy=3,flammable=1},
	drop = 'ethereal:strawberry 3',
	sounds = default.node_sound_defaults(),
})

-- Strawberry (Heals half heart when eaten)
minetest.register_craftitem("ethereal:strawberry", {
	description = "Strawberry",
	inventory_image = "strawberry.png",
	on_use = minetest.item_eat(1),
})

-- Mushroom Plant (Must be farmed to become edible)
minetest.register_node("ethereal:mushroom_plant", {
	description = "Mushroom (edible)",
	drawtype = "plantlike",
	tiles = {"mushroom.png"},
	inventory_image = "mushroom.png",
	drop = 'ethereal:mushroom_craftingitem',
	wield_image = "mushroom.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=2,dig_immediate=3,flammable=2},
	sounds = default.node_sound_defaults(),
	on_use = minetest.item_eat(1),
})

-- Coconut (Gives 4 coconut slices, each heal 1/2 heart)
minetest.register_node("ethereal:coconut", {
	drawtype = "plantlike",
	walkable = false,
	paramtype = "light",
	description = "Coconut",
	tiles = {"moretrees_coconut.png"},
	is_ground_content = true,
	groups = {cracky=2,snappy=2,choppy=2,flammable=1,leafdecay=3,leafdecay_drop=1},
	drop = 'ethereal:coconut_slice 4',
	sounds = default.node_sound_wood_defaults(),
})

-- Coconut Slice (Heals half heart when eaten)
minetest.register_craftitem("ethereal:coconut_slice", {
	description = "Coconut Slice",
	inventory_image = "moretrees_coconut_slice.png",
	on_use = minetest.item_eat(1),
})

-- Golden Apple (Found on Healing Tree, heals all 10 hearts)
minetest.register_node("ethereal:golden_apple", {
	description = "Golden Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_apple_gold.png"},
	inventory_image = "default_apple_gold.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2,leafdecay=3,leafdecay_drop=1},
	on_use = minetest.item_eat(20),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="ethereal:golden_apple", param2=1})
		end
	end,
})

-- Wild Onion
minetest.register_craftitem("ethereal:wild_onion_plant", {
	description = "Wild Onion",
	inventory_image = "wild_onion.png",
	wield_image = "wild_onion.png",
	sounds = default.node_sound_defaults(),
})

-- Mushroom Soup (Heals 1 heart)
minetest.register_craftitem("ethereal:mushroom_soup", {
	description = "Mushroom Soup",
	inventory_image = "mushroom_soup.png",
	on_use = minetest.item_eat(2),
})

-- Cooked Mushroom Soup (Heals 1 and half heart)
minetest.register_craftitem("ethereal:mushroom_soup_cooked", {
	description = "Mushroom Soup Cooked",
	inventory_image = "mushroom_soup_cooked.png",
	on_use = minetest.item_eat(3),
})

--= Crafting Recipes

-- Wooden Bowl (for Mushroom Soup)
minetest.register_craftitem("ethereal:bowl", {
	description = "Bowl",
	inventory_image = "bowl.png",
})

minetest.register_craft({
	output = 'ethereal:bowl',
	recipe = {
		{'group:wood', '', 'group:wood'},
		{'', 'group:wood', ''},
		{'', '', ''},
	}
})

-- Mushroom Soup
minetest.register_craft({
	output = 'ethereal:mushroom_soup',
	recipe = {
		{'ethereal:mushroom_plant', ''},
		{'ethereal:mushroom_plant', ''},
		{'ethereal:bowl', ''},
	}
})

-- Cooked Mushroom Soup
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "ethereal:mushroom_soup_cooked",
	recipe = "ethereal:mushroom_soup"
})

-- Mushroom Tops give 4x Mushrooms for Planting
minetest.register_craft({
	output = 'ethereal:mushroom_craftingitem 4',
	type = shapeless,
	recipe = {
		{'ethereal:mushroom', ''},
		{'', ''},
		{'', ''},
	}
})

-- Turn Healing Tree Trunk into Wood
minetest.register_craft({
	output = 'ethereal:yellow_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:yellow_trunk', ''},
		{'', ''},
		{'', ''},
	}
})

-- Turn Palm Tree Trunk into Wood
minetest.register_craft({
	output = 'ethereal:palm_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:palm_trunk', ''},
		{'', ''},
		{'', ''},
	}
})

-- Turn Banana Tree Trunk into Wood
minetest.register_craft({
	output = 'ethereal:banana_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:banana_trunk', ''},
		{'', ''},
		{'', ''},
	}
})

-- Turn Frost Tree Trunk into Wood
minetest.register_craft({
	output = 'ethereal:frost_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:frost_tree', ''},
		{'', ''},
		{'', ''},
	}
})

--= NOTE: Minetest 0.4.9 turns any registered wood into sticks, no recipe needed

--= Additional Crafting Recipes

-- Gravel (5x cobble in X pattern gives 5 gravel)
minetest.register_craft({
	output = 'default:gravel 5',
	recipe = {
		{'default:cobble', '', 'default:cobble'},
		{'', 'default:cobble', ''},
		{'default:cobble', '', 'default:cobble'},
	}
})

-- Paper (2x3 string = 4 paper)
minetest.register_craft({
	output = 'default:paper 4',
	recipe = {
		{'farming:string', 'farming:string', ''},
		{'farming:string', 'farming:string', ''},
		{'farming:string', 'farming:string', ''},
	}
})

-- Palm Wax
minetest.register_craftitem("ethereal:palm_wax", {
	description = "Palm Wax",
	inventory_image = "palm_wax.png",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "ethereal:palm_wax",
	recipe = "ethereal:palmleaves"
})

-- Candle from Wax and String
minetest.register_craft({
	output = "ethereal:candle 6",
	recipe = {
		{'','farming:string'},
		{'','ethereal:palm_wax'},
		{'','ethereal:palm_wax'},
	}
})

minetest.register_node("ethereal:candle", {
	description = "Candle",
	drawtype = "plantlike",
	inventory_image = "candle_static.png",
	tiles = {
			{name="candle.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=1.0}},
		},	
	paramtype = "light",
	light_source = LIGHT_MAX-3,
	sunlight_propagates = true,
	walkable = false,
	groups = {dig_immediate=3, attached_node=1},
	sounds = default.node_sound_defaults(),
	selection_box = {
			type = "fixed",
			fixed = { -0.15, -0.5, -0.15, 0.15, 0.2, 0.15 },
	},
})
