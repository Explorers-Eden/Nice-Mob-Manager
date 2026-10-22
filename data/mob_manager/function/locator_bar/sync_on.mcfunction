# Tagged first: a mob without locator bar data (the macro fails) isn't tried again every 15 seconds
tag @s add mob_manager.locator_bar.on
tag @s remove mob_manager.locator_bar.off
function mob_manager:locator_bar/set_range with entity @s data.mob_manager.locator_bar
