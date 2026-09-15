$execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"title"} run title @s title [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
$execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"actionbar"} run title @s actionbar [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
$execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"chat"} run tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"gray","italic":false,"text":"Entered Village: "},$(CustomName)]

playsound minecraft:entity.villager.work_cartographer neutral @s ~ ~ ~ .75 1

execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"title"} unless entity @s[tag=mob_manager.village.letterbox.active] run function mob_manager:village/effect/letterbox_start

tag @s add at_village
tag @s remove not_at_village