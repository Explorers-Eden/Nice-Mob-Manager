$data remove storage eden:database playerheads.$(id)

$loot spawn ~ -64 ~ loot {"type":"minecraft:entity","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:player_head","functions":[{"function":"minecraft:fill_player_head","entity":"this"},{"function":"minecraft:set_components","components":{"minecraft:custom_data":"{mob_manager:playerheads_$(id)}"}}]}]}]}
$data modify storage eden:database playerheads.$(id) set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{mob_manager:playerheads_$(id)}}}}] Item.components.minecraft:profile

$kill @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{mob_manager:playerheads_$(id)}}}}]