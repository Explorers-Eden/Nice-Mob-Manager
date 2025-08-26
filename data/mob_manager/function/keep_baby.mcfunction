schedule function mob_manager:keep_baby 10s

tag @e[type=#mob_manager:valid_for_keep_baby,nbt={CustomName:'"Baby"'},tag=!mob_manager.settings.perma_baby.nametag] add mob_manager.settings.perma_baby.nametag
tag @e[type=#mob_manager:valid_for_keep_baby,nbt={CustomName:'"baby"'},tag=!mob_manager.settings.perma_baby.nametag] add mob_manager.settings.perma_baby.nametag

execute as @e[type=#mob_manager:valid_for_keep_baby,tag=mob_manager.settings.perma_baby] run data modify entity @s Age set value -999999999
execute as @e[type=#mob_manager:valid_for_keep_baby,tag=mob_manager.settings.perma_baby.nametag] run data modify entity @s Age set value -999999999