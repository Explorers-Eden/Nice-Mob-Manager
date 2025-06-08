schedule function mob_manager:village/init 1s

#get data and spawn armor stand at meeting point
execute if data storage eden:settings mob_manager.villager_settings{villagename:"enabled"} as @e[type=villager,tag=!mob_manager.settings.exclude,tag=!mob_manager.settings.villagename.applied] at @s if data entity @s Brain.memories.minecraft:meeting_point.value run function mob_manager:village/name/init

#summon texyt display at meeting point if possible
execute as @e[type=armor_stand,tag=mob_manager.village.name] at @s run function mob_manager:village/name/set_display with entity @s

#kill armor stand & text displays at meeting points
execute as @e[type=armor_stand,tag=mob_manager.village.name] if data storage eden:settings mob_manager.villager_settings{villagename:"disabled"} run kill @s
execute as @e[type=text_display,tag=mob_manager.village.name] at @s unless entity @e[type=armor_stand,tag=mob_manager.village.name,distance=..1.5] run kill @s
execute as @e[type=text_display,tag=mob_manager.village.name] at @s unless block ~ ~ ~ #minecraft:air run kill @s
execute as @e[type=armor_stand,tag=mob_manager.village.name] at @s unless block ~ ~ ~ minecraft:bell run kill @s

#remove tag if meeting point is lost
execute as @e[type=villager,tag=!mob_manager.settings.exclude,tag=mob_manager.settings.villagename.applied] unless data entity @s Brain.memories.minecraft:meeting_point.value run tag @s remove mob_manager.settings.villagename.applied
execute as @e[type=villager,tag=!mob_manager.settings.exclude,tag=mob_manager.settings.villagename.applied] at @s unless entity @e[type=armor_stand,tag=mob_manager.village.name,distance=..128] run tag @s remove mob_manager.settings.villagename.applied

#heal villagers when enabled and near meeting point
execute if data storage eden:settings mob_manager.villager_settings{villagecenter_healing:"enabled"} run function mob_manager:village/healing with storage eden:settings mob_manager.villager_settings

#bell particles
execute as @e[type=armor_stand,tag=mob_manager.village.name] at @s run particle minecraft:wax_on ~ ~.5 ~ .4 .3 .4 .5 1

#rename triggers
execute if data storage eden:settings mob_manager.villager_settings{villagename_rename:"enabled"} as @a[scores={mob_manager.used.bell=1..}] at @s if items entity @s weapon.mainhand minecraft:name_tag run function mob_manager:village/rename/check_hand
scoreboard players set @a[scores={mob_manager.used.bell=1..}] mob_manager.used.bell 0