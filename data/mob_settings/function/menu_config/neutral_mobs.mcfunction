tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Nice Mob Settings: Neutral Mob settings applied!"}]

$data modify storage eden:temp mob_settings.config.type set value $(type)
$data modify storage eden:settings mob_settings.$(type) set value {attck_dmg:$(attck_dmg),attck_speed:$(attck_speed),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),burn:$(burn),drown:$(drown)}

$execute store result storage eden:settings mob_settings.$(type).health float 0.01 run data get storage eden:settings mob_settings.$(type).health
$execute store result storage eden:settings mob_settings.$(type).tempt_range float 0.01 run data get storage eden:settings mob_settings.$(type).tempt_range
$execute store result storage eden:settings mob_settings.$(type).follow_range float 0.01 run data get storage eden:settings mob_settings.$(type).follow_range
$execute store result storage eden:settings mob_settings.$(type).safe_fall float 0.01 run data get storage eden:settings mob_settings.$(type).safe_fall
$execute store result storage eden:settings mob_settings.$(type).move_speed float 0.01 run data get storage eden:settings mob_settings.$(type).move_speed
$execute store result storage eden:settings mob_settings.$(type).attck_dmg float 0.01 run data get storage eden:settings mob_settings.$(type).attck_dmg
$execute store result storage eden:settings mob_settings.$(type).attck_speed float 0.01 run data get storage eden:settings mob_settings.$(type).attck_speed

execute unless data storage eden:temp mob_settings.config{type:"all_neutral"} run return fail
data modify storage eden:settings mob_settings.bee set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.cave_spider set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.dolphin set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.drowned set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.enderman set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.fox set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.goat set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.iron_golem set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.llama set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.panda set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.piglin set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.polar_bear set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.spider set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.trader_llama set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.wolf set from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.zombified_piglin set from storage eden:settings mob_settings.all_neutral