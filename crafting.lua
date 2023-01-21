local S = minetest.get_translator("naturalbiomes")

    stairs.register_stair_and_slab(
      "naturalbiomes_adler_reed_bundle",
      "naturalbiomes:reed_bundle",
      {snappy = 3, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_adler_reed_bundle.png"},
      S("Reed Bundle Stair"),
      S("Reed Bundle Slab"),
      default.node_sound_wood_defaults()
    )

    stairs.register_stair_and_slab(
      "naturalbiomes_alpine_rock_brick",
      "naturalbiomes:alpine_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_alpine_rock_brick.png"},
      S("Alpine Brick Stair"),
      S("Alpine Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_bambooforest_rock_brick",
      "naturalbiomes:bamboo_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_bambooforest_rock_brick.png"},
      S("Bamboo Brick Stair"),
      S("Bamboo Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_beach_rock_brick",
      "naturalbiomes:beach_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_beach_rock_brick.png"},
      S("Beach Brick Stair"),
      S("Beach Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_mediterran_rock_brick",
      "naturalbiomes:med_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_mediterran_rock_brick.png"},
      S("Med Brick Stair"),
      S("Med Brick Slab"),
      default.node_sound_wood_defaults()
    )


    stairs.register_stair_and_slab(
      "naturalbiomes_outback_rock_brick",
      "naturalbiomes:outback_brick",
      {cracky = 1, oddly_breakable_by_hand = 0, flammable = 0},
      {"naturalbiomes_outback_rock_brick.png"},
      S("Outback Brick Stair"),
      S("Outback Brick Slab"),
      default.node_sound_wood_defaults()
    )

walls.register(":naturalbiomes:alpine_brick_wall", S"Alpine Brick Wall", "naturalbiomes_alpine_rock_brick.png",
		"naturalbiomes:alpine_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:bamboo_brick_wall", S"Bambooforest Wall", "naturalbiomes_bambooforest_rock_brick.png",
		"naturalbiomes:bamboo_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:med_brick_wall", S"Mediterranean Wall", "naturalbiomes_mediterran_rock_brick.png",
		"naturalbiomes:med_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:outback_brick_wall", S"Outback Wall", "naturalbiomes_outback_rock_brick.png",
		"naturalbiomes:outback_brick_wall", default.node_sound_stone_defaults())

walls.register(":naturalbiomes:beach_brick_wall", S"Palmbeach Wall", "naturalbiomes_beach_rock_brick.png",
		"naturalbiomes:beach_brick_wall", default.node_sound_stone_defaults())

minetest.register_node("naturalbiomes:reed_bundle", {
	description = S("Reed Bundle"),
	tiles = {
		"naturalbiomes_adler_reed_bundle_top.png",
		"naturalbiomes_adler_reed_bundle_top.png",
		"naturalbiomes_adler_reed_bundle.png"
	},
	is_ground_content = false,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("naturalbiomes:alpine_brick", {
	description = S("Alpine Brick"),
	tiles = {"naturalbiomes_alpine_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:bamboo_brick", {
	description = S("Bambooforest Brick"),
	tiles = {"naturalbiomes_bambooforest_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:beach_brick", {
	description = S("Beach Brick"),
	tiles = {"naturalbiomes_beach_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:med_brick", {
	description = S("Meditteranean Brick"),
	tiles = {"naturalbiomes_mediterran_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("naturalbiomes:outback_brick", {
	description = S("Outback Brick"),
	tiles = {"naturalbiomes_outback_rock_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "naturalbiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alderswamp_reed", "naturalbiomes:alderswamp_reed"}

})

minetest.register_craft({
	output = "naturalbiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alderswamp_reed2", "naturalbiomes:alderswamp_reed2"}

})

minetest.register_craft({
	output = "naturalbiomes:reed_bundle",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alderswamp_reed3", "naturalbiomes:alderswamp_reed3"}

})

minetest.register_craft({
	output = "naturalbiomes:alpine_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alpine_rock", "naturalbiomes:alpine_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:bamboo_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:bambooforest_rock", "naturalbiomes:bambooforest_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:beach_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:palmbeach_rock", "naturalbiomes:palmbeach_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:med_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:mediterran_rock", "naturalbiomes:mediterran_rock"}

	
})

minetest.register_craft({
	output = "naturalbiomes:outback_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:outback_rock", "naturalbiomes:outback_rock"}

	
})

----

minetest.register_craft({
	output = "naturalbiomes:alpine_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:alpine_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:bamboo_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:bamboo_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:beach_brick",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:beach_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:med_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:med_brick"}

	
})

minetest.register_craft({
	output = "naturalbiomes:outback_brick_wall",
	type = "shapeless",
	recipe = 
		{"naturalbiomes:outback_brick"}

	
})

--- doors

doors.register_trapdoor("naturalbiomes:acacia_trapdoor", {
	description = S"Wet Savanna Acacia Trapdoor",
	inventory_image = "naturalbiomes_acacia_trapdoor.png",
	wield_image = "naturalbiomes_acacia_trapdoor.png",
	tile_front = "naturalbiomes_acacia_trapdoor.png",
	tile_side = "naturalbiomes_acacia_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:acacia_trapdoor 2",
	recipe = {
		{"naturalbiomes:acacia_wood", "naturalbiomes:acacia_wood", "naturalbiomes:acacia_wood"},
		{"naturalbiomes:acacia_wood", "naturalbiomes:acacia_trunk", "naturalbiomes:acacia_wood"},
	}
})

doors.register("naturalbiomes_acacia_door", {
    tiles = {{ name = "naturalbiomes_acacia_door.png", backface_culling = true }},
    description = S"Wet Savanna Acacia Door",
    inventory_image = "naturalbiomes_item_acacia_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:acacia_wood", "naturalbiomes:acacia_wood"},
		{"naturalbiomes:acacia_trunk", "naturalbiomes:acacia_trunk"},
		{"naturalbiomes:acacia_wood", "naturalbiomes:acacia_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:alder_trapdoor", {
	description = S"Alder Trapdoor",
	inventory_image = "naturalbiomes_alder_trapdoor.png",
	wield_image = "naturalbiomes_alder_trapdoor.png",
	tile_front = "naturalbiomes_alder_trapdoor.png",
	tile_side = "naturalbiomes_alder_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:alder_trapdoor 2",
	recipe = {
		{"naturalbiomes:alder_wood", "naturalbiomes:alder_wood", "naturalbiomes:alder_wood"},
		{"naturalbiomes:alder_wood", "naturalbiomes:alder_trunk", "naturalbiomes:alder_wood"},
	}
})

doors.register("naturalbiomes_alder_door", {
    tiles = {{ name = "naturalbiomes_alder_door.png", backface_culling = true }},
    description = S"Alder Door",
    inventory_image = "naturalbiomes_item_alder_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:alder_wood", "naturalbiomes:alder_wood"},
		{"naturalbiomes:alder_trunk", "naturalbiomes:alder_trunk"},
		{"naturalbiomes:alder_wood", "naturalbiomes:alder_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:alpine_trapdoor", {
	description = S"Alpine Underground Trapdoor",
	inventory_image = "naturalbiomes_alpine1_trapdoor.png",
	wield_image = "naturalbiomes_alpine1_trapdoor.png",
	tile_front = "naturalbiomes_alpine1_trapdoor.png",
	tile_side = "naturalbiomes_alpine1_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:alpine_trapdoor 2",
	recipe = {
		{"naturalbiomes:alppine1_wood", "naturalbiomes:alppine1_wood", "naturalbiomes:alppine1_wood"},
		{"naturalbiomes:alppine1_wood", "naturalbiomes:alppine1_trunk", "naturalbiomes:alppine1_wood"},
	}
})

doors.register("naturalbiomes_alpine_door", {
    tiles = {{ name = "naturalbiomes_alpine1_door.png", backface_culling = true }},
    description = S"Alpine Underground Door",
    inventory_image = "naturalbiomes_item_alpine1_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:alppine1_wood", "naturalbiomes:alppine1_wood"},
		{"naturalbiomes:alppine1_trunk", "naturalbiomes:alppine1_trunk"},
		{"naturalbiomes:alppine1_wood", "naturalbiomes:alppine1_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:alpine2_trapdoor", {
	description = S"Alpine Trapdoor",
	inventory_image = "naturalbiomes_alpine2_trapdoor.png",
	wield_image = "naturalbiomes_alpine2_trapdoor.png",
	tile_front = "naturalbiomes_alpine2_trapdoor.png",
	tile_side = "naturalbiomes_alpine2_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:alpine2_trapdoor 2",
	recipe = {
		{"naturalbiomes:alppine2_wood", "naturalbiomes:alppine2_wood", "naturalbiomes:alppine2_wood"},
		{"naturalbiomes:alppine2_wood", "naturalbiomes:alppine2_trunk", "naturalbiomes:alppine2_wood"},
	}
})

doors.register("naturalbiomes_alpine2_door", {
    tiles = {{ name = "naturalbiomes_alpine2_door.png", backface_culling = true }},
    description = S"Alpine Door",
    inventory_image = "naturalbiomes_item_alpine2_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:alppine2_wood", "naturalbiomes:alppine2_wood"},
		{"naturalbiomes:alppine2_trunk", "naturalbiomes:alppine2_trunk"},
		{"naturalbiomes:alppine2_wood", "naturalbiomes:alppine2_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:bamboo_trapdoor", {
	description = S"Bamboo Trapdoor",
	inventory_image = "naturalbiomes_bamboo_trapdoor.png",
	wield_image = "naturalbiomes_bamboo_trapdoor.png",
	tile_front = "naturalbiomes_bamboo_trapdoor.png",
	tile_side = "naturalbiomes_bamboo_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:bamboo_trapdoor 2",
	recipe = {
		{"naturalbiomes:bamboo_wood", "naturalbiomes:bamboo_wood", "naturalbiomes:bamboo_wood"},
		{"naturalbiomes:bamboo_wood", "naturalbiomes:bamboo_trunk", "naturalbiomes:bamboo_wood"},
	}
})

doors.register("naturalbiomes_bamboo_door", {
    tiles = {{ name = "naturalbiomes_bamboo_door.png", backface_culling = true }},
    description = S"Bamboo Door",
    inventory_image = "naturalbiomes_item_bamboo_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:bamboo_wood", "naturalbiomes:bamboo_wood"},
		{"naturalbiomes:bamboo_trunk", "naturalbiomes:bamboo_trunk"},
		{"naturalbiomes:bamboo_wood", "naturalbiomes:bamboo_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:banana_trapdoor", {
	description = S"Banana Trapdoor",
	inventory_image = "naturalbiomes_banana_trapdoor.png",
	wield_image = "naturalbiomes_banana_trapdoor.png",
	tile_front = "naturalbiomes_banana_trapdoor.png",
	tile_side = "naturalbiomes_banana_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:banana_trapdoor 2",
	recipe = {
		{"naturalbiomes:banana_wood", "naturalbiomes:banana_wood", "naturalbiomes:banana_wood"},
		{"naturalbiomes:banana_wood", "naturalbiomes:banana_trunk", "naturalbiomes:banana_wood"},
	}
})

doors.register("naturalbiomes_banana_door", {
    tiles = {{ name = "naturalbiomes_banana_door.png", backface_culling = true }},
    description = S"Banana Door",
    inventory_image = "naturalbiomes_item_banana_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:banana_wood", "naturalbiomes:banana_wood"},
		{"naturalbiomes:banana_trunk", "naturalbiomes:banana_trunk"},
		{"naturalbiomes:banana_wood", "naturalbiomes:banana_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:birch_trapdoor", {
	description = S"Birch Trapdoor",
	inventory_image = "naturalbiomes_birch_trapdoor.png",
	wield_image = "naturalbiomes_birch_trapdoor.png",
	tile_front = "naturalbiomes_birch_trapdoor.png",
	tile_side = "naturalbiomes_birch_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:birch_trapdoor 2",
	recipe = {
		{"naturalbiomes:heath_birch_wood", "naturalbiomes:heath_birch_wood", "naturalbiomes:heath_birch_wood"},
		{"naturalbiomes:heath_birch_wood", "naturalbiomes:heath_birch_trunk", "naturalbiomes:heath_birch_wood"},
	}
})

doors.register("naturalbiomes_birch_door", {
    tiles = {{ name = "naturalbiomes_birch_door.png", backface_culling = true }},
    description = S"Birch Door",
    inventory_image = "naturalbiomes_item_birch_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:heath_birch_wood", "naturalbiomes:heath_birch_wood"},
		{"naturalbiomes:heath_birch_trunk", "naturalbiomes:heath_birch_trunk"},
		{"naturalbiomes:heath_birch_wood", "naturalbiomes:heath_birch_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:coconut_trapdoor", {
	description = S"Coconut Trapdoor",
	inventory_image = "naturalbiomes_cocopalm_trapdoor.png",
	wield_image = "naturalbiomes_cocopalm_trapdoor.png",
	tile_front = "naturalbiomes_cocopalm_trapdoor.png",
	tile_side = "naturalbiomes_cocopalm_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:coconut_trapdoor 2",
	recipe = {
		{"naturalbiomes:palm_wood", "naturalbiomes:palm_wood", "naturalbiomes:palm_wood"},
		{"naturalbiomes:palm_wood", "naturalbiomes:palm_trunk", "naturalbiomes:palm_wood"},
	}
})

doors.register("naturalbiomes_coconut_door", {
    tiles = {{ name = "naturalbiomes_cocopalm_door.png", backface_culling = true }},
    description = S"Coconut Door",
    inventory_image = "naturalbiomes_item_cocopalm_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:palm_wood", "naturalbiomes:palm_wood"},
		{"naturalbiomes:palm_trunk", "naturalbiomes:palm_trunk"},
		{"naturalbiomes:palm_wood", "naturalbiomes:palm_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:juniper_trapdoor", {
	description = S"Juniper Trapdoor",
	inventory_image = "naturalbiomes_juniper_trapdoor.png",
	wield_image = "naturalbiomes_juniper_trapdoor.png",
	tile_front = "naturalbiomes_juniper_trapdoor.png",
	tile_side = "naturalbiomes_juniper_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:juniper_trapdoor 2",
	recipe = {
		{"naturalbiomes:heath_juniper_wood", "naturalbiomes:heath_juniper_wood", "naturalbiomes:heath_juniper_wood"},
		{"naturalbiomes:heath_juniper_wood", "naturalbiomes:heath_juniper_trunk", "naturalbiomes:heath_juniper_wood"},
	}
})

doors.register("naturalbiomes_juniper_door", {
    tiles = {{ name = "naturalbiomes_juniper_door.png", backface_culling = true }},
    description = S"Juniper Door",
    inventory_image = "naturalbiomes_item_juniper_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:heath_juniper_wood", "naturalbiomes:heath_juniper_wood"},
		{"naturalbiomes:heath_juniper_trunk", "naturalbiomes:heath_juniper_trunk"},
		{"naturalbiomes:heath_juniper_wood", "naturalbiomes:heath_juniper_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:medpine_trapdoor", {
	description = S"Mediterranean Pine Trapdoor",
	inventory_image = "naturalbiomes_medpine_trapdoor.png",
	wield_image = "naturalbiomes_medpine_trapdoor.png",
	tile_front = "naturalbiomes_medpine_trapdoor.png",
	tile_side = "naturalbiomes_medpine_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:medpine_trapdoor 2",
	recipe = {
		{"naturalbiomes:pine_wood", "naturalbiomes:pine_wood", "naturalbiomes:pine_wood"},
		{"naturalbiomes:pine_wood", "naturalbiomes:pine_trunk", "naturalbiomes:pine_wood"},
	}
})

doors.register("naturalbiomes_medpine_door", {
    tiles = {{ name = "naturalbiomes_medpine_door.png", backface_culling = true }},
    description = S"Mediterranean Pine Door",
    inventory_image = "naturalbiomes_item_medpine_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:pine_wood", "naturalbiomes:pine_wood"},
		{"naturalbiomes:pine_trunk", "naturalbiomes:pine_trunk"},
		{"naturalbiomes:pine_wood", "naturalbiomes:pine_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:olive_trapdoor", {
	description = S"Olive Trapdoor",
	inventory_image = "naturalbiomes_olive_trapdoor.png",
	wield_image = "naturalbiomes_olive_trapdoor.png",
	tile_front = "naturalbiomes_olive_trapdoor.png",
	tile_side = "naturalbiomes_olive_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:olive_trapdoor 2",
	recipe = {
		{"naturalbiomes:olive_wood", "naturalbiomes:olive_wood", "naturalbiomes:olive_wood"},
		{"naturalbiomes:olive_wood", "naturalbiomes:olive_trunk", "naturalbiomes:olive_wood"},
	}
})

doors.register("naturalbiomes_olive_door", {
    tiles = {{ name = "naturalbiomes_olive_door.png", backface_culling = true }},
    description = S"Olive Door",
    inventory_image = "naturalbiomes_item_olive_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:olive_wood", "naturalbiomes:olive_wood"},
		{"naturalbiomes:olive_trunk", "naturalbiomes:olive_trunk"},
		{"naturalbiomes:olive_wood", "naturalbiomes:olive_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:eucalyptus_trapdoor", {
	description = S"Eucalyptus Trapdoor",
	inventory_image = "naturalbiomes_outback_trapdoor.png",
	wield_image = "naturalbiomes_outback_trapdoor.png",
	tile_front = "naturalbiomes_outback_trapdoor.png",
	tile_side = "naturalbiomes_outback_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:eucalyptus_trapdoor 2",
	recipe = {
		{"naturalbiomes:outback_wood", "naturalbiomes:outback_wood", "naturalbiomes:outback_wood"},
		{"naturalbiomes:outback_wood", "naturalbiomes:outback_trunk", "naturalbiomes:outback_wood"},
	}
})

doors.register("naturalbiomes_eucalyptus_door", {
    tiles = {{ name = "naturalbiomes_outback_door.png", backface_culling = true }},
    description = S"Eucalyptus Door",
    inventory_image = "naturalbiomes_item_outback_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:outback_wood", "naturalbiomes:outback_wood"},
		{"naturalbiomes:outback_trunk", "naturalbiomes:outback_trunk"},
		{"naturalbiomes:outback_wood", "naturalbiomes:outback_wood"},
	} 
})

doors.register_trapdoor("naturalbiomes:willow_trapdoor", {
	description = S"Willow Trapdoor",
	inventory_image = "naturalbiomes_willow_trapdoor.png",
	wield_image = "naturalbiomes_willow_trapdoor.png",
	tile_front = "naturalbiomes_willow_trapdoor.png",
	tile_side = "naturalbiomes_willow_trapdoor_side.png",
    groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
	gain_open = 0.06,
	gain_close = 0.13,

})

minetest.register_craft({
	output = "naturalbiomes:willow_trapdoor 2",
	recipe = {
		{"naturalbiomes:heath_willow_wood", "naturalbiomes:heath_willow_wood", "naturalbiomes:heath_willow_wood"},
		{"naturalbiomes:heath_willow_wood", "naturalbiomes:heath_willow_trunk", "naturalbiomes:heath_willow_wood"},
	}
})

doors.register("naturalbiomes_willow_door", {
    tiles = {{ name = "naturalbiomes_willow_door.png", backface_culling = true }},
    description = S"Willow Door",
    inventory_image = "naturalbiomes_item_willow_door.png",
    groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
    gain_open = 0.06,
    gain_close = 0.13,
	recipe = {
		{"naturalbiomes:heath_willow_wood", "naturalbiomes:heath_willow_wood"},
		{"naturalbiomes:heath_willow_trunk", "naturalbiomes:heath_willow_trunk"},
		{"naturalbiomes:heath_willow_wood", "naturalbiomes:heath_willow_wood"},
	} 
})