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
execute unless data storage eden:settings mob_manager.misc run function mob_manager:default_values
data modify storage eden:database names.village set from storage eden:database village

##add new settings
execute unless data storage eden:datapack nice_mob_manager{version:"2.1"} run data modify storage eden:settings mob_manager.copper_golem set value {bodyicon:"copper_golem_spawn_egg",type:"copper_golem",scale_min:80,mobhead:0.25,mobhead_initial:25,locator_color:"64e764",locator_range:8,scale_max:100,health:100,tempt_range:100,follow_range:100,safe_fall:100,move_speed:100,burn:enabled,pickup:enabled,silent:disabled,drown:enabled,breed:enabled,burn_initial:false,pickup_initial:false,silent_initial:true,drown_initial:false,breed_initial:false,command_template:",tempt_range:$(tempt_range),mobhead:$(mobhead),locator_color:\'$(locator_color)\',locator_range:$(locator_range),pickup:$(pickup),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),silent:$(silent),drown:$(drown),breed:$(breed)}"}
execute unless data storage eden:datapack nice_mob_manager{version:"2.1"} run data modify storage eden:settings mob_manager.villager_settings merge value {villager_follow:"enabled",villager_follow_initial:"false",command_template:"function mob_manager:dialog/command_template/villager {villager_follow:$(villager_follow),validmobs:\'$(validmobs)\',locator_color:\'$(locator_color)\',locator_range:$(locator_range),village_heal_distance:$(village_heal_distance),villagecenter_healing:$(villagecenter_healing),villagename_rename:$(villagename_rename),villagename_msg:$(villagename_msg),villagename:$(villagename),talking:$(talking),breeddiversity:$(breeddiversity),gossip:$(gossip),restock:$(restock),customname:$(customname)}"}
execute unless data storage eden:datapack nice_mob_manager{version:"2.2"} run data modify storage eden:settings mob_manager.mob_equipment.misc merge value {vex_equip_copper_sword_initial:"false"}

##set data pack version
data modify storage eden:datapack nice_mob_manager.version set value "2.2"