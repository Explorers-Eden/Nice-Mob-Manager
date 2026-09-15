data modify storage eden:temp village_name.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village_name.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village_name.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

$data modify storage eden:temp village_name.name set from storage eden:database names.village.forest.name.$(id)

data modify storage eden:temp village_name.color set from storage eden:database color.village.forest
data modify storage eden:temp village_name.waypoint_range set from storage eden:settings mob_manager.villager_settings.locator_range
data modify storage eden:temp village_name.waypoint_color set from storage eden:settings mob_manager.villager_settings.locator_color

function mob_manager:village/name/set_name with storage eden:temp village_name

tag @s add mob_manager.settings.villagename.applied
