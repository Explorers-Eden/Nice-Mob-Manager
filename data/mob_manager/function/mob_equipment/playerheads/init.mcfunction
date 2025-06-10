$execute unless predicate {"condition":"minecraft:random_chance","chance":$(playerheads)} run return fail

execute if score $unique_playerhead_id mob_manager.playerhead.id matches 1 store result storage eden:temp mob_manager.head.playerhead.rolled_id int 1 run scoreboard players get $unique_playerhead_id mob_manager.playerhead.id
execute if score $unique_playerhead_id mob_manager.playerhead.id matches 1 store result storage eden:temp mob_manager.head.playerhead.rolled_id int 1 run function mob_manager:mob_equipment/playerheads/get_storage_entry with storage eden:temp mob_manager.head.playerhead

execute if score $unique_playerhead_id mob_manager.playerhead.id matches 2.. store result storage eden:temp mob_manager.head.playerhead.max_id int 1 run scoreboard players get $unique_playerhead_id mob_manager.playerhead.id
execute if score $unique_playerhead_id mob_manager.playerhead.id matches 2.. run function mob_manager:mob_equipment/playerheads/get_random_player with storage eden:temp mob_manager.head.playerhead