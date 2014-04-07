dofile(minetest.get_modpath("ethereal").."/mapgen_v7.lua")
dofile(minetest.get_modpath("ethereal").."/mushroom.lua")
dofile(minetest.get_modpath("ethereal").."/onion.lua")
dofile(minetest.get_modpath("ethereal").."/crystal.lua")

-- CHANGED TenPlus1 (This block isn't required, same with END function lower down)
--local j = 0
--if j == 1 then
--local frostleaves = {
--	description = "Frost Leaves",
--	drawtype = "allfaces_optional",
--	visual_scale = 1.3,
--	tiles = {"ethereal_frost_leaves.png"},
--	paramtype = "light",
--	groups = {snappy=3, leafdecay=3,put_out_fire=1},
--	light_source = 9,
--	sounds = default.node_sound_leaves_defaults(),
--}
--minetest.register_node("ethereal:frost_leaves", frostleaves)
--else

minetest.register_node(":default:jungleleaves", {
	description = "Jungle Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"default_jungleleaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = { -- ADDED TenPlus1 (1/20 chance of Jungle Sapling, or simply jungle leaves)
		max_items = 1,
		items = {
			{
				items = {'ethereal:jungle_tree_sapling'},
				rarity = 20,
			},
			{
				items = {'default:jungleleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- ADDED TenPlus1 (Healing Tree Leaves and Sapling added)
minetest.register_node("ethereal:yellowleaves", {
	description = "Healing Tree Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"yellow_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = { -- ADDED TenPlus1 (1/20 chance of Palm Sapling, or simply palm leaves)
		max_items = 1,
		items = {
			{
				items = {'ethereal:yellow_tree_sapling'},
				rarity = 50,
			},
			{
				items = {'ethereal:yellowleaves'},
			}
		}
	},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
})

-- ADDED TenPlus1 (Palm Leaves and Sapling added)
minetest.register_node("ethereal:palmleaves", {
	description = "Palm Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"moretrees_palm_leaves_plantlike.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = { -- ADDED TenPlus1 (1/20 chance of Palm Sapling, or simply palm leaves)
		max_items = 1,
		items = {
			{
				items = {'ethereal:palm_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:palmleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

-- ADDED TenPlus1 (Pine Leaves and Sapling added)
minetest.register_node("ethereal:pineleaves", {
	description = "Pine Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"pine_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = { -- ADDED TenPlus1 (1/20 chance of Pine Sapling, or simply pine leaves)
		max_items = 1,
		items = {
			{
				items = {'ethereal:pine_tree_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:pineleaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node(":default:leaves", {
	description = "Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = { -- CHANGED TenPlus1 (trees now 1/20 chance of ethereal:tree_sapling instead of default:sapling)
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

local frostleaves = {
	description = "Frost Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"ethereal_frost_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, puts_out_fire=1},

	drop = { --ADDED TenPlus1 (1/20 chance of frost tree sapling or just frost leaves)
		max_items = 1,
		items = {
			{
				items = {'ethereal:frost_tree_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:frost_leaves'},
			}
		}
	},

	light_source = 9,
	sounds = default.node_sound_leaves_defaults(),
}
minetest.register_node("ethereal:frost_leaves", frostleaves)
--end

minetest.register_node("ethereal:mushroom_plant", {
	description = "Mushroom(plant)",
	drawtype = "plantlike",
	tiles = {"mushroom.png"},
	inventory_image = "mushroom.png",
	drop = 'ethereal:mushroom_craftingitem',
	wield_image = "mushroom.png",
	paramtype = "light",
	walkable = false,
	groups = {snappy=2,dig_immediate=3,flammable=2},
	sounds = default.node_sound_defaults(),
})

minetest.register_node("ethereal:frost_tree", {
	description = "Frost Tree",
	tiles = {"ethereal_frost_tree_top.png", "ethereal_frost_tree_top.png", "ethereal_frost_tree.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir", -- ADDED TenPlus1
})

minetest.register_node("ethereal:mushroom_trunk", {
	description = "Mushroom",
	tiles = {"mushroom_trunk_top.png", "mushroom_trunk_top.png", "mushroom_trunk.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir", -- ADDED TenPlus1
})

-- ADDED TenPlus1 (Healing Tree Trunk and Wood)
minetest.register_node("ethereal:yellow_trunk", {
	description = "Healing Tree Trunk",
	tiles = {"yellow_tree_top.png", "yellow_tree_top.png", "yellow_tree.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

minetest.register_node("ethereal:yellow_wood", {
	description = "Healing Tree Wood",
	tiles = {"yellow_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1},
	sounds = default.node_sound_wood_defaults()
})

-- ADDED TenPlus1 (Palm Tree Trunk and Wood)
minetest.register_node("ethereal:palm_trunk", {
	description = "Palm Trunk",
	tiles = {"moretrees_palm_trunk_top.png", "moretrees_palm_trunk_top.png", "moretrees_palm_trunk.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
})

minetest.register_node("ethereal:palm_wood", {
	description = "Palm Wood",
	tiles = {"moretrees_palm_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,flammable=3},
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("ethereal:mushroom", {
	description = "Mushroom",
	tiles = {"mushroom_block.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1},

	drop = { --ADDED TenPlus1 (1/20 chance of mushroom spore sapling, or just mushroom block)
		max_items = 1,
		items = {
			{
				items = {'ethereal:mushroom_sapling'},
				rarity = 20,
			},
			{
				items = {'ethereal:mushroom'},
			}
		}
	},

	sounds = default.node_sound_wood_defaults(),
})

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


minetest.register_node("ethereal:crystal_topped_dirt", {
	description = "Crystal Dirt",
	tiles = {"default_grass.png^ethereal_frost_grass.png", "default_dirt.png","default_dirt.png^ethereal_frost_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("ethereal:mushroom_dirt", {
	description = "Mushroom Dirt",
	tiles = {"mushroom_dirt_top.png^mushroom_dirt_top.png", "default_dirt.png","default_dirt.png^mushroom_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})


minetest.register_node("ethereal:fiery_dirt_top", {
	description = "Fiery Dirt",
	tiles = {"default_grass.png^ethereal_fiery_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png^ethereal_fiery_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("ethereal:gray_dirt_top", {
	description = "Gray Dirt",
	tiles = {"ethereal_gray_grass.png", "default_dirt.png", "default_dirt.png^ethereal_gray_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("ethereal:green_dirt_top", {
	description = "Green Dirt",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("ethereal:frost_wood", {
	description = "Frost Wood",
	tiles = {"frost_wood.png"},
	is_ground_content = true,
	groups = {wood=1,choppy=2,oddly_breakable_by_hand=1,put_out_fire=1}, -- FIXED TenPlus1
	sounds = default.node_sound_wood_defaults()
})

minetest.register_node("ethereal:strawberry_bush", {
	drawtype = "plantlike",
	walkable = false,
	paramtype = "light",
	description = "Strawberry Bush",
	tiles = {"strawberry_bush.png"},
	is_ground_content = true,
	groups = {snappy=3,flammable=1},
	drop = 'ethereal:strawberry 3',  -- CHANGED TenPlus1
	sounds = default.node_sound_defaults()
})

-- ADDED TenPlus1 (Coconuts for Palm Trees)
minetest.register_node("ethereal:coconut", {
	drawtype = "plantlike",
	walkable = false,
	paramtype = "light",
	description = "Coconut",
	tiles = {"moretrees_coconut.png"},
	is_ground_content = true,
	groups = {snappy=2,flammable=1},
	drop = 'ethereal:coconut_slice 4',
	sounds = default.node_sound_wood_defaults()
})

-- ADDED TenPlus1 (Golden Apple from Healing Tree)
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

-- ADDED TenPlus1 (Coconut Slice to eat)
minetest.register_craftitem("ethereal:coconut_slice", {
	description = "Coconut Slice",
	inventory_image = "moretrees_coconut_slice.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("ethereal:bowl", {
	description = "Bowl",
	inventory_image = "bowl.png",
})

minetest.register_craftitem("ethereal:mushroom_soup", {
	description = "Mushroom Soup",
	inventory_image = "mushroom_soup.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("ethereal:strawberry", {
	description = "Strawberry",
	inventory_image = "strawberry.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("ethereal:mushroom_soup_cooked", {
	description = "Mushroom Soup",
	inventory_image = "mushroom_soup.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("ethereal:wild_onion_plant", {
	description = "Wild Onion",
	inventory_image = "wild_onion.png",
	wield_image = "wild_onion.png",
	sounds = default.node_sound_defaults()
})

-- ADDED TenPlus1 (Healing Tree Trunk to Wood)
minetest.register_craft({
	output = 'ethereal:yellow_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:yellow_trunk', ''},
		{'', ''},
		{'', ''},
	}
})

-- ADDED TenPlus1 (Palm Trunk to Palm Wood)
minetest.register_craft({
	output = 'ethereal:palm_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:palm_trunk', ''},
		{'', ''},
		{'', ''},
	}
})

minetest.register_craft({
	output = 'ethereal:frost_wood 4',
	type = shapeless,
	recipe = {
		{'ethereal:frost_tree', ''},
		{'', ''},
		{'', ''},
	}
})

minetest.register_craft({
	output = 'default:stick 4',
	type = shapeless,
	recipe = {
		{'ethereal:frost_wood', ''},
		{'', ''},
		{'', ''},
	}
})

-- ADDED TenPlus1 (Mushroom = 4 Mushroom_Craftingitem)
minetest.register_craft({
	output = 'ethereal:mushroom_craftingitem 4',
	type = shapeless,
	recipe = {
		{'ethereal:mushroom', ''},
		{'', ''},
		{'', ''},
	}
})

-- ADDED TenPlus1 (Mushroom Trunk = 4 White Dye)
minetest.register_craft({
	output = 'dye:white 4',
	type = shapeless,
	recipe = {
		{'ethereal:mushroom_trunk', ''},
		{'', ''},
		{'', ''},
	}
})

minetest.register_craft({
	output = 'ethereal:mushroom_soup',
	recipe = {
		{'ethereal:mushroom_plant', ''},
		{'ethereal:mushroom_plant', ''},
		{'ethereal:bowl', ''},
	}
})

minetest.register_craft({
	output = 'ethereal:bowl',
	recipe = {
		{'group:wood', '', 'group:wood'},
		{'', 'group:wood', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "ethereal:mushroom_soup_cooked",
	recipe = "ethereal:mushroom_soup"
})

-- ADDED TenPlus1 (5 Cobble X = 5 Gravel)
minetest.register_craft({
	output = 'default:gravel 5',
	recipe = {
		{'default:cobble', '', 'default:cobble'},
		{'', 'default:cobble', ''},
		{'default:cobble', '', 'default:cobble'},
	}
})

-- ADDED TenPlus1 (2x3 String = 4 Paper)
minetest.register_craft({
	output = 'default:paper 4',
	recipe = {
		{'farming:string', 'farming:string', ''},
		{'farming:string', 'farming:string', ''},
		{'farming:string', 'farming:string', ''},
	}
})

-- Check surrounding grass colour and change any dirt to same coloured grass...
minetest.register_abm({
	nodenames = {"default:dirt_with_grass"},
	interval = 2,
	chance = 1,
	action = function(pos, node)

		local count_grasses = {};
		local curr_max  = 0;
		-- fallback in case no nodes are found
		local curr_type = "ethereal:green_dirt_top"; 

		local positions = minetest.find_nodes_in_area( {x=(pos.x-2), y=(pos.y-2), z=(pos.z-2)},
							       {x=(pos.x+2), y=(pos.y+2), z=(pos.z+2)},
							   "group:ethereal_grass" );
		for _,p in ipairs(positions) do
			-- count the new grass node
			local n = minetest.get_node( p );
			if( n and n.name ) then
				if( not( count_grasses[ n.name ] )) then
					count_grasses[ n.name ] = 1;
				else
					count_grasses[ n.name ] = count_grasses[ n.name ] + 1;	
				end
				-- we found a grass type of which there's more than the current max
				if( count_grasses[ n.name ] > curr_max ) then
					curr_max  = count_grasses[ n.name ];
					curr_type = n.name;
				end
			end
		end

		minetest.set_node(pos, {name = curr_type })
        end
})

-- taken from default/nodes.lua (if block placed on coloured grass and devoid of light it changes to normal dirt)
minetest.register_abm({
	nodenames = {"group:ethereal_grass"}, --{"default:dirt_with_grass"},
	interval = 2,
	chance = 20,
	action = function(pos, node)
		local above = {x=pos.x, y=pos.y+1, z=pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef
				and not ((nodedef.sunlight_propagates or nodedef.paramtype == "light")
				and nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "default:dirt"})
		end
	end
})


-- this is more red than the normal dry shrub - plus it is not flammable
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


-- does not burn - too cold for a fire
minetest.register_node("ethereal:snowygrass", {
        description = "Snowy Grass",
        drawtype = "plantlike",
        visual_scale = 0.9,
        tiles = {"ethereal_snowygrass.png"},
        inventory_image = "ethereal_snowygrass.png",
        wield_image = "ethereal_snowygrass.png",
        paramtype = "light",
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


-- moss: nodes crafted from dirt that have the grass-texture on all sides
ethereal.add_moss = function( typ, descr, texture, receipe_item )

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
ethereal.add_moss( 'gray',     'Gray',     'ethereal_gray_grass.png',   'ethereal:snowygrass' ); -- or default:cobble
ethereal.add_moss( 'green',    'Green',    'default_grass.png',         'default:jungleleaves' );



ethereal.register_sapling_abm = function( sapling_node_name, center_offset, schematic_size, schematic_name, grows_only_on, sapling_descr, sapling_size, sapling_texture )

	-- if the sapling does not exist yet, create a node for it
	if( not( minetest.registered_nodes[ sapling_node_name ] )) then
		minetest.register_node( sapling_node_name, {
			description = sapling_descr,
			drawtype = "plantlike",
			visual_scale = sapling_size,
			tiles = { sapling_texture},
			inventory_image = sapling_texture,
			wield_image = sapling_texture,
			paramtype = "light",
			walkable = false,
			groups = {snappy=2,dig_immediate=3,flammable=2},
			sounds = default.node_sound_defaults(),
		})
	end

	--Grow saplings
	minetest.register_abm({
		nodenames = { sapling_node_name },
		interval = 10,
		chance = 50,
		action = function(pos, node, active_object_count, active_object_count_wider)

			-- this is taken from normal trees - they need nodes of the group soil in order to grow
			local node_under_name =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name;
-- CHANGED TenPlus1 (these 3 lines not required anymore)
--			local is_soil         = minetest.get_item_group(node_under_name, "soil");
--			if is_soil == 0 then
--				return;
--			end

			-- if grows_only_on is specified, then the tree will only grow on a node with that exact name
			if( grows_only_on and node_under_name ~= grows_only_on ) then
				return;
			end 

			minetest.log("action", "A sapling grows into "..tostring( schematic_name ).." at "..minetest.pos_to_string(pos))

			-- since some schematics are not centered - while people expect tree trunks to appear where the sapling was - we need to calculate
			-- an offset depending on rotation; rotation thus can't be "random"
			local rotation = tostring( (math.random( 4 )-1) * 90);
			local p = {x=pos.x, y=pos.y, z=pos.z};
			if(     rotation=="0" ) then
				p.x = pos.x - center_offset.x;
				p.z = pos.z - center_offset.z;
			elseif( rotation=="90" ) then
				p.x = pos.x - center_offset.z;
				p.z = pos.z - ( schematic_size.x - center_offset.x - 1);
			elseif( rotation=="180" ) then
				p.x = pos.x - ( schematic_size.x - center_offset.x - 1);
				p.z = pos.z - ( schematic_size.z - center_offset.z - 1);
			elseif( rotation=="270" ) then
				p.x = pos.x - ( schematic_size.z - center_offset.z - 1);
				p.z = pos.z - center_offset.x;
			end
			
			-- remove the sapling so that the tree may use that space to grow
			minetest.remove_node( pos );
			-- adjust the position so that the tree is centered on the position of the sapling;
			-- rotation is random; existing blocks will NOT be replaced by the tree
			minetest.place_schematic( p, minetest.get_modpath("ethereal").."/schematics/"..schematic_name..".mts", rotation, {}, false );
		end,
	})
end

-- these grow on green dirt
ethereal.register_sapling_abm( 'ethereal:tree_sapling',
		        {x=2,y=0,z=2}, {x=5,y=7,z=5}, 'tree',
			'ethereal:green_dirt_top', 'Tree Sapling', 1.0, 'ethereal_tree_sapling.png' );

ethereal.register_sapling_abm( 'ethereal:jungle_tree_sapling',
			 {x=7,y=0,z=3}, {x=11,y=19,z=11}, 'jungletree',
			'ethereal:green_dirt_top', 'Jungletree Sapling', 1.0, 'ethereal_jungle_tree_sapling.png' );

ethereal.register_sapling_abm( 'ethereal:pine_tree_sapling',
			{x=3,y=1,z=3}, {x=7,y=8,z=7}, 'pinetree',
			'ethereal:green_dirt_top', 'Pine Sapling', 1.0, 'ethereal_pine_tree_sapling.png' );

ethereal.register_sapling_abm( 'ethereal:big_tree_sapling',
			{x=4,y=0,z=4}, {x=9,y=8,z=9}, 'bigtree',
			'ethereal:green_dirt_top', 'Big Tree Sapling', 1.5, 'ethereal_big_tree_sapling.png' );

-- this one grows on blue dirt
ethereal.register_sapling_abm( 'ethereal:frost_tree_sapling',
			{x=3,y=0,z=3}, {x=8,y=20,z=8}, 'frosttrees',
			'ethereal:crystal_topped_dirt', 'Frost Sapling', 1.0, 'ethereal_frost_tree_sapling.png' );

-- this one requires gray biomes
ethereal.register_sapling_abm( 'ethereal:gray_tree_sapling',
			{x=2,y=0,z=2}, {x=5,y=8,z=5}, 'graytrees',
			"ethereal:gray_dirt_top", 'Gray Sapling', 1.0, 'ethereal_gray_tree_sapling.png' ); -- def:soil was nil

-- mushrooms love mushroom-biomes
ethereal.register_sapling_abm( 'ethereal:mushroom_sapling',
			{x=3,y=0,z=3}, {x=8,y=12,z=9}, 'mushroomone',
			'ethereal:mushroom_dirt', 'Mushroom Sapling', 1.0, 'ethereal_mushroom_sapling.png' );

-- palm trees on a sandy beach
ethereal.register_sapling_abm( 'ethereal:palm_sapling',
			{x=3,y=0,z=4}, {x=7,y=10,z=7}, 'palmtree',
			'default:sand', 'Palm Sapling', 1.0, 'moretrees_palm_sapling.png' );

-- Healing Tree on high Snowy Grass
ethereal.register_sapling_abm( 'ethereal:yellow_tree_sapling',
			{x=4,y=0,z=4}, {x=9,y=19,z=9}, 'yellowtree',
			'default:dirt_with_snow', 'Yellow Tree Sapling', 1.0, 'yellow_tree_sapling.png' );
