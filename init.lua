
local modname = "naturalbiomes"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("naturalbiomes") or
		dofile(path .. "intllib.lua")


-- biomes

dofile(path .. "wetsavanna.lua") --
dofile(path .. "alderswamp.lua") --
dofile(path .. "alpine.lua") --
dofile(path .. "bambooforest.lua") --
dofile(path .. "palmbeach.lua") --
dofile(path .. "outback.lua") --
dofile(path .. "mediterranean.lua") --
dofile(path .. "crafting.lua") --
dofile(path .. "hunger.lua") --
