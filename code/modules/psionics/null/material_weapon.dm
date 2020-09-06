/obj/item/weapon/material/disrupts_psionics()
	return (material && material.is_psi_null()) ? src : FALSE

/obj/item/weapon/material/withstand_psi_stress(stress, atom/source)
	. = ..(stress, source)
	if(health >= 0 && . > 0 && disrupts_psionics())
		visible_message(SPAN_WARNING("the psy powers shakes [src]"))
		health -= .
		. = max(0, -(health))
		check_health(consumed = TRUE)

/obj/item/weapon/material/shard/nullglass/New(newloc)
	..(newloc, MATERIAL_NULLGLASS)

/obj/item/weapon/material/shard/shrapnel/nullglass/New(newloc)
	..(newloc, MATERIAL_NULLGLASS)
