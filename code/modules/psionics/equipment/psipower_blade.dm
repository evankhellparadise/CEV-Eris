/obj/item/psychic_power/psiblade
	name = "psychokinetic slash"
	force = WEAPON_FORCE_NORMAL
	sharp = TRUE
	edge = TRUE
	maintain_cost = 2
	icon_state = "psiblade_short"
	tool_qualities = list(QUALITY_CUTTING = 30,  QUALITY_WIRE_CUTTING = 20, QUALITY_LASER_CUTTING = 20)


/obj/item/psychic_power/psiblade/master
	force = WEAPON_FORCE_DANGEROUS
	maintain_cost = 3

/obj/item/psychic_power/psiblade/master/grand
	force = WEAPON_FORCE_BRUTAL
	maintain_cost = 4
	icon_state = "psiblade_long"

/obj/item/psychic_power/psiblade/master/grand/paramount // Silly typechecks because rewriting old interaction code is outside of scope.
	force = WEAPON_FORCE_LETHAL
	maintain_cost = 5
	icon_state = "psiblade_long"
