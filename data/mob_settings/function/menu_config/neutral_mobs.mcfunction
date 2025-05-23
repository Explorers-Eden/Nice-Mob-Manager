$data modify storage eden:settings mob_settings.$(type) set value {type:$(type),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),silent:$(silent),burn:$(burn),drown:$(drown)}

dialog show @s mob_settings:main

$execute unless data storage eden:settings mob_settings.$(type){type:"all_neutral"} run return fail
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

data modify storage eden:settings mob_settings.bee.type set value "bee"
data modify storage eden:settings mob_settings.cave_spider.type set value "cave_spider"
data modify storage eden:settings mob_settings.dolphin.type set value "dolphin"
data modify storage eden:settings mob_settings.drowned.type set value "drowned"
data modify storage eden:settings mob_settings.enderman.type set value "enderman"
data modify storage eden:settings mob_settings.fox.type set value "fox"
data modify storage eden:settings mob_settings.goat.type set value "goat"
data modify storage eden:settings mob_settings.iron_golem.type set value "iron_golem"
data modify storage eden:settings mob_settings.llama.type set value "llama"
data modify storage eden:settings mob_settings.panda.type set value "panda"
data modify storage eden:settings mob_settings.piglin.type set value "piglin"
data modify storage eden:settings mob_settings.polar_bear.type set value "polar_bear"
data modify storage eden:settings mob_settings.spider.type set value "spider"
data modify storage eden:settings mob_settings.trader_llama.type set value "trader_llama"
data modify storage eden:settings mob_settings.wolf.type set value "wolf"
data modify storage eden:settings mob_settings.zombified_piglin.type set value "zombified_piglin"