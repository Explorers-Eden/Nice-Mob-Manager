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
scoreboard objectives add mob_manager.follow.px dummy
scoreboard objectives add mob_manager.follow.py dummy
scoreboard objectives add mob_manager.follow.pz dummy
scoreboard objectives add mob_manager.follow.dx dummy
scoreboard objectives add mob_manager.follow.dy dummy
scoreboard objectives add mob_manager.follow.dz dummy
scoreboard objectives add mob_manager.follow.ex dummy
scoreboard objectives add mob_manager.follow.ey dummy
scoreboard objectives add mob_manager.follow.ez dummy
scoreboard objectives add mob_manager.follow.dx2 dummy
scoreboard objectives add mob_manager.follow.dy2 dummy
scoreboard objectives add mob_manager.follow.dz2 dummy
scoreboard objectives add mob_manager.follow.len2 dummy
scoreboard objectives add mob_manager.follow.motionX dummy
scoreboard objectives add mob_manager.follow.motionZ dummy

##apply default values on first load
execute unless data storage eden:settings mob_manager.sulfur_cube run data modify storage eden:settings mob_manager.sulfur_cube set value {bodyicon:"sulfur_cube_spawn_egg",type:"sulfur_cube",scale_min:100,mobhead:0.25,allow_mob:enabled,allow_mob_initial:false,mobhead_initial:25,locator_color:"64e764",locator_range:8,scale_max:100,health:100,tempt_range:100,follow_range:100,safe_fall:100,move_speed:100,burn:enabled,pickup:enabled,silent:disabled,drown:enabled,breed:enabled,burn_initial:false,pickup_initial:false,silent_initial:true,drown_initial:false,breed_initial:false,command_template:",tempt_range:$(tempt_range),mobhead:$(mobhead),allow_mob:$(allow_mob),locator_color:\'$(locator_color)\',locator_range:$(locator_range),pickup:$(pickup),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),silent:$(silent),drown:$(drown),breed:$(breed)}"}
execute unless data storage eden:settings mob_manager.misc run function mob_manager:default_values

##Update Village Name DB
data modify storage eden:database names.village set from storage eden:database village

##set data pack version
data modify storage eden:datapack nice_mob_manager.version set value "3.2"