
math.randomseed(os.time())
math.random()
-- this one was taken from the sapling.lua sapling ABM
local fertilize = function(pos, schematic_name, schematic_size, center_offset, grows_only_on)
print(test)
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
        end

if minetest.registered_items['farming:fertilizer'] then
   -- redefine that fertilizer
   local test=minetest.registered_items['farming:fertilizer'].on_place
   minetest.register_craftitem(':farming:fertilizer', {
       description = 'Fertilizer X',
       inventory_image = 'ethereal_fertilizer.png',
       on_place = function(itemstack, placer, pointed_thing)
          local sapling_name = minetest.get_node(pointed_thing.under).name
          if pointed_thing and sapling_name:find('sapling') then
             local schematic_name = ethereal.saplings[sapling_name].sname
             local schematic_size = ethereal.saplings[sapling_name].size
             local center_offset  = ethereal.saplings[sapling_name].offset
             local grows_only_on  = ethereal.saplings[sapling_name].growson
             -- grow tree only by 1/5 chance
            -- if math.random()>0.2 then
                fertilize(pos, schematic_name, schematic_size, center_offset, grows_only_on)
            -- end
             test(itemstack, placer, pointed_thing)
          end
       end,
       }
   )
else
   -- make a new one
   minetest.register_craftitem('ethereal:fertilizer', {
       description = 'Fertilizer X',
       inventory_image = 'ethereal_fertilizer.png',
       on_place = function(itemstack, placer, pointed_thing)
          local sapling_name = minetest.get_node(pointed_thing.under).name
          if pointed_thing and sapling_name:find('sapling') then
             local schematic_name = ethereal.saplings[sapling_name].sname
             local schematic_size = ethereal.saplings[sapling_name].size
             local center_offset  = ethereal.saplings[sapling_name].offset
             local grows_only_on  = ethereal.saplings[sapling_name].growson
             -- grow tree only by 1/5 chance
             if math.random()>0.2 then
                fertilize(pos, schematic_name, schematic_size, center_offset, grows_only_on)
             end
          end
       end,
       }
   )
end
