schedule function mob_settings:init 7t


execute as @e[type=!#eden:invalid_for_settings,tag=!eden.settings.applied] run function mob_settings:get_type

execute as @e[type=#eden:can_drown,tag=eden.settings.drown.disabled] run data modify entity @s Air set value 300s
execute as @e[type=#eden:can_breed,tag=eden.settings.breed.disabled] run function mob_settings:disable_breeding
execute if data storage eden:settings mob_settings.misc{egglay:"disabled"} as @e[type=minecraft:chicken] run data modify entity @s EggLayTime set value 6500