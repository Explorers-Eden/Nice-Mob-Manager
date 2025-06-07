data modify storage eden:temp village.savanna.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.savanna.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.savanna.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.savanna.id int 1 run random value 1..100
$data modify storage eden:temp village.savanna.name set from storage eden:database village.savanna.name.$(id)

data modify storage eden:temp village.savanna.color set from storage eden:database color.villager.savanna
data modify storage eden:temp village.savanna.waypoint_range set from storage eden:settings mob_manager.villager_settings.locator_range
data modify storage eden:temp village.savanna.waypoint_color set from storage eden:settings mob_manager.villager_settings.locator_color

function mob_manager:village/name/set_name with storage eden:temp village.savanna

tag @s add mob_manager.settings.villagename.applied