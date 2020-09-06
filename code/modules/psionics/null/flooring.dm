/decl/flooring
	var/psi_null = FALSE

/decl/flooring/proc/is_psi_null()
	return psi_null

/decl/flooring/tiling/nullglass
	name = "nullglass plating"
	desc = "You can hear the tiles whispering..."
	icon_base = "nullglass"
	has_damage_range = null
	flags = TURF_HAS_CORNERS | TURF_HAS_INNER_CORNERS | TURF_REMOVE_CROWBAR | TURF_CAN_BURN | TURF_CAN_BREAK | TURF_HIDES_THINGS
	build_type = /obj/item/stack/tile/floor_nullglass
	psi_null = TRUE

/obj/item/stack/tile/floor_nullglass
	name = "nullglass floor tile"
	icon_state = "tile_nullglass"
	color = COLOR_NULLGLASS
	matter = list(MATERIAL_NULLGLASS = 1)

/obj/item/stack/tile/floor_nullglass/disrupts_psionics()
	return src
