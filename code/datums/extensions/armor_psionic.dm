/datum/extension/psionic_armor
	expected_type = /datum/psi_complexus

/datum/extension/psionic_armor/proc/get_value(key)
	var/datum/psi_complexus/psi = holder
	psi.get_armour(key)

/datum/extension/psionic_armor/proc/on_blocking(damage, damage_type, damage_flags, armor_pen, blocked)
	var/datum/psi_complexus/psi = holder
	psi.spend_power(round(damage * blocked))

