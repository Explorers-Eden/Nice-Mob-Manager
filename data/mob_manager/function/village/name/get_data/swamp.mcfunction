data modify storage eden:temp village.swamp.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.swamp.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.swamp.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.swamp.id int 1 run random value 1..100
$data modify storage eden:temp village.swamp.name set from storage eden:database village.swamp.name.$(id)

data modify storage eden:temp village.swamp.color set from storage eden:database color.villager.swamp
data modify storage eden:temp village.swamp.waypoint_range set from storage eden:settings mob_manager.villager_settings.locator_range
data modify storage eden:temp village.swamp.waypoint_color set from storage eden:settings mob_manager.villager_settings.locator_color

function mob_manager:village/name/set_name with storage eden:temp village.swamp

tag @s add mob_manager.settings.villagename.applied