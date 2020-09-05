/obj/item/stack/material/withstand_psi_stress(stress, atom/source)
	. = ..(stress, source)
	if(amount > 0 && . > 0 && disrupts_psionics())
		if(. > amount)
			use(amount)
			. -= amount
		else
			use(stress)
			. = 0

/obj/item/stack/material/disrupts_psionics()
	return (material && material.is_psi_null()) ? src : FALSE

/obj/item/stack/material/nullglass
	name = "nullglass"
	icon_state = "sheet-shiny"
	singular_name = "nullglass piece"
	default_type = MATERIAL_NULLGLASS
	color = COLOR_NULLGLASS

/obj/item/stack/material/nullglass/random
	rand_min = 3
	rand_max = 30
