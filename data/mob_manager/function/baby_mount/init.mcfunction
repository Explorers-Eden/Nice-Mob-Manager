$execute unless predicate {"condition":"minecraft:random_chance","chance":$(babymountspawning)} run return run tag @s add mob_manager.baby_mount.set
execute unless data entity @s {"Age": 0} run return run tag @s add mob_manager.baby_mount.set
execute if data entity @s {variant:"nice_mobs:skeleton"} run return run tag @s add mob_manager.baby_mount.set
execute if data entity @s {variant:"nice_mobs:ender"} run return run tag @s add mob_manager.baby_mount.set
execute if data entity @s {IsChickenJockey:1b} run return run tag @s add mob_manager.baby_mount.set

function mob_manager:baby_mount/get_color
function mob_manager:baby_mount/get_type

execute as @s[type=#eden:has_variant] run data modify storage eden:temp baby_mount.variant set from entity @s variant

execute as @s[type=#eden:has_variant] run return run function mob_manager:baby_mount/exec_w_variant with storage eden:temp baby_mount
execute as @s[type=!#eden:has_variant] run return run function mob_manager:baby_mount/exec_wo_variant with storage eden:temp baby_mount

