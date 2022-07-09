minetest.register_node("morebiomes:palmbeach_sand", {
	description = ("Beach Sand"),
	tiles = {"morebiomes_beach_sand.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_biome({
    name = "morebiomes:palmbeach",
    node_top = "morebiomes:palmbeach_sand",
    depth_top = 3,
    node_filler = "default:sandstone",
    depth_filler = 5,
		node_riverbed = "morebiomes:palmbeach_sand",
		depth_riverbed = 3,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:sandstonebrick",
		node_dungeon_stair = "stairs:stair_sandstone",
    y_max = 5,
    y_min = -1,
    heat_point = 86,
    humidity_point = 78,
})

minetest.register_node("morebiomes:palmbeach_rock", {
	description = ("Beach Rock"),
	tiles = {"morebiomes_beach_rock.png"},
	groups = {cracky = 3, stone = 1},
	drop = "morebiomes:palmbeach_rock",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_decoration({
		name = "morebiomes:beach_rock",
		deco_type = "schematic",
		place_on = {"morebiomes:palmbeach_sand"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"morebiomes:palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/beachrock_large_0_270.mts",
		flags = "place_center_x, place_center_z",
    flags = "force_placement",
    rotation = "random",
	})


	minetest.register_decoration({
		name = "morebiomes:beach_rock2",
		deco_type = "schematic",
		place_on = {"morebiomes:palmbeach_sand"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"morebiomes:palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/beachrock_mini_0_270.mts",
		flags = "place_center_x, place_center_z",
    flags = "force_placement",
    rotation = "random",
	})



	minetest.register_decoration({
		name = "morebiomes:beach_rock3",
		deco_type = "schematic",
		place_on = {"morebiomes:palmbeach_sand"},
    place_offset_y = -2,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.02,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"morebiomes:palmbeach"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/beachrock_massive_0_270.mts",
		flags = "place_center_x, place_center_z",
    rotation = "random",
	})


-- palm trunk
minetest.register_node("morebiomes:palm_trunk", {
	description = ("Palm Trunk"),
	tiles = {
		"morebiomes_savannapalm_trunk_top.png",
		"morebiomes_savannapalm_trunk_top.png",
		"morebiomes_savannapalm_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- palm wood
minetest.register_node("morebiomes:palm_wood", {
	description = ("Palm Wood"),
	tiles = {"morebiomes_savannapalm_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "morebiomes:palm_wood 4",
	recipe = {{"morebiomes:palm_trunk"}}
})

minetest.register_node("morebiomes:palm_leaves", {
  description = ("Palm Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"morebiomes_savannapalm_leaves.png"},
  special_tiles = {"morebiomes_savannapalm_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'morebiomes:palm_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'morebiomes:palm_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("morebiomes:palm_sapling", {
  description = ("Palm Sapling"),
  drawtype = "plantlike",
  visual_scale = 1.0,
  tiles = {"morebiomes_savannapalm_sapling.png"},
  inventory_image = "morebiomes_savannapalm_sapling.png",
  wield_image = "morebiomes_savannapalm_sapling.png",
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,
  on_timer = default.grow_sapling,
  selection_box = {
    type = "fixed",
    fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
  },
  groups = {snappy = 2, dig_immediate = 3, flammable = 2,
    attached_node = 1, sapling = 1},
  sounds = default.node_sound_leaves_defaults(),

  on_construct = function(pos)
    minetest.get_node_timer(pos):start(math.random(2400,4800))
  end,

  on_place = function(itemstack, placer, pointed_thing)
  minetest.log("action", ("Palm sapling placed."))
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "morebiomes:palm_sapling",
      -- minp, maxp to be checked, relative to sapling pos
      -- minp_relative.y = 1 because sapling pos has been checked
      {x = -2, y = 1, z = -2},
      {x = 2, y = 13, z = 2},
      -- maximum interval of interior volume check
      4)

    return itemstack
  end,
})



-- Tree generation
--

-- New palm tree

function default.grow_new_palm_tree(pos)
  local path = morebiomes.path .. "/schematics/cocobeach_palm_0_270.mts"
  minetest.place_schematic({x = pos.x - 3, y = pos.y, z = pos.z - 3},
    path, "0", nil, false)
end 

    stairs.register_stair_and_slab(
      "morebiomes_savannapalm_wood",
      "morebiomes:palm_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"morebiomes_savannapalm_wood.png"},
      ("Palm Stair"),
      ("Palm Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "morebiomes_savannapalm_trunk",
      "morebiomes:palm_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"morebiomes_savannapalm_trunk_top.png", "morebiomes_savannapalm_trunk_top.png", "morebiomes_savannapalm_trunk.png"},
      ("Palm Trunk Stair"),
      ("Palm Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "morebiomes:gate_palm_wood",
    {
      description = ("Palm Wood Fence Gate"),
      texture = "morebiomes_savannapalm_wood.png",
      material = "morebiomes:palm_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "morebiomes:fence_palm_wood",
  {
    description = ("Palm Fence"),
    texture = "morebiomes_palm_fence_wood.png",
    inventory_image = "default_fence_overlay.png^morebiomes_savannapalm_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^morebiomes_savannapalm_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "morebiomes:palm_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "morebiomes:fence_rail_palm_wood",
  {
    description = ("Palm Fence Rail"),
    texture = "morebiomes_palm_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^morebiomes_savannapalm_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^morebiomes_savannapalm_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "morebiomes:palm_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "morebiomes:palm_tree",
    deco_type = "schematic",
    place_on = {"morebiomes:palmbeach_sand"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.01115,
    biomes = {"morebiomes:palmbeach"},
    y_max = 5,
    y_min = 2,
    schematic = minetest.get_modpath("morebiomes").."/schematics/cocobeach_palm_0_270.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	-- Beach Bush

	minetest.register_decoration({
		name = "morebiomes:beach_bush",
		deco_type = "schematic",
		place_on = {"morebiomes:palmbeach_sand"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.06,
			spread = {x = 100, y = 100, z = 100},
			seed = 137,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"morebiomes:palmbeach"},
		y_max = 31000,
		y_min = 3,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/beach_bush_0_270.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("morebiomes:beach_bush_stem", {
	description = ("Beach Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"morebiomes_beach_bush_stem.png"},
	inventory_image = "morebiomes_beach_bush_stem.png",
	wield_image = "morebiomes_beach_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("morebiomes:beach_bush_leaves", {
	description = ("Beach Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"morebiomes_beach_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"morebiomes:beach_bush_sapling"}, rarity = 5},
			{items = {"morebiomes:beach_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("morebiomes:beach_bush_sapling", {
	description = ("Beach Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"morebiomes_beach_bush_stem.png"},
	inventory_image = "morebiomes_beach_bush_stem.png",
	wield_image = "morebiomes_beach_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"morebiomes:beach_bush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

	minetest.register_decoration({
		name = "morebiomes:palmbeach_grass1",
		deco_type = "simple",
		place_on = {"morebiomes:palmbeach_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 1987,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 2,
		decoration = "morebiomes:palmbeach_grass1",
        spawn_by = "morebiomes:palmbeach_sand"
	})

minetest.register_node("morebiomes:palmbeach_grass1", {
	    description = "Palmbeach Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"morebiomes_beach_grass.png"},
	    inventory_image = "morebiomes_beach_grass.png",
	    wield_image = "morebiomes_beach_grass.png",
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
		name = "morebiomes:palmbeach_grass2",
		deco_type = "simple",
		place_on = {"morebiomes:palmbeach_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 834,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 2,
		decoration = "morebiomes:palmbeach_grass2",
        spawn_by = "morebiomes:palmbeach_sand"
	})

minetest.register_node("morebiomes:palmbeach_grass2", {
	    description = "Palmbeach Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"morebiomes_beach_grass2.png"},
	    inventory_image = "morebiomes_beach_grass2.png",
	    wield_image = "morebiomes_beach_grass2.png",
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
		name = "morebiomes:palmbeach_grass3",
		deco_type = "simple",
		place_on = {"morebiomes:palmbeach_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 834,
			octaves = 3,
			persist = 2,
		},
		y_max = 30000,
		y_min = 2,
		decoration = "morebiomes:palmbeach_grass3",
        spawn_by = "morebiomes:palmbeach:_sand"
	})

minetest.register_node("morebiomes:palmbeach_grass3", {
	    description = "Palmbeach Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"morebiomes_beach_grass3.png"},
	    inventory_image = "morebiomes_beach_grass3.png",
	    wield_image = "morebiomes_beach_grass3.png",
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

-- Banana Bunch
minetest.register_node("morebiomes:banana_bunch", {
	description = ("Banana Bunch"),
	drawtype = "plantlike",
	tiles = {"morebiomes_banana_bunch.png"},
	inventory_image = "morebiomes_banana_bunch.png",
	wield_image = "morebiomes_banana_bunch.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "morebiomes:banana_bunch",
	on_use = minetest.item_eat(6),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "morebiomes:banana_bunch", param2 = 1})
		end
	end
})

-- Bunch to Single
minetest.register_craft({
	type = "shapeless",
	output = "morebiomes:banana 3",
	recipe = {"morebiomes:banana_bunch"}
})

minetest.register_craft({
	type = "shapeless",
	output = "morebiomes:banana_bunch",
	recipe = {"morebiomes:banana", "morebiomes:banana", "morebiomes:banana"}
})

minetest.register_node("morebiomes:banana", {
	description = ("Banana"),
	drawtype = "torchlike",
	tiles = {"morebiomes_banana_single.png"},
	inventory_image = "morebiomes_banana_single.png",
	wield_image = "morebiomes_banana_single.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		food_banana = 1, fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "morebiomes:banana",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "morebiomes:banana", param2 = 1})
		end
	end
})

minetest.register_node("morebiomes:coconut_slice", {
	description = ("Coconut Slice"),
	drawtype = "torchlike",
	tiles = {"morebiomes_coconut_slice.png"},
	inventory_image = "morebiomes_coconut_slice.png",
	wield_image = "morebiomes_coconut_slice.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		food_banana = 1, fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "morebiomes:morebiomes:coconut_slice",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "morebiomes:coconut_slice", param2 = 1})
		end
	end
})

-- Coco
minetest.register_node("morebiomes:coconut", {
	description = ("Coconut"),
	drawtype = "plantlike",
	tiles = {"morebiomes_coconut.png"},
	inventory_image = "morebiomes_coconut.png",
	wield_image = "morebiomes_coconut.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 1, leafdecay_drop = 1
	},
	drop = "morebiomes:coconut",
	on_use = minetest.item_eat(6),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "morebiomes:coconut", param2 = 1})
		end
	end
})

-- Bunch to Single


minetest.register_craft({
	type = "shapeless",
	output = "morebiomes:coconut_bunch",
	recipe = {"morebiomes:coconut_slice", "morebiomes:coconut_slice", "morebiomes:coconut_slice"}
})

