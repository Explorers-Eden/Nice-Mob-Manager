$execute unless predicate {"condition":"minecraft:random_chance","chance":$(equipchance)} run return fail
$execute unless entity @s[type=#$(validmobs)] run return fail

$execute store result storage eden:settings mob_manager.mob_equipment.$(slot).leathercolor int 1 run random value 0..16777215
$function mob_manager:mob_equipment/get_trim_pattern with storage eden:settings mob_manager.mob_equipment.$(slot)
$function mob_manager:mob_equipment/get_trim_material with storage eden:settings mob_manager.mob_equipment.$(slot)

$loot replace entity @s armor.$(slot) loot $(equiploottable)
$execute unless predicate {"condition":"minecraft:random_chance","chance":$(enchantment)} run item modify entity @s armor.$(slot) mob_manager:enchant_with_levels
$execute if data storage eden:settings mob_manager.mob_equipment.$(slot){rngdmg:"enabled"} run item modify entity @s armor.$(slot) mob_manager:random_damage
$execute if data storage eden:settings mob_manager.mob_equipment.misc{leathercolor:"enabled"} if items entity @s armor.$(slot) #mob_manager:leather_armor run data modify entity @s equipment.$(slot).components."minecraft:dyed_color" set value $(leathercolor)
$execute if data storage eden:settings mob_manager.mob_equipment.misc{trim:"enabled"} run data modify entity @s equipment.$(slot).components."minecraft:trim" set value {material:"minecraft:$(trim_material)",pattern:"minecraft:$(trim_pattern)"}

$data modify entity @s drop_chances.$(slot) set value $(dropchance)F