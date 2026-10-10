$data modify entity @s data.mob_manager.locator_bar set value {icon:"$(type)",color:"$(locator_color)",range:$(locator_range)}

execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} run waypoint modify @s style set minecraft:default
$execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} run waypoint modify @s color hex $(locator_color)
$execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s style set mob_manager:$(type)
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s color white

$execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} run attribute @s minecraft:waypoint_transmit_range base set $(locator_range)
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"disabled"} run attribute @s minecraft:waypoint_transmit_range base set 0
