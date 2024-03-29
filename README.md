Ethereal
========

A mod for Minetest that creates a fantasy world.

Original thread can be found here: https://forum.minetest.net/viewtopic.php?pid=136409

##Following people made this available:

- Chinchow (a.k.a. Master Amazing God O' Mod ;)
- paramat
- Sokomine
- TenPlus1

*Tell me if I forgot to mention someone.

*Note: I only* **update** *this repo!*

###Changes:
*1.09*

    Fixed Quicksand bug where player see's only black when sinking instead of yellow effect, note this will only work on new maps or newly generated areas of map containing quicksand
    
    Hot nodes will melt ice and snow in a better way
    
    Few spelling errors sorted for sapling and wood names
    
*1.08*

    Saplings produce better placed tree's when grown, routines have been redone
    
    Orange tree's now spawn in prairie biomes
    
    The usual code tidy and few bug fixes along the way
    
*1.07*

    If Farming Redo mod detected then it's growing routines will be used for Ethereal plantlife instead of default
    
    Leaftype and Mapstyle settings can be changed within init.lua file, new layered style maps are being tested
    
    Changed crafting recipe for Fences, they tie in with Gates a little better

*1.06*

    Added support for Farming Redo mod, all plants spawn on newly generated areas 
    
    https://forum.minetest.net/viewtopic.php?id=9019

*1.05b*

    Added Gates for each of the fence types (thanks to Blockmen for gate model)
    
    Players can no longer jump over fences unless they wear crystal boots < REMOVED
    
*1.05*

    Added Gates for each of the fence types (thanks to Blockmen for gate model)
    
    Players can no longer jump over fences unless they wear crystal boots
    
*1.04*

    Farming of Mushrooms, Wild Onions and Strawberries now use minetest 0.4.10 functions
    
    Strawberries can be grown by using actual fruit, seeds no longer needed
    
    Tree leaves are no longer walkable, player can go through them
    
    Saplings now fall if block underneath disturbed
    
*1.03*

    Changed Fence recipe's so it doesn't interfere with 3d armor's wooden boots

    Tweaked textures to bring down file sizes

    Flowers, Sprouts and Ferns now spread over ALL grassland
    
*1.02*

    Fences added for each type of wood in Ethereal
    
    Changes to biome settings, less artifacts
    
*1.01*

    Quicksand generates throughout world near sandy water

    Bamboo as well as Papyrus now grow on dirt near water

    Fixed Coral textures and light

*1.00*

    Seaweed now spawns in deep water and can grow up to 10 high
    
    Coral also spawns in deep water and glows slightly (orange, pink and blue)
    
    Above items can be crafted into dye, also Seaweed is edible
        
    So long as sand isn't disturbed under the ocean, sealife will re-generate
    
    Fixed Leaves inventory images and Mushroom selection box (thanks Wuzzy)
    
*0.0.9p*

    Willow Trees now spawn in grey biome instead of tiny grey trees (model by Phiwari123)

    Redwood Trees now spawn in Mesa biome (model by Wes42033)

    BakedClay mod no longer required for Mesa biome but used if found

    Paper Wall added

*0.0.9o*

    Added Obsidian Brick craft for building

    Changed Illumishroom cave levels

    Changed is_ground_content to false for ethereal dirt so mapgen doesn't carve it up with caves

*0.0.9n*

    New textures for farming mushrooms and spores

    Illumi-shrooms spawn in caves to brighten things up a little

    Crafting a wooden sign now gives 4 instead of 1

*0.0.9m*

    Changed Bamboo biome slightly, Bamboo Sprout has new image

    Abm timings changed and a few bugs fixed

    Crystal Gilly Staff has to be used (left-click) to replenish air while underwater

    Crystal Shovel now works with protection mods

    Tidied code and changed ladder recipe's to double output

*0.0.9L*

    Scorched Tree's are now different sizes

    Crystal Shovel with soft touch can now be used to dig up sand and gravel

    Bamboo and Papyrus drop entire stalk when bottom node dug

    Crystal Spikes require steel pick or better to dig and fall when dirt below is removed

    Few changes to mapgen and water functions

*0.0.9k*
    Fixed bug in Crystal Shovel, now works with dirt_with_snow and has sounds

    Tweaked Fiery Biomes slightly, smaller craters on outside, large in hotter areas

    Fixed bug in charcoal lumps (no more placing as unknown nodes)

    Added Crystal Shovel with soft touch, can be used to dig up dirt with grass intact

*0.0.9i*

    Cleaned up mapgen_v7.lua file, maps now generate a little faster

    Removed cactus.mts, no longer required

    Removed mushroomtwo.mts, no longer required

    Removed bamboo.mts, no longer required

    Removed deadtree.mts, no longer required

    Few new textures added

    Papyrus also spawns on jungle dirt near water

    Replaced dead tree's with scorched tree's

    Each scorched tree trunk crafts into 2x charcoal Lumps (fixed)

    Torches can also be crafted from Charcoal

*0.0.9h*

    Added Strawberry farming, Strawberry Seeds and new Textures

    Tidied up mapgen_v7.lua for better spawning of plants and trees

    Player can no longer walk through Bamboo Stalks

*0.0.9g*

    Changed Ethereal's growing routine for Saplings, it now uses 1 single abm to grow all tree's

*0.0.9f*

    Added Fishing to Ethereal, Fishing Rod, Worms, Fish and Cooked Fish
    (Left-click the water with a Baited Rod in the hope of landing your prize)

*0.0.9e*

    Changed textures for Bowl, Mushroom Soup, Crystal Spike, Banana Loaf, Strawberry & Bush

    Added Hearty Stew Recipes

    If BakedClay mod is installed, Mesa Biome will be added to the mix

*0.0.9d*

    Added Bamboo Grove and Bamboo Sprouts )

    Craft Bamboo into Paper and Bamboo Flooring

    Cactus is now edible when crafted beside empty bucket

*0.0.9c*

    Code re-worked so mod now uses sections for each function (easier to read and edit)

    New textures for Strawberry Bush and Crystal Spikes

*0.0.9b*

    Pine Tree Leaves have new texture and sometimes give Pine Nuts

    Jungle Tree's now use default Jungle Wood as texture

*0.0.9*

    Prairie, Grove, Jungle and Snowy biomes have their own dirt

    Saplings will only grow in the biomes they were taken from

    Mapgen tweaks and code changes for new dirt added

*0.0.8m*

    Added Banana Trunk and Wood

    Added Boston Ferns to Grove biome

    Added edible Fern Tubers

    Mushroom Biome now has different sized mushrooms

    Changed Pine Needles texture

*0.0.8k*

    Added Desert Sand biome

    Added Alpine biome with Pine Trees and Snow

    Added Grove biome with Banana Tree's (saplings only grow in that temperate area)

    Added Bananas, Banana Dough and Banana Bread

    Changed biome generation to be more like real-world environs (e.g. shrooms like hot & humid so that's where they spawn)

    Tidied up code and removed redundant lines

*0.0.8e*

    New Plains biome added between Fiery and Green areas to hopefully stop forest fires, these have dry dirt and dead trees

    Placing water near Dry Dirt turns it into normal dirt, cooking normal dirt changes it into Dry Dirt

    *Note: if your Ethereal world does have a few forest fires appearing you can always add this line to your minetest.conf file:*

    `disable_fire = true`

*0.0.8*

    Healing Tree (grows on high snowy peaks, leaves are edible and golden apples heal all hearts)

    Added some new images for Cooked Mushroom Soup, Mushroom Spores and Palm Trees

    2D leaves or 3D leaves option, both wave in wind if enabled

    All new saplings can grow on their native dirt, and palm tree's on sand

    Crystal Spike or Crystal Dirt freezes nearby water, Heat can also melt ice

    Wild Mushrooms now give Spores, plant these to grow edible mushrooms

    Cobble in water turns mossy

    Palm Leaves can be cooked into Palm Wax and made into Candles

*0.0.7c*

    Gravel can be found under lake biomes (or craft 5 cobble in X pattern)

    Papyrus is found and grows on dirt near water (also craft 2x3 string for paper)

    Mushroom Heads have a chance of giving Mushroom Sapling (craft 1 head = 4x Mushrooms ready for Planting)

    Trees and Mushrooms have a chance of giving Saplings

    Frost Trunk and Mushroom Trunk are rotatable (craft 1 Mushroom Trunk = 4x White Dye)

    Desert areas have Dry Shrubs added

    Crystal Spikes added to Crystal Biome (watch out they hurt)

    Crystal Ingots added to make Sword and Pick

    New Pine Tree model added to snowy biome which adds Pine leaves and drops Pine Saplings

    Fixed GrassyTwo biome so that BigTree now spawns and grows from sapling

    Added Crystal Gilly Staff to allow breathing underwater (so long as it's in hand)

    Added Palm Trees, Trunk, Wood, Sapling, Coconuts, Coconut Slice (to eat)
    - Thanks to VanessaE's for the Palm textures


