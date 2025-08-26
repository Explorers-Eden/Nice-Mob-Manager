schedule function mob_manager:init 7t

execute as @e[type=!#mob_manager:invalid_for_settings,tag=!mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run function mob_manager:get_type

execute as @e[type=#mob_manager:can_drown,tag=mob_manager.settings.drown.disabled,tag=!mob_manager.settings.exclude] run data modify entity @s Air set value 300s
execute as @e[type=#mob_manager:can_breed,tag=mob_manager.settings.breed.disabled,tag=!mob_manager.settings.exclude] run function mob_manager:disable_breeding
execute if data storage eden:settings mob_manager.misc{egglay:"disabled"} as @e[type=minecraft:chicken,tag=!mob_manager.settings.exclude] run data modify entity @s EggLayTime set value 6500
execute if data storage eden:settings mob_manager.misc{rabbitcarrot:"disabled"} as @e[type=minecraft:rabbit,tag=!mob_manager.settings.exclude] run data modify entity @s MoreCarrotTicks set value 6500
execute if data storage eden:settings mob_manager.misc{snifferbrain:"disabled"} as @e[type=minecraft:sniffer,tag=!mob_manager.settings.exclude] run data remove entity @s Brain.memories.minecraft:sniffer_explored_positions
execute if data storage eden:settings mob_manager.villager{restock:"enabled"} as @e[type=minecraft:villager,tag=!mob_manager.settings.exclude] run data modify entity @s RestocksToday set value 0
execute if data storage eden:settings mob_manager.villager{gossip:"disabled"} as @e[type=minecraft:villager,tag=!mob_manager.settings.exclude] run data modify entity @s Gossips set value []