/mob/living/UnarmedAttack(atom/A, proximity)
	. = ..()
	if(. && psi)
		INVOKE_PSI_POWERS(src, psi.get_melee_powers(SSpsi.faculties_by_intent[a_intent]), A, FALSE)

/mob/living/RangedAttack(atom/A, params)
	if(psi)
		INVOKE_PSI_POWERS(src, psi.get_ranged_powers(SSpsi.faculties_by_intent[a_intent]), A, TRUE)
	. = ..()

/mob/living/proc/check_psi_grab(obj/item/weapon/grab/grab)
	if(psi && ismob(grab.affecting))
		INVOKE_PSI_POWERS(src, psi.get_grab_powers(SSpsi.faculties_by_intent[a_intent]), grab.affecting, FALSE)

/mob/living/attack_empty_hand(bp_hand)
	if(psi)
		INVOKE_PSI_POWERS(src, psi.get_manifestations(), src, FALSE)
	. = ..()

