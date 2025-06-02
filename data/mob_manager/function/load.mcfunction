##default technical scoreboard
scoreboard objectives add eden.technical dummy

##apply default values on first load
execute unless data storage eden:settings mob_manager.misc run function mob_manager:default_values