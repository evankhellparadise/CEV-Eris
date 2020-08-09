/obj/screen/psi
	icon = 'icons/mob/screen_psi.dmi'
	var/mob/living/owner
	var/hidden = TRUE

/obj/screen/psi/New(mob/living/_owner)
	loc = null
	owner = _owner
	update_icon()

/obj/screen/psi/Destroy()
	if(owner && owner.client)
		owner.client.screen -= src
	. = ..()

/obj/screen/psi/on_update_icon()
	if(hidden)
		invisibility = 101
	else
		invisibility = 0