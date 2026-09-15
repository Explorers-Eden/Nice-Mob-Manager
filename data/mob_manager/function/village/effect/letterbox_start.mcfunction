tag @s add mob_manager.village.letterbox.active
scoreboard players set @s mob_manager.village.letterbox.step 0
schedule function mob_manager:village/effect/letterbox_tick 1t
