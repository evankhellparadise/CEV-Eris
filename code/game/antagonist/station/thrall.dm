/datum/antagonist/thrall
	role_text = "Thrall"
	role_text_plural = "Thralls"
	welcome_text = "Your mind is no longer solely your own..."
	id = ROLE_THRALL
	flags = ANTAG_IMPLANT_IMMUNE
	var/mob/living/carbon/controller

/datum/antagonist/thrall/create_objectives(var/survive = FALSE)
	if(!controller)
		return // Someone is playing with buttons they shouldn't be.
	var/datum/objective/obey = new(src)
	obey.explanation_text = "Obey your master, [controller.real_name], in all things."
	.=..()

/datum/antagonist/thrall/create_antagonist(datum/mind/target, datum/faction/new_faction, doequip = TRUE, announce = TRUE, update = TRUE, check = TRUE)
	if(!controller)
		return FALSE // Someone is playing with buttons they shouldn't be.
	.= ..()

/datum/antagonist/thrall/greet()
	. = ..()
	if(controller)
		to_chat(owner.current, SPAN_DANGER("Your will has been subjugated by that of [controller.real_name]. Obey them in all things."))
