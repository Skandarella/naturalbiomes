    stairs.register_stair_and_slab(
      "morebiomes_adler_reed_bundle",
      "morebiomes:reed_bundle",
      {snappy = 3, oddly_breakable_by_hand = 0, flammable = 0},
      {"morebiomes_adler_reed_bundle.png"},
      ("Reed Bundle Stair"),
      ("Reed Bundle Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "morebiomes_alpine_rock_brick",
      "morebiomes:alpine_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"morebiomes_alpine_rock_brick.png"},
      ("Alpine Brick Stair"),
      ("Alpine Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "morebiomes_bambooforest_rock_brick",
      "morebiomes:bamboo_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"morebiomes_bambooforest_rock_brick.png"},
      ("Bamboo Brick Stair"),
      ("Bamboo Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "morebiomes_beach_rock_brick",
      "morebiomes:beach_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"morebiomes_beach_rock_brick.png"},
      ("Beach Brick Stair"),
      ("Beach Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "morebiomes_mediterran_rock_brick",
      "morebiomes:med_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"morebiomes_mediterran_rock_brick.png"},
      ("Med Brick Stair"),
      ("Med Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "morebiomes_outback_rock_brick",
      "morebiomes:outback_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"morebiomes_outback_rock_brick.png"},
      ("Outback Brick Stair"),
      ("Outback Brick Slab"),
      default.node_sound_wood_defaults()
    )

walls.register(":morebiomes:alpine_brick_wall", "Alpine Brick Wall", "morebiomes_alpine_rock_brick.png",
		"morebiomes:alpine_brick_wall", default.node_sound_stone_defaults())

walls.register(":morebiomes:bamboo_brick_wall", "Bambooforest Wall", "morebiomes_bambooforest_rock_brick.png",
		"morebiomes:bamboo_brick_wall", default.node_sound_stone_defaults())

walls.register(":morebiomes:med_brick_wall", "Mediterranean Wall", "morebiomes_mediterran_rock_brick.png",
		"morebiomes:med_brick_wall", default.node_sound_stone_defaults())

walls.register(":morebiomes:outback_brick_wall", "Outback Wall", "morebiomes_outback_rock_brick.png",
		"morebiomes:outback_brick_wall", default.node_sound_stone_defaults())

walls.register(":morebiomes:beach_brick_wall", "Palmbeach Wall", "morebiomes_beach_rock_brick.png",
		"morebiomes:beach_brick_wall", default.node_sound_stone_defaults())

minetest.register_node("morebiomes:reed_bundle", {
	description = ("Reed Bundle"),
	tiles = {
		"morebiomes_adler_reed_bundle_top.png",
		"morebiomes_adler_reed_bundle_top.png",
		"morebiomes_adler_reed_bundle.png"
	},
	is_ground_content = false,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("morebiomes:alpine_brick", {
	description = ("Alpine Brick"),
	tiles = {"morebiomes_alpine_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morebiomes:bamboo_brick", {
	description = ("Bambooforest Brick"),
	tiles = {"morebiomes_bambooforest_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morebiomes:beach_brick", {
	description = ("Beach Brick"),
	tiles = {"morebiomes_beach_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morebiomes:med_brick", {
	description = ("Meditteranean Brick"),
	tiles = {"morebiomes_mediterran_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morebiomes:outback_brick", {
	description = ("Outback Brick"),
	tiles = {"morebiomes_outback_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "morebiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"morebiomes:alderswamp_reed", "morebiomes:alderswamp_reed", "morebiomes:alderswamp_reed", "morebiomes:alderswamp_reed"}

})

minetest.register_craft({
	output = "morebiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"morebiomes:alderswamp_reed2", "morebiomes:alderswamp_reed2", "morebiomes:alderswamp_reed2", "morebiomes:alderswamp_reed2"}

})

minetest.register_craft({
	output = "morebiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"morebiomes:alderswamp_reed3", "morebiomes:alderswamp_reed3", "morebiomes:alderswamp_reed3", "morebiomes:alderswamp_reed3"}

})

minetest.register_craft({
	output = "morebiomes:alpine_brick",
	type = "shapeless",
	recipe = 
		{"morebiomes:alpine_rock", "morebiomes:alpine_rock", "morebiomes:alpine_rock", "morebiomes:alpine_rock"}

	
})

minetest.register_craft({
	output = "morebiomes:bamboo_brick",
	type = "shapeless",
	recipe = 
		{"morebiomes:bambooforest_rock", "morebiomes:bambooforest_rock", "morebiomes:bambooforest_rock", "morebiomes:bambooforest_rock"}

	
})

minetest.register_craft({
	output = "morebiomes:beach_brick",
	type = "shapeless",
	recipe = 
		{"morebiomes:palmbeach_rock", "morebiomes:palmbeach_rock", "morebiomes:palmbeach_rock", "morebiomes:palmbeach_rock"}

	
})

minetest.register_craft({
	output = "morebiomes:med_brick",
	type = "shapeless",
	recipe = 
		{"morebiomes:mediterran_rock", "morebiomes:mediterran_rock", "morebiomes:mediterran_rock", "morebiomes:mediterran_rock"}

	
})

minetest.register_craft({
	output = "morebiomes:outback_brick",
	type = "shapeless",
	recipe = 
		{"morebiomes:outback_rock", "morebiomes:outback_rock", "morebiomes:outback_rock", "morebiomes:outback_rock"}

	
})