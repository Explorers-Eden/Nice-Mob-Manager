schedule function mob_manager:init 7t


execute as @e[type=!#eden:invalid_for_settings,tag=!eden.settings.applied] run function mob_manager:get_type

execute as @e[type=#eden:can_drown,tag=eden.settings.drown.disabled] run data modify entity @s Air set value 300s
execute as @e[type=#eden:can_breed,tag=eden.settings.breed.disabled] run function mob_manager:disable_breeding
execute if data storage eden:settings mob_manager.misc{egglay:"disabled"} as @e[type=minecraft:chicken] run data modify entity @s EggLayTime set value 6500
execute if data storage eden:settings mob_manager.misc{snifferbrain:"disabled"} as @e[type=minecraft:sniffer] run data remove entity @s Brain.memories.minecraft:sniffer_explored_positions