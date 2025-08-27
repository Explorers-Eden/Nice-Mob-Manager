##Trader Team settings
team add wandering_trader "Wandering Trader"
team modify wandering_trader color blue

##default technical scoreboard
scoreboard objectives add mob_manager.technical dummy

##additional scoreboards
scoreboard objectives remove mob_manager.rarity_mobs.common.timer
scoreboard objectives remove mob_manager.rarity_mobs.rare.timer
scoreboard objectives remove mob_manager.rarity_mobs.legendary.timer
scoreboard objectives remove mob_manager.rarity_mobs.mythic.timer
scoreboard objectives add mob_manager.rarity_mobs.common.timer dummy
scoreboard objectives add mob_manager.rarity_mobs.rare.timer dummy
scoreboard objectives add mob_manager.rarity_mobs.legendary.timer dummy
scoreboard objectives add mob_manager.rarity_mobs.mythic.timer dummy
scoreboard objectives add mob_manager.playerhead.id dummy
scoreboard objectives add mob_manager.playerhead.update minecraft.custom:minecraft.leave_game
scoreboard objectives add mob_manager.used.bell minecraft.custom:minecraft.bell_ring

##apply default values on first load
execute unless data storage eden:settings mob_manager.misc run function mob_manager:default_values
data modify storage eden:database names.village set from storage eden:database village

##set data pack version
data modify storage eden:datapack nice_mob_manager.version set value "1.9"