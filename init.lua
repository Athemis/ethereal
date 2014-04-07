dofile(minetest.get_modpath("ethereal").."/mapgen_v7.lua")
dofile(minetest.get_modpath("ethereal").."/mushroom.lua")
dofile(minetest.get_modpath("ethereal").."/onion.lua")
local j = 0
if j == 1 then
local frostleaves = {
	description = "Frost Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"ethereal_frost_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3,put_out_fire=1},
	light_source = 9,
	sounds = default.node_sound_leaves_defaults(),
}
minetest.register_node("ethereal:frost_leaves", frostleaves)
else
minetest.register_node(":default:jungleleaves", {
	description = "Jungle Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"default_jungleleaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
		sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node(":default:leaves", {
	description = "Leaves",
	drawtype = "plantlike",
	visual_scale = 1.1,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	groups = {snappy=3, leafdecay=3, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
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
	light_source = 9,
		sounds = default.node_sound_leaves_defaults(),
}
minetest.register_node("ethereal:frost_leaves", frostleaves)
end

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
})

minetest.register_node("ethereal:mushroom_trunk", {
	description = "Mushroom",
	tiles = {"mushroom_trunk_top.png", "mushroom_trunk_top.png", "mushroom_trunk.png"},
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("ethereal:mushroom", {
	description = "Mushroom",
	tiles = {"mushroom_block.png"},
	drop = 'ethereal:mushroomplant',
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1},
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
	sounds = default.node_sound_dirt_defaults
	})

minetest.register_node("ethereal:mushroom_dirt", {
	description = "Mushroom Dirt",
	tiles = {"mushroom_dirt_top.png^mushroom_dirt_top.png", "default_dirt.png","default_dirt.png^mushroom_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults
	})


minetest.register_node("ethereal:fiery_dirt_top", {
	description = "Fiery Dirt",
	tiles = {"default_grass.png^ethereal_fiery_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png^ethereal_fiery_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults
	})

minetest.register_node("ethereal:gray_dirt_top", {
	description = "Gray Dirt",
	tiles = {"ethereal_gray_grass.png", "default_dirt.png", "default_dirt.png^ethereal_gray_dirt_with_grass.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults
	})

minetest.register_node("ethereal:green_dirt_top", {
	description = "Green Dirt",
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1,ethereal_grass=1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults
	})

minetest.register_node("ethereal:frost_wood", {
	description = "Frost Wood",
	tiles = {"frost_wood.png"},
	is_ground_content = true,
	groups = {crumbly=3,wood=1},
	sounds = default.node_sound_dirt_defaults
	})

minetest.register_node("ethereal:strawberry_bush", {
	drawtype = "plantlike",
	walkable = false,
	paramtype = "light",
	description = "Strawberry Bush",
	tiles = {"strawberry_bush.png"},
	is_ground_content = true,
	groups = {snappy=3,flammable=1},
	sounds = default.node_sound_leaves_defaults
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
	sounds = default.node_sound_defaults(),
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

minetest.register_craft({
output = 'ethereal:mushroom_plant 4',
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

-- taken from default/nodes.lua
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
