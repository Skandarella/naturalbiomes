minetest.register_node("morebiomes:savannalitter", {
	description = ("Wet Savanna dirt with Grass"),
	tiles = {"morebiomes_savannalitter.png", "default_dirt.png",
		{name = "default_dirt.png^morebiomes_savannalitter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_biome({
    name = "morebiomes:wetsavanna",
    node_top = "morebiomes:savannalitter",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
		node_riverbed = "default:clay",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 65,
    humidity_point = 40,
})

-- acacia trunk
minetest.register_node("morebiomes:acacia_trunk", {
	description = ("Acacia Trunk"),
	tiles = {
		"morebiomes_savannaacaia_trunk_top.png",
		"morebiomes_savannaacaia_trunk_top.png",
		"morebiomes_savannaacacia_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- acacia wood
minetest.register_node("morebiomes:acacia_wood", {
	description = ("Acacia Wood"),
	tiles = {"morebiomes_savannaacacia_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "morebiomes:acacia_wood 4",
	recipe = {{"morebiomes:acacia_trunk"}}
})

minetest.register_node("morebiomes:acacia_leaves", {
  description = ("Acacia Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"morebiomes_savannaacacia_leaves.png"},
  special_tiles = {"morebiomes_savannaacacia_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'morebiomes:acacia_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'morebiomes:acacia_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("morebiomes:acacia_sapling", {
  description = ("Acacia Sapling"),
  drawtype = "plantlike",
  visual_scale = 1.0,
  tiles = {"morebiomes_savannaacaia_sapling.png"},
  inventory_image = "morebiomes_savannaacaia_sapling.png",
  wield_image = "morebiomes_savannaacaia_sapling.png",
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
  minetest.log("action", ("Acacia sapling placed."))
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "morebiomes:acacia_sapling",
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

-- New acacia tree

function default.grow_new_acacia_tree(pos)
  local path = morebiomes.path .. "/schematics/savannaacaciatree_0_180.mts"
  minetest.place_schematic({x = pos.x - 3, y = pos.y, z = pos.z - 3},
    path, "0", nil, false)
end 

    stairs.register_stair_and_slab(
      "morebiomes_savannaacacia_wood",
      "morebiomes:acacia_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"morebiomes_savannaacacia_wood.png"},
      ("Acacia Stair"),
      ("Acacia Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "morebiomes_savannaacacia_trunk",
      "morebiomes:acacia_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"morebiomes_savannaacaia_trunk_top.png", "morebiomes_savannaacaia_trunk_top.png", "morebiomes_savannaacacia_trunk.png"},
      ("Acacia Trunk Stair"),
      ("Acacia Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "morebiomes:gate_acacia_wood",
    {
      description = ("Acacia Wood Fence Gate"),
      texture = "morebiomes_savannaacacia_wood.png",
      material = "morebiomes:acacia_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "morebiomes:fence_acacia_wood",
  {
    description = ("Acacia Fence"),
    texture = "morebiomes_acacia_fence_wood.png",
    inventory_image = "default_fence_overlay.png^morebiomes_savannaacacia_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^morebiomes_savannaacacia_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "morebiomes:acacia_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "morebiomes:fence_rail_acacia_wood",
  {
    description = ("Acacia Fence Rail"),
    texture = "morebiomes_acacia_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^morebiomes_savannaacacia_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^morebiomes_savannaacacia_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "morebiomes:acacia_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "morebiomes:acacia_tree",
    deco_type = "schematic",
    place_on = {"morebiomes:savannalitter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00215,
    biomes = {"morebiomes:wetsavanna"},
    y_max = 31000,
    y_min = 2,
    schematic = minetest.get_modpath("morebiomes").."/schematics/savannaacaciatree_0_180.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

	minetest.register_decoration({
		name = "morebiomes:savannagras",
		deco_type = "schematic",
		place_on = {"morebiomes:savannalitter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"morebiomes:wetsavanna"},
		y_max = 31000,
		y_min = 0,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/savannagrass_0_90.mts",
	})

minetest.register_node("morebiomes:savannagrass", {
	description = ("Savanna Grass"),
	drawtype = "plantlike",
	tiles = {"morebiomes_savannagrass.png"},
	inventory_image = "morebiomes_savannagrass.png",
	wield_image = "morebiomes_savannagrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

	minetest.register_decoration({
		name = "morebiomes:savannagrassmall",
		deco_type = "schematic",
		place_on = {"morebiomes:savannalitter"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 100, y = 100, z = 100},
			seed = 436,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"morebiomes:wetsavanna"},
		y_max = 31000,
		y_min = 0,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/smallsavannagrass_0_90.mts",
	})

minetest.register_node("morebiomes:savannagrasssmall", {
	description = ("Savanna Grass"),
	drawtype = "plantlike",
	tiles = {"morebiomes_savannagrass.png"},
	inventory_image = "morebiomes_savannagrass.png",
	wield_image = "morebiomes_savannagrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

	minetest.register_decoration({
		name = "morebiomes:savanna_flowergrass",
		deco_type = "simple",
		place_on = {"morebiomes:savannalitter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 5,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "morebiomes:savanna_flowergrass",
        spawn_by = "morebiomes:savannalitter"
	})

minetest.register_node("morebiomes:savanna_flowergrass", {
	    description = "Savanna Flowergrass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"morebiomes_savannagrasssmall.png"},
	    inventory_image = "morebiomes_savannagrasssmall.png",
	    wield_image = "morebiomes_savannagrasssmall.png",
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
		name = "morebiomes:savanna_grass2",
		deco_type = "simple",
		place_on = {"morebiomes:savannalitter"},
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
		y_min = 1,
		decoration = "morebiomes:savanna_grass2",
        spawn_by = "morebiomes:savannalitter"
	})

minetest.register_node("morebiomes:savanna_grass2", {
	    description = "Savanna Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"morebiomes_savannagrass2.png"},
	    inventory_image = "morebiomes_savannagrass2.png",
	    wield_image = "morebiomes_savannagrass2.png",
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
		name = "morebiomes:savanna_grass3",
		deco_type = "simple",
		place_on = {"morebiomes:savannalitter"},
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
		y_min = 1,
		decoration = "morebiomes:savanna_grass3",
        spawn_by = "morebiomes:savannalitter"
	})

minetest.register_node("morebiomes:savanna_grass3", {
	    description = "Savanna Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"morebiomes_savannagrass3.png"},
	    inventory_image = "morebiomes_savannagrass3.png",
	    wield_image = "morebiomes_savannagrass3.png",
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
		name = "morebiomes:acacia_log",
		deco_type = "schematic",
		place_on = {"morebiomes:savannalitter"},
		place_offset_y = 1,
		sidelen = 16,
		noise_params = {
			offset = 0.0012,
			scale = 0.0007,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"morebiomes:wetsavanna"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/acacia_log_0_90.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "morebiomes:savannalitter",
		num_spawn_by = 8,
	})