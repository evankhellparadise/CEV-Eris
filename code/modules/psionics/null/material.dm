/obj/item/stack/material
	var/is_psionic_nullifier

/obj/item/stack/material/proc/is_psi_null()
	return is_psionic_nullifier

/obj/item/stack/material/nullglass
	is_psionic_nullifier = TRUE

/obj/item/stack/material/nullglass
	name = MATERIAL_NULLGLASS
	icon_colour = COLOR_NULLGLASS
	conductive = 1
	stack_type = /obj/item/stack/material/nullglass
	flags = MATERIAL_BRITTLE
	opacity = 0.5
	integrity = 30
	shard_type = SHARD_SHARD
	tableslam_noise = 'sound/effects/Glasshit.ogg'
	hardness = 80
	weight = 25
	door_icon_base = "stone"
	destruction_desc = "shatters"
	hitsound = 'sound/effects/Glasshit.ogg'

/obj/item/stack/material/nullglass/generate_recipes()
	. = ..()
	. += new /datum/stack_recipe/tile/nullglass(src)
