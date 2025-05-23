schedule function mob_settings:baby_nametag 10s

tag @e[type=#eden:valid_for_keep_baby,nbt={CustomName:'"Baby"'},tag=!eden.perma.baby.nametag] add eden.perma.baby
tag @e[type=#eden:valid_for_keep_baby,nbt={CustomName:'"baby"'},tag=!eden.perma.baby.nametag] add eden.perma.baby

execute as @e[type=#eden:valid_for_keep_baby,tag=eden.perma.baby] run data modify entity @s Age set value -999999999
execute as @e[type=#eden:valid_for_keep_baby,tag=eden.perma.baby.nametag] run data modify entity @s Age set value -999999999