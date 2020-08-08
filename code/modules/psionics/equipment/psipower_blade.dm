/obj/item/psychic_power/psiblade
	name = "psychokinetic slash"
	force = 10
	sharp = TRUE
	edge = TRUE
	maintain_cost = 1
	icon_state = "psiblade_short"
	tool_qualities = list(QUALITY_CUTTING = 30,  QUALITY_WIRE_CUTTING = 20, QUALITY_LASER_CUTTING = 20)


/obj/item/psychic_power/psiblade/master
	force = 20
	maintain_cost = 2
	
/obj/item/psychic_power/psiblade/master/grand
	force = 30
	maintain_cost = 3
	icon_state = "psiblade_long"

/obj/item/psychic_power/psiblade/master/grand/paramount // Silly typechecks because rewriting old interaction code is outside of scope.
	force = 50
	maintain_cost = 4
	icon_state = "psiblade_long"
