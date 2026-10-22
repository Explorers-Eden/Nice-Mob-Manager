schedule function mob_manager:locator_bar/init 15s

# Converted mobs keep tags and custom data (old icon) but get a new UUID, so an unset score means "not checked since conversion"
execute as @a at @s run tag @e[type=#mob_manager:convertible,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude,tag=!mob_manager.rarity_mobs.common,tag=!mob_manager.rarity_mobs.rare,tag=!mob_manager.rarity_mobs.legendary,tag=!mob_manager.rarity_mobs.mythic,distance=..48] add mob_manager.locator_bar.near
execute as @e[tag=mob_manager.locator_bar.near] unless score @s mob_manager.locator_bar.checked matches 1 run function mob_manager:locator_bar/update_type
tag @e[tag=mob_manager.locator_bar.near] remove mob_manager.locator_bar.near

# Transmit range: mobs not yet set for the current "mobs on locator bar" setting get it once (old mobs from chunks
# that only load now, or every loaded mob after the setting changed); the tag skips them from then on
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"disabled"} as @e[type=!#mob_manager:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude,tag=!mob_manager.locator_bar.off] run function mob_manager:locator_bar/sync_off
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} as @e[type=!#mob_manager:invalid_for_settings,tag=mob_manager.settings.applied,tag=!mob_manager.settings.exclude,tag=!mob_manager.locator_bar.on] run function mob_manager:locator_bar/sync_on
