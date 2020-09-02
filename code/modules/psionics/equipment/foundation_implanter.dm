/obj/item/weapon/implanter/psi
	name = "psi-null implanter"
	desc = "An implant gun customized to interact with psi dampeners."
	implant = /obj/item/weapon/implant/psi_control
	var/implanter_mode = PSI_IMPLANT_AUTOMATIC

/obj/item/weapon/implanter/psi/attack_self(mob/user)
	var/choice = input("Select a new implant mode.", "Psi Dampener") as null|anything in list(PSI_IMPLANT_AUTOMATIC, PSI_IMPLANT_SHOCK, PSI_IMPLANT_WARN, PSI_IMPLANT_LOG, PSI_IMPLANT_DISABLED)
	if(!choice || user != loc) return
	var/obj/item/weapon/implant/psi_control/imp = implant
	if(!istype(imp))
		to_chat(user, "<span class='warning'>The implanter reports there is no compatible implant loaded.</span>")
		return
	imp.psi_mode = choice
	to_chat(user, "<span class='notice'>You set \the [src] to configure implants with the '[imp.psi_mode]' setting.</span>")
