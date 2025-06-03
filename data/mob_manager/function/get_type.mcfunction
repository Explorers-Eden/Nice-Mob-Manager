execute as @s[tag=nice_mobs.base] run return run tag @s add mob_manager.settings.applied

execute as @s[type=#eden:passive_mobs] run function mob_manager:mob_settings/passive_mobs/init
execute as @s[type=#eden:neutral_mobs] run function mob_manager:mob_settings/neutral_mobs/init
execute as @s[type=#eden:hostile_mobs] run function mob_manager:mob_settings/hostile_mobs/init

tag @s add mob_manager.settings.applied