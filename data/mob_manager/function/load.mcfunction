##Trader Team settings
team add wandering_trader "Wandering Trader"
team modify wandering_trader color blue

##default technical scoreboard
scoreboard objectives add eden.technical dummy

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

##v1.7 added options
data modify storage eden:settings mob_manager.mob_equipment.misc merge value {\
    vex_equip:"air",\
    vex_equip_stick_initial:"false",\
    vex_equip_wooden_sword_initial:"false",\
    vex_equip_stone_sword_initial:"false",\
    vex_equip_iron_sword_initial:"false",\
    vex_equip_golden_sword_initial:"false",\
    vex_equip_diamond_sword_initial:"false",\
    vex_equip_netherite_sword_initial:"false",\
    command_template:"function mob_manager:dialog/command_template/mob_equipment/misc {vex_equip:$(vex_equip),leathercolor:$(leathercolor),trim:$(trim),bannershield:$(bannershield),playerheads:$(playerheads),mobheads:$(mobheads)}"\
    }