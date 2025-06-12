schedule function mob_manager:locator_bar/init 15s

execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} as @e[type=!#eden:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run function mob_manager:locator_bar/default_icons with entity @s data.mob_manager.locator_bar
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} as @e[type=!#eden:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude] run function mob_manager:locator_bar/resource_icons with entity @s data.mob_manager.locator_bar

execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} as @e[type=armor_stand,tag=mob_manager.village.name] run function mob_manager:locator_bar/default_icons with entity @s data.mob_manager.locator_bar
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} as @e[type=armor_stand,tag=mob_manager.village.name] run function mob_manager:locator_bar/resource_icons with entity @s data.mob_manager.locator_bar
