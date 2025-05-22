tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Nice Mob Settings for Neutral Mobs applied!"}]

$data modify storage eden:temp mob_settings.config.type set value $(type)
$data modify storage eden:mob_settings $(type) set value {attck_dmg:$(attck_dmg),attck_speed:$(attck_speed),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),drown:$(drown)}

$execute store result storage eden:mob_settings $(type).health float 0.01 run data get storage eden:mob_settings $(type).health
$execute store result storage eden:mob_settings $(type).tempt_range float 0.01 run data get storage eden:mob_settings $(type).tempt_range
$execute store result storage eden:mob_settings $(type).follow_range float 0.01 run data get storage eden:mob_settings $(type).follow_range
$execute store result storage eden:mob_settings $(type).safe_fall float 0.01 run data get storage eden:mob_settings $(type).safe_fall
$execute store result storage eden:mob_settings $(type).move_speed float 0.01 run data get storage eden:mob_settings $(type).move_speed
$execute store result storage eden:mob_settings $(type).attck_dmg float 0.01 run data get storage eden:mob_settings $(type).attck_dmg
$execute store result storage eden:mob_settings $(type).attck_speed float 0.01 run data get storage eden:mob_settings $(type).attck_speed

execute unless data storage eden:temp mob_settings.config{type:"all_hostile"} run return fail
data modify storage eden:mob_settings blaze set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings bogged set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings breeze set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings creeper set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings elder_guardian set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings endermite set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings evoker set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings ghast set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings guardian set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings hoglin set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings magma_cube set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings phantom set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings piglin_brute set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings pillager set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings ravager set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings shulker set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings silverfish set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings skeleton set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings slime set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings stray set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings vex set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings vindicator set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings warden set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings witch set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings wither_skeleton set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings zoglin set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings zombie set from storage eden:mob_settings all_hostile
data modify storage eden:mob_settings zombie_villager set from storage eden:mob_settings all_hostile