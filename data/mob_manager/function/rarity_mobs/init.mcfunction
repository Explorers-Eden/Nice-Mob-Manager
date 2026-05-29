schedule function mob_manager:rarity_mobs/init 1s

execute as @e[type=!#mob_manager:invalid_for_settings,tag=!mob_manager.rarity_mobs.applied,tag=!mob_manager.settings.exclude] run function mob_manager:rarity_mobs/assign