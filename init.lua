dofile(minetest.get_modpath("ethereal").."/mapgen_v7.lua")
dofile(minetest.get_modpath("ethereal").."/plantlife.lua")
dofile(minetest.get_modpath("ethereal").."/mushroom.lua")
dofile(minetest.get_modpath("ethereal").."/onion.lua")
dofile(minetest.get_modpath("ethereal").."/crystal.lua")

--= Define Dirt Types

-- Dry Dirt
minetest.register_node("ethereal:dry_dirt", {
	description = "Dried Dirt",
	tiles = {"ethereal_dry_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	drop = 'ethereal:dry_dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Jungle Dirt
minetest.register_node("ethereal:jungle_dirt", {
	description = "Jungle Dirt",
	tiles = {"ethereal_grass_jungle_top.png",
	"default_dirt.png","default_dirt.png^ethereal_grass_jungle_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Grove Dirt
minetest.register_node("ethereal:grove_dirt", {
	description = "Grove Dirt",
	tiles = {"ethereal_grass_grove_top.png",
	"default_dirt.png","default_dirt.png^ethereal_grass_grove_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Prairie Dirt
minetest.register_node("ethereal:prairie_dirt", {
	description = "Prairie Dirt",
	tiles = {"ethereal_grass_prairie_top.png",
	"default_dirt.png","default_dirt.png^ethereal_grass_prairie_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Cold Dirt
minetest.register_node("ethereal:cold_dirt", {
	description = "Cold Dirt",
	tiles = {"ethereal_grass_snowy_top.png",
	"default_dirt.png","default_dirt.png^ethereal_grass_snowy_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_craft({
	type = "cooking",
	output = "ethereal:dry_dirt",
	recipe = "default:dirt",
	cooktime = 3,
})

-- Blue Crystal Dirt
minetest.register_node("ethereal:crystal_topped_dirt", {
	description = "Crystal Dirt",
	tiles = {"ethereal_frost_grass.png",
	"default_dirt.png","default_dirt.png^ethereal_frost_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Purple Mushroom Dirt
minetest.register_node("ethereal:mushroom_dirt", {
	description = "Mushroom Dirt",
	tiles = {"mushroom_dirt_top.png^mushroom_dirt_top.png",
	"default_dirt.png","default_dirt.png^mushroom_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Red Fiery Dirt
minetest.register_node("ethereal:fiery_dirt_top", {
	description = "Fiery Dirt",
	tiles = {"ethereal_fiery_grass.png", "default_dirt.png",
	"default_dirt.png^ethereal_fiery_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Gr[a|e]y Dirt
minetest.register_node("ethereal:gray_dirt_top", {
	description = "Gray Dirt",
	tiles = {"ethereal_gray_grass.png", "default_dirt.png",
	"default_dirt.png^ethereal_gray_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Green Dirt
minetest.register_node("ethereal:green_dirt_top", {
	description = "Green Dirt",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

-- Green Dirt 2 (Kept only for compatibility in Xanadu server)
minetest.register_node("ethereal:green_dirt_top2", {
	description = "Green Dirt Alt",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults()
})

--= Check surrounding Coloured Grass and Change Dirt to Same Colour

minetest.register_abm({
	nodenames = {"default:dirt_with_grass"},
	interval = 2,
	chance = 1,
	action = function(pos, node)
		local count_grasses = {};
		local curr_max  = 0;
		local curr_type = "ethereal:green_dirt_top"; -- Fallback Colour

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

--= If Grass Devoid of Light, Change to Dirt

minetest.register_abm({
	nodenames = {"group:ethereal_grass"},
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

--= Check For Saplings, Make Them Grow

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

			local node_under_name =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name;

			-- if grows_only_on is specified, tree grows on specific node
			if( grows_only_on and node_under_name ~= grows_only_on ) then
				return;
			end 

			minetest.log("action", "A sapling grows into "..tostring( schematic_name ).." at "..minetest.pos_to_string(pos))

			-- Calculate Tree's centre position (to grow where sapling was)
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

-- Apple Tree grows on Green Dirt
ethereal.register_sapling_abm( 'ethereal:tree_sapling',
		        {x=2,y=0,z=2}, {x=5,y=7,z=5}, 'tree',
			'ethereal:green_dirt_top', 'Tree Sapling', 1.0, 'ethereal_tree_sapling.png' );

-- Old Jungle Tree (just in case)
--ethereal.register_sapling_abm( 'ethereal:jungle_tree_sapling',
--			 {x=7,y=0,z=3}, {x=11,y=19,z=11}, 'jungletree',
--			'ethereal:jungle_dirt', 'Jungletree Sapling', 1.0, 'ethereal_jungle_tree_sapling.png' );

-- Jungle Tree grows on Jungle Dirt
ethereal.register_sapling_abm( 'ethereal:jungle_tree_sapling',
			 {x=6,y=0,z=4}, {x=11,y=19,z=11}, 'jungletree',
			'ethereal:jungle_dirt', 'Jungletree Sapling', 1.0, 'ethereal_jungle_tree_sapling.png' );

-- Pine Tree grows on Cold Dirt
ethereal.register_sapling_abm( 'ethereal:pine_tree_sapling',
			{x=3,y=1,z=3}, {x=7,y=8,z=7}, 'pinetree',
			'ethereal:cold_dirt', 'Pine Sapling', 1.0, 'ethereal_pine_tree_sapling.png' );

-- Big Tree grows on Green Dirt also
ethereal.register_sapling_abm( 'ethereal:big_tree_sapling',
			{x=4,y=0,z=3}, {x=9,y=8,z=9}, 'bigtree',
			'ethereal:green_dirt_top', 'Big Tree Sapling', 1.5, 'ethereal_big_tree_sapling.png' );

-- Banana Tree grows on Grove Dirt
ethereal.register_sapling_abm( 'ethereal:banana_tree_sapling',
			{x=2,y=0,z=2}, {x=7,y=8,z=7}, 'bananatree',
			'ethereal:grove_dirt', 'Banana Tree Sapling', 1.0, 'banana_tree_sapling.png' );

-- Frost Tree grows on Frost Dirt
ethereal.register_sapling_abm( 'ethereal:frost_tree_sapling',
			{x=3,y=0,z=3}, {x=8,y=20,z=8}, 'frosttrees',
			'ethereal:crystal_topped_dirt', 'Frost Sapling', 1.0, 'ethereal_frost_tree_sapling.png' );

-- Grey Tree grows on Grey Dirt
ethereal.register_sapling_abm( 'ethereal:gray_tree_sapling',
			{x=2,y=0,z=2}, {x=5,y=8,z=5}, 'graytrees',
			"ethereal:gray_dirt_top", 'Gray Sapling', 1.0, 'ethereal_gray_tree_sapling.png' );

-- Giant Mushrooms grow on Mushroom Dirt
ethereal.register_sapling_abm( 'ethereal:mushroom_sapling',
			{x=3,y=0,z=3}, {x=8,y=12,z=9}, 'mushroomone',
			'ethereal:mushroom_dirt', 'Mushroom Sapling', 1.0, 'ethereal_mushroom_sapling.png' );

-- Palm Tree grows on Sandy Beach
ethereal.register_sapling_abm( 'ethereal:palm_sapling',
			{x=3,y=0,z=4}, {x=7,y=10,z=7}, 'palmtree',
			'default:sand', 'Palm Sapling', 1.0, 'moretrees_palm_sapling.png' );

-- Healing Tree grows on Snowy Grass
ethereal.register_sapling_abm( 'ethereal:yellow_tree_sapling',
			{x=4,y=0,z=4}, {x=9,y=19,z=9}, 'yellowtree',
			'default:dirt_with_snow', 'Yellow Tree Sapling', 1.0, 'yellow_tree_sapling.png' );
