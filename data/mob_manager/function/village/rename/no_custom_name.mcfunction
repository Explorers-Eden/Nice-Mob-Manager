execute at @n[type=armor_stand,tag=mob_manager.village.name,distance=..16] run particle minecraft:happy_villager ~ ~ ~ .4 .4 .4 0.5 10

kill @n[type=armor_stand,tag=mob_manager.village.name,distance=..16]
kill @n[type=text_display,tag=mob_manager.village.name,distance=..16]

tag @n[type=villager,tag=eden.villagename.set,distance=..96] remove eden.villagename.set

execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand eden:used_item