data modify storage eden:temp village.taiga.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.taiga.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.taiga.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.taiga.id int 1 run random value 1..100
$data modify storage eden:temp village.taiga.name set from storage eden:database village.taiga.name.$(id)

data modify storage eden:temp village.taiga.color set from storage eden:database color.villager.taiga
data modify storage eden:temp village.taiga.waypoint_range set from storage eden:settings mob_manager.villager_settings.locator_range
data modify storage eden:temp village.taiga.waypoint_color set from storage eden:settings mob_manager.villager_settings.locator_color

function mob_manager:village/name/set_name with storage eden:temp village.taiga

tag @s add mob_manager.settings.villagename.applied