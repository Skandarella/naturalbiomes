if minetest.get_modpath("hunger_ng") ~= nil then
	hunger_ng.add_hunger_data('morebiomes:alpine_mushroom', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('morebiomes:olives', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('morebiomes:coconut', {
		satiates = 3.0,
	})

	hunger_ng.add_hunger_data('morebiomes:coconut_slice', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('morebiomes:banana', {
		satiates = 1.0,
	})

	hunger_ng.add_hunger_data('morebiomes:banana_bunch', {
		satiates = 5.0,
	})

end