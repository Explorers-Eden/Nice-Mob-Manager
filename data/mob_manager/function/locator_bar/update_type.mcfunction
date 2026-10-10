scoreboard players set @s mob_manager.locator_bar.checked 1

execute if entity @s[type=cow] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.cow
execute if entity @s[type=drowned] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.drowned
execute if entity @s[type=frog] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.frog
execute if entity @s[type=stray] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.stray
execute if entity @s[type=villager] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.villager
execute if entity @s[type=witch] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.witch
execute if entity @s[type=zoglin] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.zoglin
execute if entity @s[type=zombie] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.zombie
execute if entity @s[type=zombie_villager] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.zombie_villager
execute if entity @s[type=zombified_piglin] run return run function mob_manager:locator_bar/apply_type with storage eden:settings mob_manager.zombified_piglin
