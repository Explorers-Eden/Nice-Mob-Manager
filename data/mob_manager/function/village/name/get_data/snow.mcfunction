data modify storage eden:temp village.snow.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.snow.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.snow.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

execute store result storage eden:temp village.snow.id int 1 run random value 1..100
$data modify storage eden:temp village.snow.name set from storage eden:database names.village.snow.name.$(id)

data modify storage eden:temp village.snow.color set from storage eden:database color.villager.snow
data modify storage eden:temp village.snow.waypoint_range set from storage eden:settings mob_manager.villager_settings.locator_range
data modify storage eden:temp village.snow.waypoint_color set from storage eden:settings mob_manager.villager_settings.locator_color

function mob_manager:village/name/set_name with storage eden:temp village.snow

tag @s add mob_manager.settings.villagename.applied