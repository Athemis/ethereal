ethereal = {""} -- This line stops errors

--= Define Biomes

minetest.register_biome({
	name           = "alpine",
	node_top       = "default:dirt_with_snow", 
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	height_min     = 40,
	height_max     = 90,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "healing",
	node_top       = "default:dirt_with_snow",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 75,
	height_max     = 140,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "snowy",
	node_top       = "ethereal:cold_dirt", 
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	height_min     = 1,
	height_max     = 40,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "frost",
	node_top       = "ethereal:crystal_topped_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 10.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "grassy",
	node_top       = "ethereal:green_dirt_top", 
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 91,
	heat_point     = 13.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "caves",
	node_top       = "default:desert_stone",
	depth_top      = 2,
	node_filler    = "air",
	depth_filler   = 8,
	height_min     = 1,
	height_max     = 41,
	heat_point     = 15.0,
	humidity_point = 25.0,
})

minetest.register_biome({
	name           = "grayness",
	node_top       = "ethereal:gray_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 5,
	height_min     = 1,
	height_max     = 41,
	heat_point     = 15.0,
	humidity_point = 30.0,
})

minetest.register_biome({
	name           = "grassytwo",
	node_top       = "ethereal:green_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 91,
	heat_point     = 15.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "prairie",
	node_top       = "ethereal:prairie_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 3,
	height_max     = 26,
	heat_point     = 20.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "jumble",
	node_top       = "ethereal:green_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 25.0,
	humidity_point = 50.0,
})

minetest.register_biome({
	name           = "junglee",
	node_top       = "ethereal:jungle_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 30.0,
	humidity_point = 60.0,
})

minetest.register_biome({
	name           = "desert",
	node_top       = "default:desert_sand",
	depth_top      = 5,
	node_filler    = "default:desert_stone",
	depth_filler   = 70,
	height_min     = 3,
	height_max     = 23,
	heat_point     = 35.0,
	humidity_point = 20.0,
})

minetest.register_biome({
	name           = "grove",
	node_top       = "ethereal:grove_dirt",
	depth_top      = 7,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 3,
	height_max     = 23,
	heat_point     = 40.0,
	humidity_point = 60.0,
})

minetest.register_biome({
	name           = "mushroom",
	node_top       = "ethereal:mushroom_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 1,
	height_max     = 71,
	heat_point     = 45.0,
	humidity_point = 70.0,
})

minetest.register_biome({
	name           = "desertstone",
	node_top       = "default:sandstone",
	depth_top      = 7,
	node_filler    = "default:desert_stone",
	depth_filler   = 70,
	height_min     = 3,
	height_max     = 23,
	heat_point     = 50.0,
	humidity_point = 20.0,
})

minetest.register_biome({
        name = "lake",
        node_top = "default:sand",
        depth_top = 1,
        node_filler = "default:gravel",
        depth_filler = 1,
        node_water = "default:water_source",
        node_dust_water= "default:water_source",
        height_min = -31000,
        height_max = 3,
        heat_point = 50,
        humidity_point = 40,
})

minetest.register_biome({
	name           = "plains",
	node_top       = "ethereal:dry_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 61,
	heat_point     = 55.0,
	humidity_point = 25.0,
})

minetest.register_biome({
	name           = "fiery",
	node_top       = "ethereal:fiery_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = 5,
	height_max     = 65,
	heat_point     = 60.0,
	humidity_point = 20.0,
})

minetest.register_biome({
	name           = "sandclay",
	node_top       = "default:sand",
	depth_top      = 3,
	node_filler    = "default:clay",
	depth_filler   = 1,
	height_min     = 1,
	height_max     = 11,
	heat_point     = 65.0,
	humidity_point = 2.0,
})

--= Register Biome Decoration (Schematics)

-- Banana Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:grove_dirt",
	sidelen = 16,
	fill_ratio = 0.015,
	biomes = {"grove"},
	schematic = minetest.get_modpath("ethereal").."/schematics/bananatree.mts",
	flags = "place_center_x, place_center_z",
})

-- Dead Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:dry_dirt",
	sidelen = 16,
	fill_ratio = 0.006,
	biomes = {"plains"},
	schematic = minetest.get_modpath("ethereal").."/schematics/deadtree.mts",
	flags = "place_center_x, place_center_z",
})

-- Healing Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_snow",
	sidelen = 16,
	fill_ratio = 0.03,
	biomes = {"healing"},
	schematic = minetest.get_modpath("ethereal").."/schematics/yellowtree.mts",
	flags = "place_center_x, place_center_z",
})

-- Frost Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:crystal_topped_dirt",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"frost"},
	schematic = minetest.get_modpath("ethereal").."/schematics/frosttrees.mts",
	flags = "place_center_x, place_center_z",
})

-- Giant Shrooms
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.035, -- was 0.070, trying 2 different sized shrooms in same biome (below)
	biomes = {"mushroom"},
	schematic = minetest.get_modpath("ethereal").."/schematics/mushroomone.mts",
	flags = "place_center_x, place_center_z",
})

-- Not so Giant Shrooms
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.035,
	biomes = {"mushroom"},
	schematic = minetest.get_modpath("ethereal").."/schematics/mushroomtwo.mts",
	flags = "place_center_x, place_center_z",
})

-- Volcano Pit
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt_top",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"fiery"},
	schematic = minetest.get_modpath("ethereal").."/schematics/volcanol.mts",
	flags = "place_center_x, place_center_z",
})

-- Different Volcano Pit
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt_top",
	sidelen = 16,
	fill_ratio = 0.009,
	biomes = {"fiery"},
	schematic = minetest.get_modpath("ethereal").."/schematics/volcanom.mts",
	flags = "place_center_x, place_center_z",
})

-- Jungle Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:jungle_dirt",
	sidelen = 16,
	fill_ratio = 0.3, -- was 0.250
	biomes = {"junglee, jumble"},
	schematic = minetest.get_modpath("ethereal").."/schematics/jungletree.mts",
	flags = "place_center_x, place_center_z",
})

-- Gr[a|e]y Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:gray_dirt_top",
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"grayness"},
	schematic = minetest.get_modpath("ethereal").."/schematics/graytrees.mts",
	flags = "place_center_x, place_center_z",
})

-- Pine Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:cold_dirt",
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"snowy"},
	schematic = minetest.get_modpath("ethereal").."/schematics/pinetree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:dirt_with_snow",
	sidelen = 16,
	fill_ratio = 0.05,
	biomes = {"alpine"},
	schematic = minetest.get_modpath("ethereal").."/schematics/pinetree.mts",
	flags = "place_center_x, place_center_z",
})

-- Gr[a|e]y Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"jumble"},
	schematic = minetest.get_modpath("ethereal").."/schematics/graytrees.mts",
	flags = "place_center_x, place_center_z",
})

-- Cactus on Desert
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"desertstone"},
	schematic = minetest.get_modpath("ethereal").."/schematics/cactus.mts",
	flags = "place_center_x, place_center_z",
})

-- Cactus on Sand
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sand",
	sidelen = 16,
	fill_ratio = 0.003,
	biomes = {"sandclay"},
	schematic = minetest.get_modpath("ethereal").."/schematics/cactus.mts",
	flags = "place_center_x, place_center_z",
})

-- Apple Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.030,
	biomes = {"grassy, jumble"},
	schematic = minetest.get_modpath("ethereal").."/schematics/tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:prairie_dirt",
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"prairie"},
	schematic = minetest.get_modpath("ethereal").."/schematics/tree.mts",
	flags = "place_center_x, place_center_z",
})

-- Big Old Tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"grassytwo"},
	schematic = minetest.get_modpath("ethereal").."/schematics/bigtree.mts",
	flags = "place_center_x, place_center_z",
})

-- Old Rail Section in Desert
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"desertsandstone"},
	schematic = minetest.get_modpath("ethereal").."/schematics/rail.mts",
	flags = "place_center_x, place_center_z",
})

-- Different Old Rail Section in Desert
minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"desertsandstone"},
	schematic = minetest.get_modpath("ethereal").."/schematics/railtwo.mts",
	flags = "place_center_x, place_center_z",
})

--= Smaller Plant Decoration

-- Dry Shrubs on Dry Dirt
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:dry_dirt",
	sidelen = 16,
	fill_ratio = 0.012,
	biomes = {"plains"},
	decoration = "default:dry_shrub",
})

-- Dry Shrubs on Lake Sand
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:sand",
	sidelen = 16,
	fill_ratio = 0.006,
	biomes = {"lake"},
	decoration = "default:dry_shrub",
})

-- Dry Shrubs on Desert Sand
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:desert_sand",
	sidelen = 16,
	fill_ratio = 0.006,
	biomes = {"desert"},
	decoration = "default:dry_shrub",
})

-- Prairie Flowers
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.030,
	biomes = {"grassy", "grassytwo"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_bush"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:prairie_dirt",
	sidelen = 16,
	fill_ratio = 0.050,
	biomes = {"prairie"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_bush"},
})

-- Crystal Spikes
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:crystal_topped_dirt",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"frost"},
	decoration = "ethereal:crystal_spike",
})

-- Red Shrub
minetest.register_decoration({
        deco_type = "simple",
        place_on = "ethereal:fiery_dirt_top", 
        sidelen = 16,
        fill_ratio = 0.20,
        biomes = {"fiery"},
        decoration = "ethereal:dry_shrub",
})

-- Snowy Grass
minetest.register_decoration({
        deco_type = "simple",
        place_on = "ethereal:gray_dirt_top", 
        sidelen = 16,
        fill_ratio = 0.05,
        biomes = {"grayness"},
        decoration = "ethereal:snowygrass",
})

minetest.register_decoration({
        deco_type = "simple",
        place_on = "ethereal:cold_dirt", 
        sidelen = 16,
        fill_ratio = 0.05,
        biomes = {"snowy"},
        decoration = "ethereal:snowygrass",
})

-- Dry Desert Shrub
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"desertstone"},
	decoration = {"default:cactus", "default:dry_shrub"},
})

-- Small Mushroom
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.015,
	biomes = {"mushroom"},
	decoration = "ethereal:mushroom_plant",
})

-- Jungle Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:jungle_dirt",
	sidelen = 16,
	fill_ratio = 0.18,
	biomes = {"junglee"},
	decoration = "default:junglegrass",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.18,
	biomes = {"jumble"},
	decoration = "default:junglegrass",
})

-- Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.50,
	biomes = {"grassy, jumble"},
	decoration = "default:grass_5",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:jungle_dirt",
	sidelen = 16,
	fill_ratio = 0.50,
	biomes = {"junglee"},
	decoration = "default:grass_5",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:prairie_dirt",
	sidelen = 16,
	fill_ratio = 0.50,
	biomes = {"prairie"},
	decoration = "default:grass_5",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:grove_dirt", -- banana
	sidelen = 16,
	fill_ratio = 0.50,
	biomes = {"grove"},
	decoration = {"default:grass_5", "ethereal:fern"},
})

-- Snow
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:cold_dirt",
	sidelen = 16,
	fill_ratio = 1.00,
	biomes = {"snowy"},
	decoration = "default:snow",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:dirt_with_snow",
	sidelen = 16,
	fill_ratio = 1.00,
	biomes = {"alpine"},
	decoration = "default:snow",
})

-- Wild Onions
minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.50,
	biomes = {"grassy, jumble"},
	decoration = "ethereal:wild_onion_4",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:prairie_dirt",
	sidelen = 16,
	fill_ratio = 0.50,
	biomes = {"prairie"},
	decoration = "ethereal:wild_onion_4",
})

--= Specific Plant Placements

-- Papyrus on Dirt next to Water
minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y >= 2 and minp.y <= 0 then
		-- Generate papyrus
		local perlin1 = minetest.get_perlin(354, 3, 0.7, 100)
		-- Assume X and Z lengths are equal
		local divlen = 8
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Determine papyrus amount from perlin noise
			local papyrus_amount = math.floor(perlin1:get2d({x=x0, y=z0}) * 45 - 20)
			-- Find random positions for papyrus based on this random
			local pr = PseudoRandom(seed+1)
			for i=0,papyrus_amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				if minetest.get_node({x=x,y=1,z=z}).name == "ethereal:green_dirt_top" and
						minetest.find_node_near({x=x,y=1,z=z}, 1, "default:water_source") then
					default.make_papyrus({x=x,y=2,z=z}, pr:next(2, 4))
				end
			end
		end
	end
end
end)

-- Palm Tree on Sand next to Water
minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y >= 2 and minp.y <= 0 then
		local perlin1 = minetest.get_perlin(354, 3, 0.7, 100)
		-- Assume X and Z lengths are equal
		local divlen = 8
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)

			-- Find random positions for palm based on this random
			local pr = PseudoRandom(seed+1)
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				if minetest.get_node({x=x,y=1,z=z}).name == "default:sand" and
					minetest.find_node_near({x=x,y=1,z=z}, 1, "default:water_source") then
					schematic = minetest.get_modpath("ethereal").."/schematics/palmtree.mts"
					minetest.place_schematic({x=x-3,y=2,z=z-4}, schematic, 0, '', 0)
				end
			end
		end
	end
end)


--= Growing / Landscape Functions

-- Have papyrus grow on ethereal green dirt
minetest.register_abm({
	nodenames = {"default:papyrus"},
	neighbors = {"default:dirt", "ethereal:green_dirt_top"},
	interval = 50,
	chance = 20,
	action = function(pos, node)
		pos.y = pos.y-1
		local name = minetest.get_node(pos).name
		if name == "default:dirt" or name == "ethereal:green_dirt_top" then
			if minetest.find_node_near(pos, 3, {"group:water"}) == nil then
				return
			end
			pos.y = pos.y+1
			local height = 0
			while minetest.get_node(pos).name == "default:papyrus" and height < 4 do
				height = height+1
				pos.y = pos.y+1
			end
			if height < 4 then
				if minetest.get_node(pos).name == "air" then
					minetest.set_node(pos, {name="default:papyrus"})
				end
			end
		end
	end,
})

-- Flowers spread over green dirt
minetest.register_abm({
	nodenames = {"group:flora"},
	neighbors = {"ethereal:green_dirt_top", "ethereal:prairie_dirt"},
	interval = 40,
	chance = 20,
	action = function(pos, node)
		local light = minetest.get_node_light(pos)
		if not light or light < 12 then -- was 13
			return
		end
		
		local pos0 = {x=pos.x-4,y=pos.y-4,z=pos.z-4}
		local pos1 = {x=pos.x+4,y=pos.y+4,z=pos.z+4}
		if #minetest.find_nodes_in_area(pos0, pos1, "group:flora_block") > 0 then
			return
		end
		
		local flowers = minetest.find_nodes_in_area(pos0, pos1, "group:flora")
		if #flowers > 3 then
			return
		end
		
		local seedling = minetest.find_nodes_in_area(pos0, pos1, "ethereal:green_dirt_top")
		if #seedling > 0 then
			seedling = seedling[math.random(#seedling)]
			seedling.y = seedling.y + 1
			light = minetest.get_node_light(seedling)
			if not light or light < 12 then
				return
			end
			if minetest.get_node(seedling).name == "air" then
				minetest.set_node(seedling, {name=node.name})
			end
		end

		local seedling = minetest.find_nodes_in_area(pos0, pos1, "ethereal:prairie_dirt")
		if #seedling > 0 then
			seedling = seedling[math.random(#seedling)]
			seedling.y = seedling.y + 1
			light = minetest.get_node_light(seedling)
			if not light or light < 12 then
				return
			end
			if minetest.get_node(seedling).name == "air" then
				minetest.set_node(seedling, {name=node.name})
			end
		end
	end,
})

-- Over time change Cobble placed in water to Mossy Cobble
minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors={"default:water_source"},
	interval = 30,
	chance = 10,
	action = function(pos, node)
	        minetest.add_node(pos, {name="default:mossycobble"})
	end
})

-- If Crystal Spike, Crystal Dirt or Snow near Water, change Water to Ice
minetest.register_abm({
	nodenames = {"ethereal:crystal_spike", "ethereal:crystal_topped_dirt", "default:snow", "default:snowblock"},
	neighbors = {"default:water_source"},
	interval = 10,
	chance = 2,
	action = function(pos, node)
		local pos0 = {x=pos.x-1,y=pos.y-1,z=pos.z-1}
		local pos1 = {x=pos.x+1,y=pos.y+1,z=pos.z+1}

		local water = minetest.env:find_nodes_in_area(pos0, pos1, "default:water_source")
		if water then
			minetest.env:set_node(water[1], {name="default:ice"})
		end
	end,
})

-- If Heat Source near Ice, melt into Water Source
minetest.register_abm({
	nodenames = {"default:ice"},
	neighbors = {"default:lava_source", "default:lava_flowing", "default:torch", "default:furnace_active"},
	interval = 5,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.add_node(pos,{name="default:water_source"})
		nodeupdate(pos)
	end,
})

-- If Water Source near Dry Dirt, change to normal Dirt
minetest.register_abm({
	nodenames = {"ethereal:dry_dirt"},
	neighbors = {"group:water"},
	interval = 10,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.add_node(pos,{name="default:dirt"})
	end,
})