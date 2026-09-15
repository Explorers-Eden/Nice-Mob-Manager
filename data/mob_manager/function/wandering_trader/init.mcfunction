execute as @s[tag=pk.at_vi] run return fail

execute if data storage eden:settings mob_manager.wandering_trader_settings{customname:"enabled"} run function mob_manager:wandering_trader/names/init
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnglow:"enabled"} run function mob_manager:wandering_trader/spawn_glow
execute unless data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"disabled"} at @s run function mob_manager:wandering_trader/spawn_msg

