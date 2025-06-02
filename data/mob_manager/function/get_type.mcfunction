execute as @s[tag=nice_mobs.base] run return run tag @s add eden.settings.applied

execute as @s[type=#eden:passive_mobs] run function mob_manager:apply/passive_mobs/init
execute as @s[type=#eden:neutral_mobs] run function mob_manager:apply/neutral_mobs/init
execute as @s[type=#eden:hostile_mobs] run function mob_manager:apply/hostile_mobs/init

tag @s add eden.settings.applied