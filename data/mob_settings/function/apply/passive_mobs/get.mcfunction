$execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_settings.scale float 0.01 run random value $(scale_min)..$(scale_max)
$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.$(type).scale_min"},"range":{"min":$(scale_max)}} run data modify storage eden:temp mob_settings.scale set value $(scale_max)
$execute store result storage eden:temp mob_settings.health float 0.01 run attribute @s minecraft:max_health base get $(health)
$execute store result storage eden:temp mob_settings.tempt_range float 0.01 run attribute @s minecraft:tempt_range base get $(tempt_range)
$execute store result storage eden:temp mob_settings.follow_range float 0.01 run attribute @s minecraft:follow_range base get $(follow_range)
$execute store result storage eden:temp mob_settings.move_speed float 0.01 run attribute @s minecraft:movement_speed base get $(move_speed)
$execute store result storage eden:temp mob_settings.fly_speed float 0.01 run attribute @s minecraft:flying_speed base get $(move_speed)
$execute store result storage eden:temp mob_settings.safe_fall float 0.01 run attribute @s minecraft:safe_fall_distance base get $(safe_fall)

$execute if data storage eden:settings mob_settings.$(type){breed:"disabled"} run tag @s add eden.settings.breed.disabled
$execute if data storage eden:settings mob_settings.$(type){drown:"disabled"} run tag @s add eden.settings.drown.disabled
$execute if data storage eden:settings mob_settings.$(type){silent:"enabled"} run data modify entity @s Silent set value 1b
$execute if data storage eden:settings mob_settings.$(type){burn:"disabled"} run attribute @s minecraft:burning_time base set 0
$execute if data storage eden:settings mob_settings.$(type){pickup:"disabled"} run data modify entity @s CanPickUpLoot set value 0b

$attribute @s minecraft:waypoint_transmit_range base set $(locator_range)
$waypoint modify @s color hex $(locator_color)

execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.jebspawning"},"range":{"min":0.01}} as @s[type=sheep] run function mob_settings:jeb_sheep/set_name with storage eden:settings mob_settings.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.brownmoospawning"},"range":{"min":0.01}} as @s[type=mooshroom] run function mob_settings:brown_mooshroom with storage eden:settings mob_settings.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.babymountspawning"},"range":{"min":0.01}} as @s[type=#eden:valid_for_baby_mount] at @s run function mob_settings:baby_mount/init with storage eden:settings mob_settings.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_settings.misc.killerrabbitspawning"},"range":{"min":0.01}} as @s[type=rabbit] run function mob_settings:killer_rabbit with storage eden:settings mob_settings.misc
execute if data storage eden:settings mob_settings.misc{skeletonhorsetrap:"disabled"} as @s[type=minecraft:skeleton_horse] run data modify entity @s SkeletonTrap set value 0b

function mob_settings:apply/passive_mobs/exec with storage eden:temp mob_settings