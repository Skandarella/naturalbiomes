
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:heath_litter", {
	description = ("Heath sand with dirt"),
	tiles = {"naturalbiomes_heath_litter.png", "default_sand.png",
		{name = "default_sand.png^naturalbiomes_heath_litter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:sand",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("naturalbiomes:heath_litter2", {
	description = ("Heath sand with dirt"),
	tiles = {"naturalbiomes_heath_litter2.png", "default_sand.png",
		{name = "default_sand.png^naturalbiomes_heath_litter_side2.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:sand",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
		sidelen = 16,
		place_offset_y = -1,
                flags = "force_placement",
		noise_params = {
			offset = -0,
			scale = 0.5,
			spread = {x = 50, y = 50, z = 50},
			seed = 5792,
			octaves = 6,
			persist = 1,
		},
		y_max = 60,
		y_min = 5,
		decoration = "naturalbiomes:heath_litter3"
	})

minetest.register_node("naturalbiomes:heath_litter3", {
	description = ("Heath sand with dirt"),
	tiles = {"naturalbiomes_heath_litter3.png", "default_sand.png",
		{name = "default_sand.png^naturalbiomes_heath_litter_side3.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:sand",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
		sidelen = 16,
		place_offset_y = -1,
                flags = "force_placement",
		noise_params = {
			offset = -0,
			scale = 2,
			spread = {x = 100, y = 100, z = 100},
			seed = 1874,
			octaves = 11,
			persist = 1,
		},
		y_max = 60,
		y_min = 5,
		decoration = "naturalbiomes:heath_litter2"
	})

minetest.register_biome({
    name = "naturalbiomes:heath",
    node_top = "naturalbiomes:heath_litter",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 3,
		node_riverbed = "default:clay",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 50,
    y_min = 0,
    heat_point = 47,
    humidity_point = 89,
})

	minetest.register_decoration({
		name = "naturalbiomes:heath_grass",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
		sidelen = 16,
                fill_ratio = 0.04115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heath_grass",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heath_grass", {
	    description = "Wood Anemone",
	    drawtype = "plantlike",
	    waving = 2,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_heath_grass.png"},
	    inventory_image = "naturalbiomes_heath_grass.png",
	    wield_image = "naturalbiomes_heath_grass.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heath_grass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
                fill_ratio = 0.06115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heath_grass2",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heath_grass2", {
	    description = "Periwinkle",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_heath_grass2.png"},
	    inventory_image = "naturalbiomes_heath_grass2.png",
	    wield_image = "naturalbiomes_heath_grass2.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heath_grass3",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
		sidelen = 16,
                fill_ratio = 0.08115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heath_grass3",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heath_grass3", {
	    description = "Heath Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_heath_grass3.png"},
	    inventory_image = "naturalbiomes_heath_grass3.png",
	    wield_image = "naturalbiomes_heath_grass3.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
                fill_ratio = 0.08115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower", {
	    description = "Heather Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_heath_heatherflower.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower.png",
	    wield_image = "naturalbiomes_heath_heatherflower.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower2",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
                fill_ratio = 0.08115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower2",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower2", {
	    description = "Heather Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_heath_heatherflower2.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower2.png",
	    wield_image = "naturalbiomes_heath_heatherflower2.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower3",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
                fill_ratio = 0.08115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower3",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower3", {
	    description = "Heather Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.5,
	    tiles = {"naturalbiomes_heath_heatherflower3.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower3.png",
	    wield_image = "naturalbiomes_heath_heatherflower3.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower4",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
                fill_ratio = 0.04115,
                biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower4",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower4", {
	    description = "Heather Flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.5,
	    tiles = {"naturalbiomes_heath_heatherflower4.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower4.png",
	    wield_image = "naturalbiomes_heath_heatherflower4.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:swampgrass",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
		sidelen = 16,
                fill_ratio = 0.08115,
                biomes = {"naturalbiomes:heath"},
		y_max = 5,
		y_min = -1,
		decoration = "naturalbiomes:swampgrass",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:swampgrass", {
	    description = "Swamp Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_heath_swampgrass.png"},
	    inventory_image = "naturalbiomes_heath_swampgrass.png",
	    wield_image = "naturalbiomes_heath_swampgrass.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:swampgrass2",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter"},
		sidelen = 16,
                fill_ratio = 0.08115,
                biomes = {"naturalbiomes:heath"},
		y_max = 5,
		y_min = -1,
		decoration = "naturalbiomes:swampgrass2",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:swampgrass2", {
	    description = "Swamp Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_heath_swampgrass2.png"},
	    inventory_image = "naturalbiomes_heath_swampgrass2.png",
	    wield_image = "naturalbiomes_heath_swampgrass2.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

-- Tree generation
--

-- New willow tree

local function grow_new_willow_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 4, y = pos.y - 0, z = pos.z - 4}, modpath.."/schematics/naturalbiomes_willowtree11.mts", "0", nil, false)

end

-- willow trunk
minetest.register_node("naturalbiomes:heath_willow_trunk", {
	description = ("Willow Trunk"),
	tiles = {
		"naturalbiomes_heath_willow_trunk_top.png",
		"naturalbiomes_heath_willow_trunk_top.png",
		"naturalbiomes_heath_willow_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- willow wood
minetest.register_node("naturalbiomes:heath_willow_wood", {
	description = ("Willow Wood"),
	tiles = {"naturalbiomes_heath_willow_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:heath_willow_wood 4",
	recipe = {{"naturalbiomes:heath_willow_trunk"}}
})

minetest.register_node("naturalbiomes:heath_willow_leaves", {
  description = ("Willow Leaves"),
  drawtype = "plantlike",
  visual_scale = 4.0,
  waving = 1,
  tiles = {"naturalbiomes_heath_willow_leaves.png"},
  special_tiles = {"naturalbiomes_heath_willow_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:willow_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:heath_willow_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:heath_willow_leaves2", {
  description = ("Willow Leaves"),
  drawtype = "allfaces_optional",
  visual_scale = 1.0,
  waving = 1,
  tiles = {"naturalbiomes_heath_willow_leaves2.png"},
  special_tiles = {"naturalbiomes_heath_willow_leaves2.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:willow_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:heath_willow_leaves2'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:willow_sapling", {
  description = ("Willow Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_heath_willow_sapling.png"},
  inventory_image = "naturalbiomes_heath_willow_sapling.png",
  wield_image = "naturalbiomes_heath_willow_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_willow_tree,
  selection_box = {
    type = "fixed",
    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
  },
  groups = {snappy = 2, dig_immediate = 3, flammable = 2,
    attached_node = 1, sapling = 1},
  sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

  on_place = function(itemstack, placer, pointed_thing)
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "naturalbiomes:willow_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})






    stairs.register_stair_and_slab(
      "naturalbiomes_heath_willow_wood",
      "naturalbiomes:heath_willow_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_heath_willow_wood.png"},
      ("Willow Stair"),
      ("Willow Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_heath_willow_trunk",
      "naturalbiomes:heath_willow_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_heath_willow_trunk_top.png", "naturalbiomes_heath_willow_trunk_top.png", "naturalbiomes_heath_willow_trunk.png"},
      ("Willow Trunk Stair"),
      ("Willow Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_willow_wood",
    {
      description = ("Willow Wood Fence Gate"),
      texture = "naturalbiomes_heath_willow_wood.png",
      material = "naturalbiomes:heath_willow_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_willow_wood",
  {
    description = ("Willow Fence"),
    texture = "naturalbiomes_adler_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_heath_willow_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_heath_willow_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:heath_willow_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_willow_wood",
  {
    description = ("Willow Fence Rail"),
    texture = "naturalbiomes_heath_willow_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_heath_willow_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_heath_willow_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:heath_willow_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:heath_willow_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:heath_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00515,
    biomes = {"naturalbiomes:heath"},
    y_max = 5,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_willowtree11.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "naturalbiomes:heath_willow_tree2",
    deco_type = "schematic",
    place_on = {"naturalbiomes:heath_litter"},
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 0.00515,
    biomes = {"naturalbiomes:heath"},
    y_max = 5,
    y_min = 1,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_willowtree22.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- New juniper tree

local function grow_new_juniper_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 0, z = pos.z - 2}, modpath.."/schematics/naturalbiomes_junipertree.mts", "0", nil, false)

end

-- juniper trunk
minetest.register_node("naturalbiomes:heath_juniper_trunk", {
	description = ("Juniper Trunk"),
	tiles = {
		"naturalbiomes_heath_juniper_trunk_top.png",
		"naturalbiomes_heath_juniper_trunk_top.png",
		"naturalbiomes_heath_juniper_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- juniper wood
minetest.register_node("naturalbiomes:heath_juniper_wood", {
	description = ("Juniper Wood"),
	tiles = {"naturalbiomes_heath_juniper_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:heath_juniper_wood 4",
	recipe = {{"naturalbiomes:heath_juniper_trunk"}}
})

minetest.register_node("naturalbiomes:heath_juniper_leaves", {
  description = ("Juniper Leaves"),
  drawtype = "allfaces_optional",
  visual_scale = 1.0,
  waving = 1,
  tiles = {"naturalbiomes_heath_juniper_leaves.png"},
  special_tiles = {"naturalbiomes_heath_juniper_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:juniper_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:heath_juniper_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:juniper_sapling", {
  description = ("Juniper Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_heath_juniper_sapling.png"},
  inventory_image = "naturalbiomes_heath_juniper_sapling.png",
  wield_image = "naturalbiomes_heath_juniper_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_juniper_tree,
  selection_box = {
    type = "fixed",
    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
  },
  groups = {snappy = 2, dig_immediate = 3, flammable = 2,
    attached_node = 1, sapling = 1},
  sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

  on_place = function(itemstack, placer, pointed_thing)
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "naturalbiomes:juniper_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})






    stairs.register_stair_and_slab(
      "naturalbiomes_heath_juniper_wood",
      "naturalbiomes:heath_juniper_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_heath_juniper_wood.png"},
      ("Juniper Stair"),
      ("Juniper Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_heath_juniper_trunk",
      "naturalbiomes:heath_juniper_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_heath_juniper_trunk_top.png", "naturalbiomes_heath_juniper_trunk_top.png", "naturalbiomes_heath_juniper_trunk.png"},
      ("Juniper Trunk Stair"),
      ("Juniper Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_juniper_wood",
    {
      description = ("Juniper Wood Fence Gate"),
      texture = "naturalbiomes_heath_juniper_wood.png",
      material = "naturalbiomes:heath_juniper_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_juniper_wood",
  {
    description = ("Juniper Fence"),
    texture = "naturalbiomes_adler_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_heath_juniper_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_heath_juniper_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:heath_juniper_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_juniper_wood",
  {
    description = ("Juniper Fence Rail"),
    texture = "naturalbiomes_heath_juniper_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_heath_juniper_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_heath_juniper_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:heath_juniper_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:heath_juniper_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:heath_litter3"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.00315,
    biomes = {"naturalbiomes:heath"},
    y_max = 50,
    y_min = 5,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_junipertree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "naturalbiomes:heath_juniper_tree2",
    deco_type = "schematic",
    place_on = {"naturalbiomes:heath_litter3"},
    place_offset_y = 1,
    sidelen = 16,
    fill_ratio = 0.00315,
    biomes = {"naturalbiomes:heath"},
    y_max = 50,
    y_min = 5,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_junipertree2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- New birch tree

local function grow_new_birch_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 4, y = pos.y - 0, z = pos.z - 4}, modpath.."/schematics/naturalbiomes_birchtree.mts", "0", nil, false)

end

-- birch trunk
minetest.register_node("naturalbiomes:heath_birch_trunk", {
	description = ("Birch Trunk"),
	tiles = {
		"naturalbiomes_heath_birch_trunk_top.png",
		"naturalbiomes_heath_birch_trunk_top.png",
		"naturalbiomes_heath_birch_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- birch wood
minetest.register_node("naturalbiomes:heath_birch_wood", {
	description = ("Birch Wood"),
	tiles = {"naturalbiomes_heath_birch_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:heath_birch_wood 4",
	recipe = {{"naturalbiomes:heath_birch_trunk"}}
})

minetest.register_node("naturalbiomes:heath_birch_leaves", {
  description = ("Birch Leaves"),
  drawtype = "allfaces_optional",
  visual_scale = 1.0,
  waving = 1,
  tiles = {"naturalbiomes_heath_birch_leaves.png"},
  special_tiles = {"naturalbiomes_heath_birch_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'naturalbiomes:birch_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'naturalbiomes:heath_birch_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("naturalbiomes:birch_sapling", {
  description = ("Birch Sapling"),
  drawtype = "plantlike",
  tiles = {"naturalbiomes_heath_birch_sapling.png"},
  inventory_image = "naturalbiomes_heath_birch_sapling.png",
  wield_image = "naturalbiomes_heath_birch_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = grow_new_birch_tree,
  selection_box = {
    type = "fixed",
    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
  },
  groups = {snappy = 2, dig_immediate = 3, flammable = 2,
    attached_node = 1, sapling = 1},
  sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

  on_place = function(itemstack, placer, pointed_thing)
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "naturalbiomes:birch_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

    return itemstack
  end,
})






    stairs.register_stair_and_slab(
      "naturalbiomes_heath_birch_wood",
      "naturalbiomes:heath_birch_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_heath_birch_wood.png"},
      ("Birch Stair"),
      ("Birch Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_heath_birch_trunk",
      "naturalbiomes:heath_birch_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"naturalbiomes_heath_birch_trunk_top.png", "naturalbiomes_heath_birch_trunk_top.png", "naturalbiomes_heath_birch_trunk.png"},
      ("Birch Trunk Stair"),
      ("Birch Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "naturalbiomes:gate_birch_wood",
    {
      description = ("Birch Wood Fence Gate"),
      texture = "naturalbiomes_heath_birch_wood.png",
      material = "naturalbiomes:heath_birch_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "naturalbiomes:fence_birch_wood",
  {
    description = ("Birch Fence"),
    texture = "naturalbiomes_adler_fence_wood.png",
    inventory_image = "default_fence_overlay.png^naturalbiomes_heath_birch_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^naturalbiomes_heath_birch_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:heath_birch_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "naturalbiomes:fence_rail_birch_wood",
  {
    description = ("Birch Fence Rail"),
    texture = "naturalbiomes_heath_birch_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^naturalbiomes_heath_birch_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^naturalbiomes_heath_birch_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "naturalbiomes:heath_birch_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "naturalbiomes:heath_birch_tree",
    deco_type = "schematic",
    place_on = {"naturalbiomes:heath_litter3"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00315,
    biomes = {"naturalbiomes:heath"},
    y_max = 50,
    y_min = 5,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_birchtree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "naturalbiomes:heath_birch_tree2",
    deco_type = "schematic",
    place_on = {"naturalbiomes:heath_litter3"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00315,
    biomes = {"naturalbiomes:heath"},
    y_max = 50,
    y_min = 5,
    schematic = minetest.get_modpath("naturalbiomes").."/schematics/naturalbiomes_birchtree2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	minetest.register_decoration({
		name = "naturalbiomes:heatherflowernode",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
		place_offset_y = 0,
                flags = "force_placement",
		noise_params = {
			offset = -0,
			scale = 0.6,
			spread = {x = 150, y = 150, z = 150},
			seed = 1456,
			octaves = 8,
			persist = 1,
		},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflowernode",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflowernode", {
	    description = "Heather Flower Node",
	    drawtype = "allfaces_optional",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_heath_heatherflowernode.png"},
	    inventory_image = "naturalbiomes_heath_heatherflowernode.png",
	    wield_image = "naturalbiomes_heath_heatherflowernode.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower2node",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
		place_offset_y = 0,
                flags = "force_placement",
		noise_params = {
			offset = -0,
			scale = 0.6,
			spread = {x = 150, y = 150, z = 150},
			seed = 7358,
			octaves = 8,
			persist = 1,
		},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower2node",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower2node", {
	    description = "Heather Flower Node",
	    drawtype = "allfaces_optional",
	    waving = 1,
	    visual_scale = 1,
	    tiles = {"naturalbiomes_heath_heatherflower2node.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower2node.png",
	    wield_image = "naturalbiomes_heath_heatherflower2node.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower3node",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
		place_offset_y = 0,
                flags = "force_placement",
		noise_params = {
			offset = -0,
			scale = 0.6,
			spread = {x = 150, y = 150, z = 150},
			seed = 2935,
			octaves = 8,
			persist = 1,
		},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower3node",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower3node", {
	    description = "Heather Flower Node",
	    drawtype = "allfaces_optional",
	    waving = 1,
	    visual_scale = 1,
	    tiles = {"naturalbiomes_heath_heatherflower3node.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower3node.png",
	    wield_image = "naturalbiomes_heath_heatherflower3node.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heatherflower4node",
		deco_type = "simple",
		place_on = {"naturalbiomes:heath_litter2"},
		sidelen = 16,
		place_offset_y = 0,
                flags = "force_placement",
		noise_params = {
			offset = -0,
			scale = 0.6,
			spread = {x = 150, y = 150, z = 150},
			seed = 989,
			octaves = 8,
			persist = 1,
		},
		y_max = 31000,
		y_min = 4,
		decoration = "naturalbiomes:heatherflower4node",
        spawn_by = "naturalbiomes:heath_litter"
	})

minetest.register_node("naturalbiomes:heatherflower4node", {
	    description = "Heather Flower Node",
	    drawtype = "allfaces_optional",
	    waving = 1,
	    visual_scale = 1,
	    tiles = {"naturalbiomes_heath_heatherflower4node.png"},
	    inventory_image = "naturalbiomes_heath_heatherflower4node.png",
	    wield_image = "naturalbiomes_heath_heatherflower4node.png",
	    paramtype = "light",
	    sunlight_propagates = true,
	    walkable = false,
	    buildable_to = true,
	    groups = {snappy = 3, flower = 1, flora = 1, attached_node = 1, flammable = 1, beautiflowers = 1},
	    sounds = default.node_sound_leaves_defaults(),
	    selection_box = {
		    type = "fixed",
		    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 0.0, 4 / 16},
	    },
    })

	minetest.register_decoration({
		name = "naturalbiomes:heath_stoneformation",
		deco_type = "schematic",
		place_on = {"naturalbiomes:heath_litter", "naturalbiomes:heath_litter2"},
    place_offset_y = -2,
		sidelen = 16,
    fill_ratio = 0.00007,
		biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 5,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_heath_stoneformation.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

	minetest.register_decoration({
		name = "naturalbiomes:heath_stoneformation2",
		deco_type = "schematic",
		place_on = {"naturalbiomes:heath_litter", "naturalbiomes:heath_litter2"},
    place_offset_y = -2,
		sidelen = 16,
    fill_ratio = 0.00007,
		biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 5,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_heath_stoneformation2.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})

	minetest.register_decoration({
		name = "naturalbiomes:heath_stoneformation3",
		deco_type = "schematic",
		place_on = {"naturalbiomes:heath_litter", "naturalbiomes:heath_litter2"},
    place_offset_y = -2,
		sidelen = 16,
    fill_ratio = 0.00007,
		biomes = {"naturalbiomes:heath"},
		y_max = 31000,
		y_min = 5,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_heath_stoneformation3.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})