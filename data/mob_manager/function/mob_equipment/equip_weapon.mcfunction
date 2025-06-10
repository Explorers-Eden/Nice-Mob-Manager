$execute unless predicate {"condition":"minecraft:random_chance","chance":$(equipchance)} run return fail
$execute unless entity @s[type=#$(validmobs)] run return fail

$loot replace entity @s weapon.$(slot) loot $(equiploottable)
$execute if data storage eden:settings mob_manager.mob_equipment.misc{bannershield:"enabled"} if items entity @s weapon.$(slot) minecraft:shield run function mob_manager:mob_equipment/banner_shields with storage eden:settings mob_manager.mob_equipment.$(slot)
$execute unless predicate {"condition":"minecraft:random_chance","chance":$(enchantment)} run item modify entity @s weapon.$(slot) eden:enchant_with_levels
$execute if data storage eden:settings mob_manager.mob_equipment.$(slot){rngdmg:"enabled"} run item modify entity @s weapon.$(slot) eden:random_damage

$data modify entity @s drop_chances.$(slot) set value $(dropchance)F