# A claim with its own title (Nice Control Center tags the player, or the village name marker, with ncc.claim_title): no village greeting over it.
tag @s remove mob_manager.village.quiet
execute if entity @s[tag=ncc.claim_title] run tag @s add mob_manager.village.quiet
execute if entity @n[type=armor_stand,tag=mob_manager.village.name,tag=ncc.claim_title] run tag @s add mob_manager.village.quiet

$execute unless entity @s[tag=mob_manager.village.quiet] if data storage eden:settings mob_manager.villager_settings{villagename_msg:"title"} run title @s title [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
$execute unless entity @s[tag=mob_manager.village.quiet] if data storage eden:settings mob_manager.villager_settings{villagename_msg:"actionbar"} run title @s actionbar [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
$execute unless entity @s[tag=mob_manager.village.quiet] if data storage eden:settings mob_manager.villager_settings{villagename_msg:"chat"} run tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"gray","italic":false,"text":"Entered Village: "},$(CustomName)]

execute unless entity @s[tag=mob_manager.village.quiet] run playsound minecraft:entity.villager.work_cartographer neutral @s ~ ~ ~ .75 1

execute unless entity @s[tag=mob_manager.village.quiet] if data storage eden:settings mob_manager.villager_settings{villagename_msg:"title"} if data storage eden:settings mob_manager.villager_settings{villagename_effect:"enabled"} unless entity @s[tag=mob_manager.village.letterbox.active] run function mob_manager:village/effect/letterbox_start

tag @s add at_village
tag @s remove not_at_village
tag @s remove mob_manager.village.quiet