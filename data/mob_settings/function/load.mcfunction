##default technical scoreboard
scoreboard objectives add eden.technical dummy

##apply default values on first load
execute unless data storage eden:settings mob_settings.misc run function mob_settings:default_values