$execute store result storage eden:temp mob_settings.slime.scale float 0.01 run random value $(scale_min)..$(scale_max)
$execute store result storage eden:temp mob_settings.slime.health float $(health) run attribute @s minecraft:max_health base get
$execute store result storage eden:temp mob_settings.slime.tempt_range float $(tempt_range) run attribute @s minecraft:tempt_range base get
$execute store result storage eden:temp mob_settings.slime.follow_range float $(follow_range) run attribute @s minecraft:follow_range base get
$execute store result storage eden:temp mob_settings.slime.move_speed float $(move_speed) run attribute @s minecraft:movement_speed base get
$execute store result storage eden:temp mob_settings.slime.safe_fall float $(safe_fall) run attribute @s minecraft:safe_fall_distance base get
$execute store result storage eden:temp mob_settings.slime.attck_dmg float $(attck_dmg) run attribute @s minecraft:attack_damage base get
$execute store result storage eden:temp mob_settings.slime.attck_speed float $(attck_speed) run attribute @s minecraft:attack_speed base get

execute if data storage eden:settings mob_settings.slime{drown:"disabled"} run tag @s add eden.settings.drown.disabled
execute if data storage eden:settings mob_settings.slime{burn:"disabled"} run attribute @s minecraft:burning_time base set 0

function mob_settings:apply/hostile_mobs/exec with storage eden:temp mob_settings.slime