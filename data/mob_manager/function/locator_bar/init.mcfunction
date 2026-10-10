schedule function mob_manager:locator_bar/init 15s

# Converted mobs keep tags and custom data (old icon) but get a new UUID, so an unset score means "not checked since conversion"
execute as @a at @s run tag @e[type=#mob_manager:convertible,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude,tag=!mob_manager.rarity_mobs.common,tag=!mob_manager.rarity_mobs.rare,tag=!mob_manager.rarity_mobs.legendary,tag=!mob_manager.rarity_mobs.mythic,distance=..48] add mob_manager.locator_bar.near
execute as @e[tag=mob_manager.locator_bar.near] unless score @s mob_manager.locator_bar.checked matches 1 run function mob_manager:locator_bar/update_type
tag @e[tag=mob_manager.locator_bar.near] remove mob_manager.locator_bar.near
