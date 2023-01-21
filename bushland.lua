local S = minetest.get_translator("naturalbiomes")

local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

minetest.register_node("naturalbiomes:bushland_bushlandlitter2", {
	description = S("Bushland Litter"),
	tiles = {
		"naturalbiomes_bushland_bushlandlitter2_top.png",
		"naturalbiomes_bushland_bushlandlitter2_bottom.png",
		"naturalbiomes_bushland_bushlandlitter2_right.png",
		"naturalbiomes_bushland_bushlandlitter2_left.png",
		"naturalbiomes_bushland_bushlandlitter2_back.png",
		"naturalbiomes_bushland_bushlandlitter2_front.png"},
	groups = {crumbly = 3, sand = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("naturalbiomes:bushland_bushlandlitter3", {
	description = S("Bushland Litter"),
	tiles = {
		"naturalbiomes_bushland_bushlandlitter3_top.png",
		"naturalbiomes_bushland_bushlandlitter3_bottom.png",
		"naturalbiomes_bushland_bushlandlitter3_right.png",
		"naturalbiomes_bushland_bushlandlitter3_left.png",
		"naturalbiomes_bushland_bushlandlitter3_back.png",
		"naturalbiomes_bushland_bushlandlitter3_front.png"},
	groups = {crumbly = 3, sand = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_biome({
    name = "naturalbiomes:bushland",
    node_top = "naturalbiomes:bushland_bushlandlitter",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 5,
		node_riverbed = "default:sand",
		depth_riverbed = 3,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:sandstonebrick",
		node_dungeon_stair = "stairs:stair_sandstone",
    y_max = 500,
    y_min = 1,
    heat_point = 68,
    humidity_point = 83,
})

minetest.register_node("naturalbiomes:bushland_bushlandlitter", {
	description = S("Bushland Litter"),
	tiles = {"naturalbiomes_bushland_bushlandlitter.png", "default_dirt.png",
		{name = "default_dirt.png^naturalbiomes_bushland_bushlandlitter_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		place_offset_y = -1,
                flags = "force_placement",
    fill_ratio = 0.3,
		y_max = 20,
		y_min = 3,
		decoration = "naturalbiomes:bushland_bushlandlitter2"
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		place_offset_y = -1,
                flags = "force_placement",
    fill_ratio = 0.3,
		y_max = 500,
		y_min = 3,
		decoration = "naturalbiomes:bushland_bushlandlitter3"
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		place_offset_y = -1,
                flags = "force_placement",
    fill_ratio = 10,
		y_max = 3,
		y_min = 0,
		decoration = "default:sand"
	})

minetest.register_node("naturalbiomes:bushland_grass", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_bushland_grass.png"},
	    inventory_image = "naturalbiomes_bushland_grass.png",
	    wield_image = "naturalbiomes_bushland_grass.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 9478,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass",
	})

minetest.register_node("naturalbiomes:bushland_grass2", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_bushland_grass2.png"},
	    inventory_image = "naturalbiomes_bushland_grass2.png",
	    wield_image = "naturalbiomes_bushland_grass2.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass2",
	})

minetest.register_node("naturalbiomes:bushland_grass3", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 1.0,
	    tiles = {"naturalbiomes_bushland_grass3.png"},
	    inventory_image = "naturalbiomes_bushland_grass3.png",
	    wield_image = "naturalbiomes_bushland_grass3.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter2", "naturalbiomes:bushland_bushlandlitter3"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 1549,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass3",
	})

minetest.register_node("naturalbiomes:bushland_grass4", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_bushland_grass4.png"},
	    inventory_image = "naturalbiomes_bushland_grass4.png",
	    wield_image = "naturalbiomes_bushland_grass4.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 6687,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass4",
	})

minetest.register_node("naturalbiomes:bushland_grass5", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_bushland_grass5.png"},
	    inventory_image = "naturalbiomes_bushland_grass5.png",
	    wield_image = "naturalbiomes_bushland_grass5.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter2", "naturalbiomes:bushland_bushlandlitter3"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4663,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass5",
	})

minetest.register_node("naturalbiomes:bushland_grass6", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_bushland_grass6.png"},
	    inventory_image = "naturalbiomes_bushland_grass6.png",
	    wield_image = "naturalbiomes_bushland_grass6.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter2", "naturalbiomes:bushland_bushlandlitter3"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 4602,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass6",
	})

minetest.register_node("naturalbiomes:bushland_grass7", {
	    description = S"Bushland Grass",
	    drawtype = "plantlike",
	    waving = 1,
	    visual_scale = 2.0,
	    tiles = {"naturalbiomes_bushland_grass7.png"},
	    inventory_image = "naturalbiomes_bushland_grass7.png",
	    wield_image = "naturalbiomes_bushland_grass7.png",
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
		deco_type = "simple",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
		sidelen = 16,
		noise_params = {
			offset = -0.03,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 9932,
			octaves = 9,
			persist = 1,
		},
		y_max = 30000,
		y_min = 3,
		decoration = "naturalbiomes:bushland_grass7",
	})

-- New blackberry bush

local function grow_new_blackberry_bush(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 0, z = pos.z - 2}, modpath.."/schematics/naturalbiomes_bushland_blackberrybush.mts", "0", nil, false)
end 

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_blackberrybush.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_blackberrybush2.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_blackberrybush3.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:bushland_blackberry_stem", {
	description = S("Blackberry Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"naturalbiomes_bushland_blackberry_stem.png"},
	inventory_image = "naturalbiomes_bushland_blackberry_stem.png",
	wield_image = "naturalbiomes_bushland_blackberry_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("naturalbiomes:bushland_blackberry_leaves2", {
	description = S("Blackberry Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_bushland_blackberry_leaves2.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, winleafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_blackberrybush_sapling"}, rarity = 3},
			{items = {"naturalbiomes:blackberry"}, rarity = 2},
			{items = {"naturalbiomes:bushland_blackberry_leaves2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:bushland_blackberry_leaves", {
	description = S("Blackberry Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_bushland_blackberry_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, winleafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_blackberrybush_sapling"}, rarity = 25},
			{items = {"naturalbiomes:blackberry"}, rarity = 2},
			{items = {"naturalbiomes:bushland_blackberry_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:bushland_blackberrybush_sapling", {
	description = S("Blackberry Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_bushland_blackberry_sapling.png"},
	inventory_image = "naturalbiomes_bushland_blackberry_sapling.png",
	wield_image = "naturalbiomes_bushland_blackberry_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_blackberry_bush,
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
			"naturalbiomes:bushland_blackberrybush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("naturalbiomes:blackberry", {
	description = S("Blackberry"),
	drawtype = "torchlike",
	tiles = {"naturalbiomes_bushland_blackberries.png"},
	inventory_image = "naturalbiomes_bushland_blackberries.png",
	wield_image = "naturalbiomes_bushland_blackberries.png",
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
	drop = "naturalbiomes:blackberry",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:blackberry", param2 = 1})
		end
	end
})


-- New wildrose bush

local function grow_new_wildrose_bush(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 1, y = pos.y - 0, z = pos.z - 1}, modpath.."/schematics/naturalbiomes_bushland_wildrosebush.mts", "0", nil, false)
end 

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_wildrosebush.mts",
		flags = "place_center_x, place_center_z",
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_wildrosebush2.mts",
		flags = "place_center_x, place_center_z",
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = 1,
		sidelen = 16,
		noise_params = {
offset = -0.004,
			scale = 0.01,
			spread = {x = 100, y = 100, z = 100},
			seed = 697,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_wildrosebush3.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:bushland_wildrose_stem", {
	description = S("Wildrose Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.40,
	tiles = {"naturalbiomes_bushland_wildrose_stem.png"},
	inventory_image = "naturalbiomes_bushland_wildrose_stem.png",
	wield_image = "naturalbiomes_bushland_wildrose_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("naturalbiomes:bushland_wildrose_leaves2", {
	description = S("Wildrose Bush Leaves"),
	drawtype = "allfaces_optional",
        waving = 1,
	tiles = {"naturalbiomes_bushland_wildrose_leaves2.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, winleafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_wildrosebush_sapling"}, rarity = 3},
			{items = {"naturalbiomes:wildrose"}, rarity = 2},
			{items = {"naturalbiomes:bushland_wildrose_leaves2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:bushland_wildrose_leaves", {
	description = S("Wildrose Bush Leaves"),
	drawtype = "allfaces_optional",
        waving = 1,
	tiles = {"naturalbiomes_bushland_wildrose_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, winleafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_wildrosebush_sapling"}, rarity = 25},
			{items = {"naturalbiomes:wildrose"}, rarity = 2},
			{items = {"naturalbiomes:bushland_wildrose_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:bushland_wildrosebush_sapling", {
	description = S("Wildrose Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_bushland_wildrose_sapling.png"},
	inventory_image = "naturalbiomes_bushland_wildrose_sapling.png",
	wield_image = "naturalbiomes_bushland_wildrose_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_wildrose_bush,
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
			"naturalbiomes:bushland_wildrosebush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("naturalbiomes:wildrose", {
	description = S("Wildrose"),
	drawtype = "torchlike",
	tiles = {"naturalbiomes_bushland_wildrose.png"},
	inventory_image = "naturalbiomes_bushland_wildrose.png",
	wield_image = "naturalbiomes_bushland_wildrose.png",
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
	drop = "naturalbiomes:wildrose",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:wildrose", param2 = 1})
		end
	end
})

-- New hazelnut bush

local function grow_new_hazelnut_bush(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x - 3, y = pos.y - 0, z = pos.z - 3}, modpath.."/schematics/naturalbiomes_bushland_hazelnutbush.mts", "0", nil, false)
end 

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -3,
		sidelen = 16,
    fill_ratio = 0.00215,
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_hazelnutbush.mts",
		flags = "place_center_x, place_center_z",
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -3,
		sidelen = 16,
    fill_ratio = 0.00215,
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_hazelnutbush2.mts",
		flags = "place_center_x, place_center_z",
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -3,
		sidelen = 16,
    fill_ratio = 0.00215,
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_hazelnutbush3.mts",
		flags = "place_center_x, place_center_z",
	})

minetest.register_node("naturalbiomes:bushland_hazelnut_stem", {
	description = S("Hazelnut Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"naturalbiomes_bushland_hazelnut_stem.png"},
	inventory_image = "naturalbiomes_bushland_hazelnut_stem.png",
	wield_image = "naturalbiomes_bushland_hazelnut_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_node("naturalbiomes:bushland_hazelnut_leaves2", {
	description = S("Hazelnut Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_bushland_hazelnut_leaves2.png"},
	paramtype = "light",
        waving = 1,
	groups = {snappy = 3, flammable = 2, leaves = 1, winleafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_hazelnutbush_sapling"}, rarity = 25},
			{items = {"naturalbiomes:hazelnut"}, rarity = 2},
			{items = {"naturalbiomes:bushland_hazelnut_leaves2"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:bushland_hazelnut_leaves", {
	description = S("Hazelnut Bush Leaves"),
	drawtype = "allfaces_optional",
        waving = 1,
	tiles = {"naturalbiomes_bushland_hazelnut_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1, winleafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_hazelnutbush_sapling"}, rarity = 25},
			{items = {"naturalbiomes:hazelnut"}, rarity = 2},
			{items = {"naturalbiomes:bushland_hazelnut_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("naturalbiomes:bushland_hazelnutbush_sapling", {
	description = S("Hazelnut Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"naturalbiomes_bushland_hazelnut_sapling.png"},
	inventory_image = "naturalbiomes_bushland_hazelnut_sapling.png",
	wield_image = "naturalbiomes_bushland_hazelnut_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_hazelnut_bush,
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
			"naturalbiomes:bushland_hazelnutbush_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			{x = -1, y = 0, z = -1},
			{x = 1, y = 1, z = 1},
			-- maximum interval of interior volume check
			2)

		return itemstack
	end,
})

minetest.register_node("naturalbiomes:hazelnut", {
	description = S("Hazelnut"),
	drawtype = "torchlike",
	tiles = {"naturalbiomes_bushland_hazelnut.png"},
	inventory_image = "naturalbiomes_bushland_hazelnut.png",
	wield_image = "naturalbiomes_bushland_hazelnut.png",
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
	drop = "naturalbiomes:hazelnut",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer)
		if placer:is_player() then
			minetest.set_node(pos, {name = "naturalbiomes:hazelnut", param2 = 1})
		end
	end
})

--- dead bush

minetest.register_node("naturalbiomes:bushland_deadbush_leaves", {
	description = S("Dead Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"naturalbiomes_bushland_deadbush_leaves.png"},
	paramtype = "light",
        waving = 1,
	groups = {snappy = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"naturalbiomes:bushland_deadbush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -1,
		sidelen = 16,
    fill_ratio = 0.00115,
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_deadbush3.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -1,
		sidelen = 16,
    fill_ratio = 0.00115,
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_deadbush2.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"naturalbiomes:bushland_bushlandlitter"},
    place_offset_y = -1,
		sidelen = 16,
    fill_ratio = 0.00115,
		biomes = {"naturalbiomes:bushland"},
    y_max = 31000,
    y_min = 4,
		schematic = minetest.get_modpath("naturalbiomes") .. "/schematics/naturalbiomes_bushland_deadbush.mts",
		flags = "place_center_x, place_center_z",
	})

-- cracked hazelnut
minetest.register_craftitem("naturalbiomes:hazelnut_cracked", {
	description = S("Cracked Hazelnut"),
	inventory_image = "naturalbiomes_bushland_hazelnut_cracked.png",
	on_use = minetest.item_eat(5),
	groups = {food = 1, flammable = 2},
})

xpanes.register_pane("hazelnut_pane", {
	description = S("Hazelnut Woven Fence"),
	textures = {"naturalbiomes_bushland_hazelnut_fence.png", "", "naturalbiomes_bushland_hazelnut_fence.png"},
	inventory_image = "naturalbiomes_bushland_hazelnut_fence.png",
	wield_image = "naturalbiomes_bushland_hazelnut_fence.png",
	sounds = default.node_sound_wood_defaults(),
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
recipe = {
		{"", "farming:string", ""},
		{"naturalbiomes:bushland_hazelnut_stem", "naturalbiomes:bushland_hazelnut_stem", "naturalbiomes:bushland_hazelnut_stem"}
	}
})