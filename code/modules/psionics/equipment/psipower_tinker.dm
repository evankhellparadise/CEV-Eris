/obj/item/psychic_power/tinker
	name = "psychokinetic crowbar"
	icon_state = "tinker"
	force = 1
	var/emulating = "Crowbar"
	tool_qualities = list(QUALITY_PRYING = 25)

/obj/item/psychic_power/tinker/attack_self()

	if(!owner || loc != owner)
		return
	var/list/choices = list("Crowbar","Wrench","Screwdriver","Wirecutters","Hammer","Shovel","Dismiss")
	var/choice = input("Select a tool to emulate.","Power") as null|anything in choices
	if(!choice)
		return

	if(!owner || loc != owner)
		return

	if(choice == "Dismiss")
		sound_to(owner, 'sound/effects/psi/power_fail.ogg')
		owner.drop_from_inventory(src)
		return

	emulating = choice

	name = "psychokinetic [lowertext(emulating)]"
	to_chat(owner, "<span class='notice'>You begin emulating \a [lowertext(emulating)].</span>")
	sound_to(owner, 'sound/effects/psi/power_fabrication.ogg')
	switch(emulating)
		if("Crowbar")
			tool_qualities = list(QUALITY_PRYING = 25)
		if("Wrench")
			tool_qualities = list(QUALITY_BOLT_TURNING = 30)
		if("Screwdriver")
			tool_qualities = list(QUALITY_SCREW_DRIVING = 30)
		if("Wirecutters")
			tool_qualities = list(QUALITY_WIRE_CUTTING = 30)
		if("Hammer")
			tool_qualities = list(QUALITY_HAMMERING = 20)
		if("Shovel")
			tool_qualities = list(QUALITY_SHOVELING = 30)