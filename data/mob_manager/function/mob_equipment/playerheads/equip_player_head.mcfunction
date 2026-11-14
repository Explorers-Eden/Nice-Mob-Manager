$data modify entity @s equipment.head set value {id:"minecraft:player_head",count:1,components:{profile:{name:"$(name)",properties:$(properties),id:$(id)}}}
$data modify entity @s CustomName set value "$(name)"

data modify entity @s drop_chances.head set from storage eden:settings mob_manager.mob_equipment.misc.playerheads_drop