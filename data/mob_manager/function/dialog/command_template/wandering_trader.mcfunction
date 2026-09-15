$data modify storage eden:settings mob_manager.wandering_trader_settings merge value {spawnmsg:$(spawnmsg),spawnglow:$(spawnglow),customname:$(customname)}

execute if data storage eden:settings mob_manager.wandering_trader_settings{customname:"enabled"} run data modify storage eden:settings mob_manager.wandering_trader_settings.customname_initial set value "false"
execute unless data storage eden:settings mob_manager.wandering_trader_settings{customname:"enabled"} run data modify storage eden:settings mob_manager.wandering_trader_settings.customname_initial set value "true"

execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnglow:"enabled"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnglow_initial set value "false"
execute unless data storage eden:settings mob_manager.wandering_trader_settings{spawnglow:"enabled"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnglow_initial set value "true"

execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"disabled"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnmsg_chat_initial set value "false"
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"disabled"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnmsg_actionbar_initial set value "false"
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"chat"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnmsg_chat_initial set value "true"
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"chat"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnmsg_actionbar_initial set value "false"
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"actionbar"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnmsg_chat_initial set value "false"
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"actionbar"} run data modify storage eden:settings mob_manager.wandering_trader_settings.spawnmsg_actionbar_initial set value "true"

dialog show @s mob_manager:main