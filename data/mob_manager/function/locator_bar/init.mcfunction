schedule function mob_manager:locator_bar/init 15s

execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} as @e[type=!#mob_manager:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run function mob_manager:locator_bar/default_icons with entity @s data.mob_manager.locator_bar
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} as @e[type=!#mob_manager:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run function mob_manager:locator_bar/resource_icons with entity @s data.mob_manager.locator_bar

execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} as @e[type=armor_stand,tag=mob_manager.village.name] run function mob_manager:locator_bar/default_icons with entity @s data.mob_manager.locator_bar
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} as @e[type=armor_stand,tag=mob_manager.village.name] run function mob_manager:locator_bar/resource_icons with entity @s data.mob_manager.locator_bar

execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} as @e[type=!#mob_manager:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run function mob_manager:locator_bar/set_range with entity @s data.mob_manager.locator_bar
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"disabled"} as @e[type=!#mob_manager:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run attribute @s minecraft:waypoint_transmit_range base set 0