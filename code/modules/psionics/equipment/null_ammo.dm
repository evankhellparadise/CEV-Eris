/obj/item/projectile/bullet/nullglass
	name = "nullglass bullet"
	damage_types = list(BRUTE = 40)
	shrapnel_type = /obj/item/weapon/material/shard/shrapnel/nullglass
	disrupts_psionics = TRUE
	base_prob_embed = 30

/obj/item/ammo_casing/magnum/nullglass
	desc = "A revolver bullet casing with a nullglass coating."
	projectile_type = /obj/item/projectile/bullet/nullglass

/obj/item/ammo_casing/magnum/nullglass/disrupts_psionics()
	return src

/obj/item/ammo_magazine/slmagnum/nullglass
	name = "ammunition packet (.40 Magnum nullglass)"
	matter = list(MATERIAL_STEEL = 9, MATERIAL_CARDBOARD = 1, MATERIAL_NULLGLASS = 1)
	ammo_type = /obj/item/ammo_casing/magnum/nullglass
