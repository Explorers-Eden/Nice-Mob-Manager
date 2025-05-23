schedule function mob_settings:init 7t


execute as @e[type=!#eden:invalid_for_settings,tag=!eden.settings.applied] run function mob_settings:get_type

execute as @e[type=#eden:can_drown,tag=eden.settings.drown.disabled] run data modify entity @s Air set value 300s
execute as @e[type=#eden:can_breed,tag=eden.settings.breed.disabled] run function mob_settings:disable_breeding
execute if data storage eden:settings mob_settings.misc{egglay:"disabled"} as @e[type=minecraft:chicken] run data modify entity @s EggLayTime set value 6500
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.babymountspawning"},"range":{"min":0.01}} as @e[type=#eden:valid_for_baby_mount,tag=!eden.baby_mount.set] at @s run function mob_settings:baby_mount/init with storage eden:settings mob_settings.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.jebspawning"},"range":{"min":0.01}} as @e[type=sheep,tag=!eden.jebbed] run function mob_settings:jeb_sheep/set_name with storage eden:settings mob_settings.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.killerrabbitspawning"},"range":{"min":0.01}} as @e[type=rabbit,tag=!eden.killer_rabbit] run function mob_settings:killer_rabbit with storage eden:settings mob_settings.misc