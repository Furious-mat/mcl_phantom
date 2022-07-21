local S = minetest.get_translator(minetest.get_current_modname())

--###################
--################### PHANTOM
--###################

mcl_mobs:register_mob("mcl_phantom:phantom", {
	description = S("Phantom"),
	type = "monster",
	spawn_class = "hostile",
	hostile = true,
	pathfinding = 1,
	walk_chance = 100,
	rotate = 270,
	hp_min = 20,
	hp_max = 20,
	xp_min = 10,
	xp_max = 10,
	protect = false,
	neutral = false,
	breath_max = -1,
	collisionbox = {-0.25, -0.01, -0.25, 0.25, 0.89, 0.25},
	visual = "mesh",
	mesh = "mcl_phantom_phantom.b3d",
	textures = {
		{"mcl_phantom_phantom.png"},
	},
	visual_size = {x=3, y=3},
	sounds = {
		random = "mobs_eerie",
		death = "mobs_mc_wither_spawn",
		damage = "mobs_mc_vex_hurt",
		distance = 16,
	},
	view_range = 30,
	floats = 0,
	walk_velocity = 0.6,
	run_velocity = 5,
	specific_attack = { "player", "mobs_mc:iron_golem" },
	-- Approximation
	damage = 12,
	reach = 2,
	ignited_by_sunlight = true,
	fall_damage = 0,
	sunlight_damage = 0.5,
	view_range = 30,
	attack_type = "dogfight",
	punch_timer_cooloff = 0.5,
	harmed_by_heal = true,
	fly = true,
	drops = {
		{name = "mcl_phantom:phantom_membrane",
		chance = 1,
		min = 0,
		max = 1,},
	},
	fall_damage = 0,
	animation = {
		fly_speed = 8, stand_speed = 8,
		stand_start = 0,		stand_end = 20,
		walk_start = 0,		walk_end = 20,
		run_start = 0,		run_end = 20,
	},
	jump = true,
	jump_height = 14,
})

-- Spawning

mcl_mobs:spawn_specific(
"mcl_phantom:phantom",
"overworld",
"ground",
{
"FlowerForest_underground",
"JungleEdge_underground",
"StoneBeach_underground",
"MesaBryce_underground",
"Mesa_underground",
"RoofedForest_underground",
"Jungle_underground",
"Swampland_underground",
"MushroomIsland_underground",
"BirchForest_underground",
"Plains_underground",
"MesaPlateauF_underground",
"ExtremeHills_underground",
"MegaSpruceTaiga_underground",
"BirchForestM_underground",
"SavannaM_underground",
"MesaPlateauFM_underground",
"Desert_underground",
"Savanna_underground",
"Forest_underground",
"SunflowerPlains_underground",
"ColdTaiga_underground",
"IcePlains_underground",
"IcePlainsSpikes_underground",
"MegaTaiga_underground",
"Taiga_underground",
"ExtremeHills+_underground",
"JungleM_underground",
"ExtremeHillsM_underground",
"JungleEdgeM_underground",
"Mesa",
"FlowerForest",
"Swampland",
"Taiga",
"ExtremeHills",
"Jungle",
"Savanna",
"BirchForest",
"MegaSpruceTaiga",
"MegaTaiga",
"ExtremeHills+",
"Forest",
"Plains",
"Desert",
"ColdTaiga",
"MushroomIsland",
"IcePlainsSpikes",
"SunflowerPlains",
"IcePlains",
"RoofedForest",
"ExtremeHills+_snowtop",
"MesaPlateauFM_grasstop",
"JungleEdgeM",
"ExtremeHillsM",
"JungleM",
"BirchForestM",
"MesaPlateauF",
"MesaPlateauFM",
"MesaPlateauF_grasstop",
"MesaBryce",
"JungleEdge",
"SavannaM",
"FlowerForest_beach",
"Forest_beach",
"StoneBeach",
"ColdTaiga_beach_water",
"Taiga_beach",
"Savanna_beach",
"Plains_beach",
"ExtremeHills_beach",
"ColdTaiga_beach",
"Swampland_shore",
"MushroomIslandShore",
"JungleM_shore",
"Jungle_shore",
"MesaPlateauFM_sandlevel",
"MesaPlateauF_sandlevel",
"MesaBryce_sandlevel",
"Mesa_sandlevel",
},
0,
7,
30,
17000,
2,
mcl_vars.mg_overworld_min,
mcl_vars.mg_overworld_max)

-- spawn eggs
mcl_mobs:register_egg("mcl_phantom:phantom", S("Phantom"), "mobs_mc_spawn_icon_dragon.png", 0)

minetest.register_craftitem("mcl_phantom:phantom_membrane",{
	description = S("Phantom Membrane"),
	_doc_items_longdesc = S("Phantom Membrane"),
	inventory_image = "mcl_phantom_phantom_membrane.png",
	stack_max = 64,
	groups = { craftitem = 1 },
})
