jumble = {
legacy = false,
debug = false,
smooth_biomes = true,
min_height = 5,
}

ethereal = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

mushroom = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

junglee = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

desertstone = {
	legacy = true,
	debug = false,
	smooth_biomes = false,
	min_height = 3,
}


fiery = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 5,
}

sandclay = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

grassy = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

grassytwo = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

grayness = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

snowy = {
	legacy = true,
	debug = false,
	smooth_biomes = true,
	min_height = 1,
}

minetest.register_biome({
	name           = "fiery",
	node_top       = "ethereal:fiery_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = fiery.min_height,
	height_max     = fiery.min_height+70,
	heat_point     = 60.0,
	humidity_point = 20.0,
})

minetest.register_biome({
        name = "lake",
        node_top = "default:sand",
        depth_top = 1,
        node_filler = "default:stone",
        depth_filler = 0,
        node_water = "default:water_source",
        node_dust_water= "default:water_source",
        height_min = -31000,
        height_max = 3,
        heat_point = 50,
        humidity_point = 40,
})

minetest.register_biome({
	name           = "jumble",
	node_top       = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = jumble.min_height,
	height_max     = jumble.min_height+70,
	heat_point     = 20.0,
	humidity_point = 50.0,
})

minetest.register_biome({
	name           = "mushroom",
	node_top       = "ethereal:mushroom_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = mushroom.min_height,
	height_max     = mushroom.min_height+70,
	heat_point     = 40.0,
	humidity_point = 10.0,
})


minetest.register_biome({
	name           = "junglee",
	node_top       = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = junglee.min_height,
	height_max     = junglee.min_height+70,
	heat_point     = 10.0,
	humidity_point = 20.0,
})

minetest.register_biome({
	name           = "grassy",
	node_top       = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = grassy.min_height,
	height_max     = grassy.min_height+90,
	heat_point     = 40.0,
	humidity_point = 40.0,
})

minetest.register_biome({
	name           = "grassytwo",
	node_top       = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 1,
	height_min     = grassy.min_height,
	height_max     = grassy.min_height+90,
	heat_point     = 100.0,
	humidity_point = 100.0,
})

minetest.register_biome({
	name           = "sandclay",
	node_top       = "default:sand",
	depth_top      = 3,
	node_filler    = "default:clay",
	depth_filler   = 1,
	height_min     = sandclay.min_height,
	height_max     = sandclay.min_height+10,
	heat_point     = 65.0,
	humidity_point = 2.0,
})

minetest.register_biome({
	name           = "desertstone",
	node_top       = "default:sandstone",
	depth_top      = 7,
	node_filler    = "default:desert_stone",
	depth_filler   = 70,
	height_min     = desertstone.min_height,
	height_max     = desertstone.min_height+20,
	heat_point     = 100.0,
	humidity_point = 1.0,
})

minetest.register_biome({
	name           = "snowy",
	node_top       = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 2,
	height_min     = snowy.min_height,
	height_max     = snowy.min_height+100,
	heat_point     = 2.0,
	humidity_point = 2.0,
})

minetest.register_biome({
	name           = "frost",
	node_top       = "ethereal:crystal_topped_dirt",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 7,
	height_min     = ethereal.min_height,
	height_max     = ethereal.min_height+70,
	heat_point     = 10.0,
	humidity_point = 50.0,
})

minetest.register_biome({
	name           = "grayness",
	node_top       = "ethereal:gray_dirt_top",
	depth_top      = 1,
	node_filler    = "default:dirt",
	depth_filler   = 5,
	height_min     = grayness.min_height,
	height_max     = grayness.min_height+40,
	heat_point     = 10.0,
	humidity_point = 25.0,
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:crystal_topped_dirt",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"frost"},
	schematic = minetest.get_modpath("ethereal").."/schematics/frosttrees.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.070,
	biomes = {"mushroom"},
	schematic = minetest.get_modpath("ethereal").."/schematics/mushroomone.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt_top",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"fiery"},
	schematic = minetest.get_modpath("ethereal").."/schematics/volcanol.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.250,
	biomes = {"junglee, jumble"},
	schematic = minetest.get_modpath("ethereal").."/schematics/jungletree.mts",
	flags = "place_center_x, place_center_z",
})


minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:gray_dirt_top",
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"grayness"},
	schematic = minetest.get_modpath("ethereal").."/schematics/graytrees.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.025,
	biomes = {"jumble"},
	schematic = minetest.get_modpath("ethereal").."/schematics/graytrees.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"desertstone"},
	schematic = minetest.get_modpath("ethereal").."/schematics/cactus.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sand",
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"sandclay"},
	schematic = minetest.get_modpath("ethereal").."/schematics/cactus.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt_top",
	sidelen = 16,
	fill_ratio = 0.009,
	biomes = {"fiery"},
	schematic = minetest.get_modpath("ethereal").."/schematics/volcanom.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.030,
	biomes = {"grassy, jumble"},
	schematic = minetest.get_modpath("ethereal").."/schematics/tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "ethereal:gray_dirt_top",
	sidelen = 16,
	fill_ratio = 0.050,
	biomes = {"grassytwo"},
	schematic = minetest.get_modpath("ethereal").."/schematics/bigtree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"desertsandstone"},
	schematic = minetest.get_modpath("ethereal").."/schematics/rail.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.002,
	biomes = {"desertsandstone"},
	schematic = minetest.get_modpath("ethereal").."/schematics/railtwo.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:sandstone",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"desertstone"},
	decoration = "default:cactus",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 16,
	fill_ratio = 0.010,
	biomes = {"mushroom"},
	decoration = "ethereal:mushroom_plant",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top",
	sidelen = 16,
	fill_ratio = 0.020,
	biomes = {"grassy"},
	decoration = "ethereal:strawberry_bush",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.20,
	biomes = {"junglee, jumble"},
	decoration = "default:junglegrass",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.60,
	biomes = {"grassy, jumble"},
	decoration = "default:grass_5",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 1.00,
	biomes = {"snowy"},
	decoration = "default:snow",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "ethereal:green_dirt_top", --"default:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 1.00,
	biomes = {"grassy, jumble"},
	decoration = "ethereal:wild_onion_4",
})


