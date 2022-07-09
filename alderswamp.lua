minetest.register_node("morebiomes:alderswamp_litter", {
	description = ("Alder Swamp dirt with Grass"),
	tiles = {"morebiomes_alderswamp_litter.png", "morebiomes_alderswamp_dirt.png",
		{name = "morebiomes_alderswamp_dirt.png^morebiomes_alderswamp_litter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "morebiomes:alderswamp_dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("morebiomes:alderswamp_dirt", {
	description = ("Alder Swamp Dirt"),
	tiles = {"morebiomes_alderswamp_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_biome({
    name = "morebiomes:alderswamp",
    node_top = "morebiomes:alderswamp_litter",
    depth_top = 1,
    node_filler = "morebiomes:alderswamp_dirt",
    depth_filler = 3,
		node_riverbed = "morebiomes:alderswamp_dirt",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
    y_max = 5,
    y_min = 0,
    heat_point = 55,
    humidity_point = 70,
})

-- alder trunk
minetest.register_node("morebiomes:alder_trunk", {
	description = ("Alder Trunk"),
	tiles = {
		"morebiomes_alderswamp_alder_trunk_top.png",
		"morebiomes_alderswamp_alder_trunk_top.png",
		"morebiomes_alderswamp_alder_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- alder wood
minetest.register_node("morebiomes:alder_wood", {
	description = ("Alder Wood"),
	tiles = {"morebiomes_alderswamp_alder_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "morebiomes:alder_wood 4",
	recipe = {{"morebiomes:alder_trunk"}}
})

minetest.register_node("morebiomes:alder_leaves", {
  description = ("Alder Leaves"),
  drawtype = "allfaces_optional",
  waving = 1,
  tiles = {"morebiomes_alderswamp_alder_leaves.png"},
  special_tiles = {"morebiomes_alderswamp_alder_leaves.png"},
  paramtype = "light",
  is_ground_content = false,
  groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
  drop = {
    max_items = 1,
    items = {
      {
        -- player will get sapling with 1/50 chance
        items = {'morebiomes:alder_sapling'},
        rarity = 50,
      },
      {
        -- player will get leaves only if he get no saplings,
        -- this is because max_items is 1
        items = {'morebiomes:alder_leaves'},
      }
    }
  },
  sounds = default.node_sound_leaves_defaults(),

  after_place_node = default.after_place_leaves,
})

minetest.register_node("morebiomes:alder_sapling", {
  description = ("Alder Sapling"),
  drawtype = "plantlike",
  visual_scale = 1.0,
  tiles = {"morebiomes_alderswamp_sapling.png"},
  inventory_image = "morebiomes_alderswamp_sapling.png",
  wield_image = "morebiomes_alderswamp_sapling.png",
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
  minetest.log("action", ("Alder sapling placed."))
    itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
      "morebiomes:alder_sapling",
      -- minp, maxp to be checked, relative to sapling pos
      -- minp_relative.y = 1 because sapling pos has been checked
      {x = -2, y = 1, z = -2},
      {x = 2, y = 13, z = 2},
      -- maximum interval of interior volume check
      4)

    return itemstack
  end,
})



--
-- Tree generation
--

-- New alder tree

function default.grow_new_alder_tree(pos)
  local path = morebiomes.path .. "/schematics/morebiomes_alder_tree3_0_270.mts"
  minetest.place_schematic({x = pos.x - 3, y = pos.y, z = pos.z - 3},
    path, "0", nil, false)
end 

    stairs.register_stair_and_slab(
      "morebiomes_alderswamp_alder_wood",
      "morebiomes:alder_wood",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"morebiomes_alderswamp_alder_wood.png"},
      ("Alder Stair"),
      ("Alder Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "morebiomes_alderswamp_alder_trunk",
      "morebiomes:alder_trunk",
      {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
      {"morebiomes_alderswamp_alder_trunk_top.png", "morebiomes_alderswamp_alder_trunk_top.png", "morebiomes_alderswamp_alder_trunk.png"},
      ("Alder Trunk Stair"),
      ("Alder Trunk Slab"),
      default.node_sound_wood_defaults()
    )

  doors.register_fencegate(
    "morebiomes:gate_alder_wood",
    {
      description = ("Alder Wood Fence Gate"),
      texture = "morebiomes_alderswamp_alder_wood.png",
      material = "morebiomes:alder_wood",
      groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
      sounds = default.node_sound_wood_defaults()
    }
  )


default.register_fence(
  "morebiomes:fence_alder_wood",
  {
    description = ("Alder Fence"),
    texture = "morebiomes_adler_fence_wood.png",
    inventory_image = "default_fence_overlay.png^morebiomes_alderswamp_alder_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_overlay.png^morebiomes_alderswamp_alder_wood.png^default_fence_overlay.png^[makealpha:255,126,126",
    material = "morebiomes:alder_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

default.register_fence_rail(
  "morebiomes:fence_rail_alder_wood",
  {
    description = ("Alder Fence Rail"),
    texture = "morebiomes_adler_fence_wood.png",
    inventory_image = "default_fence_rail_overlay.png^morebiomes_alderswamp_alder_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    wield_image = "default_fence_rail_overlay.png^morebiomes_alderswamp_alder_wood.png^" ..
      "default_fence_rail_overlay.png^[makealpha:255,126,126",
    material = "morebiomes:alder_wood",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    sounds = default.node_sound_wood_defaults()
  }
)

minetest.register_decoration({
    name = "morebiomes:alder_tree",
    deco_type = "schematic",
    place_on = {"morebiomes:alderswamp_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.02115,
    biomes = {"morebiomes:alderswamp"},
    y_max = 5,
    y_min = 1,
    schematic = minetest.get_modpath("morebiomes").."/schematics/morebiomes_alder_tree3_0_270.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_node("morebiomes:alderswamp_reed", {
	    description = "Alderswamp reed",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"morebiomes_alderswamp_reeds.png"},
	    inventory_image = "morebiomes_alderswamp_reeds.png",
	    wield_image = "morebiomes_alderswamp_reeds.png",
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
		name = "morebiomes:alderswamp_reed",
		deco_type = "simple",
		place_on = {"morebiomes:alderswamp_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 6,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "morebiomes:alderswamp_reed",
        spawn_by = "morebiomes:alderswamp_litter"
	})

minetest.register_node("morebiomes:alderswamp_reed", {
	    description = "Alderswamp reed",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"morebiomes_alderswamp_reeds.png"},
	    inventory_image = "morebiomes_alderswamp_reeds.png",
	    wield_image = "morebiomes_alderswamp_reeds.png",
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
		name = "morebiomes:alderswamp_reed2",
		deco_type = "simple",
		place_on = {"morebiomes:alderswamp_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 8,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "morebiomes:alderswamp_reed2",
        spawn_by = "morebiomes:alderswamp_litter"
	})

minetest.register_node("morebiomes:alderswamp_reed2", {
	    description = "Alderswamp reed",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"morebiomes_alderswamp_reeds2.png"},
	    inventory_image = "morebiomes_alderswamp_reeds2.png",
	    wield_image = "morebiomes_alderswamp_reeds2.png",
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
		name = "morebiomes:alderswamp_reed3",
		deco_type = "simple",
		place_on = {"morebiomes:alderswamp_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "morebiomes:alderswamp_reed3",
        spawn_by = "morebiomes:alderswamp_litter"
	})

minetest.register_node("morebiomes:alderswamp_reed3", {
	    description = "Alderswamp reed",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"morebiomes_alderswamp_reeds3.png"},
	    inventory_image = "morebiomes_alderswamp_reeds3.png",
	    wield_image = "morebiomes_alderswamp_reeds3.png",
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
		name = "morebiomes:alder_log",
		deco_type = "schematic",
		place_on = {"morebiomes:alderswamp_litter"},
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
		biomes = {"morebiomes:alderswamp"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/alder_log_0_90.mts",
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "morebiomes:alderswamp_litter",
		num_spawn_by = 8,
	})

	minetest.register_decoration({
		name = "morebiomes:alder_swamppit",
		deco_type = "schematic",
		place_on = {"morebiomes:alderswamp_litter"},
		place_offset_y = -1,
		sidelen = 16,
		noise_params = {
			offset = 0.0012,
			scale = 0.0007,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 3,
			persist = 2,
		},
		biomes = {"morebiomes:alderswamp"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("morebiomes") .. "/schematics/alder_swamppit_0_90.mts",
		flags = "place_center_x, place_center_z",
    flags = "force_placement",
		rotation = "random",
		spawn_by = "morebiomes:alderswamp_litter",
	})

	minetest.register_decoration({
		name = "morebiomes:waterlily",
		deco_type = "simple",
		place_on = {"morebiomes:alderswamp_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 100, y = 100, z = 100},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		y_max = 0,
		y_min = 0,
		decoration = "morebiomes:waterlily",
		param2 = 0,
		param2_max = 3,
		place_offset_y = 1,
	})

minetest.register_node("morebiomes:waterlily", {
	description = ("Waterlily"),
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"morebiomes_alderswamp_waterlily.png", "morebiomes_alderswamp_waterlily_bottom.png"},
	inventory_image = "morebiomes_alderswamp_waterlily.png",
	wield_image = "morebiomes_alderswamp_waterlily.png",
	use_texture_alpha = "clip",
	liquids_pointable = true,
	walkable = false,
	buildable_to = true,
	floodable = true,
	groups = {snappy = 3, flower = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	node_placement_prediction = "",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -31 / 64, -0.5, 0.5, -15 / 32, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16}
	},

	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.above
		local node = minetest.get_node(pointed_thing.under)
		local def = minetest.registered_nodes[node.name]

		if def and def.on_rightclick then
			return def.on_rightclick(pointed_thing.under, node, placer, itemstack,
					pointed_thing)
		end

		if def and def.liquidtype == "source" and
				minetest.get_item_group(node.name, "water") > 0 then
			local player_name = placer and placer:get_player_name() or ""
			if not minetest.is_protected(pos, player_name) then
				minetest.set_node(pos, {name = "morebiomes:waterlily",
					param2 = math.random(0, 3)})
				if not (creative and creative.is_enabled_for
						and creative.is_enabled_for(player_name)) then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, ("Node is protected."))
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end
})

	minetest.register_decoration({
		name = "morebiomes:alderswamp_yellowflower",
		deco_type = "simple",
		place_on = {"morebiomes:alderswamp_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 1,
		},
		y_max = 30000,
		y_min = 1,
		decoration = "morebiomes:alderswamp_yellowflower",
        spawn_by = "morebiomes:alderswamp_litter"
	})

minetest.register_node("morebiomes:alderswamp_yellowflower", {
	    description = "Alderswamp flower",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"morebiomes_adler_yellowflower.png"},
	    inventory_image = "morebiomes_adler_yellowflower.png",
	    wield_image = "morebiomes_adler_yellowflower.png",
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
		name = "morebiomes:alderswamp_brownreed",
		deco_type = "simple",
		place_on = {"morebiomes:alderswamp_litter"},
		sidelen = 16,
		noise_params = {
			offset = -0.1,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 3602,
			octaves = 7,
			persist = 1,
		},
		y_max = 1,
		y_min = 0,
		decoration = "morebiomes:alderswamp_brownreed",
        spawn_by = "morebiomes:alderswamp_litter"
	})

minetest.register_node("morebiomes:alderswamp_brownreed", {
	    description = "Alderswamp reed",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"morebiomes_alderswamp_reedbrown.png"},
	    inventory_image = "morebiomes_alderswamp_reedbrown.png",
	    wield_image = "morebiomes_alderswamp_reedbrown.png",
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