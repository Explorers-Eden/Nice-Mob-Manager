$data modify storage eden:settings mob_settings.$(type) merge value {locator_color:'$(locator_color)',locator_range:$(locator_range),type:$(type),pickup:$(pickup),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),silent:$(silent),burn:$(burn),drown:$(drown)}

$execute if data storage eden:settings mob_settings.$(type){burn:"enabled"} run data modify storage eden:settings mob_settings.$(type).burn_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){burn:"enabled"} run data modify storage eden:settings mob_settings.$(type).burn_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){pickup:"enabled"} run data modify storage eden:settings mob_settings.$(type).pickup_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){pickup:"enabled"} run data modify storage eden:settings mob_settings.$(type).pickup_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){silent:"enabled"} run data modify storage eden:settings mob_settings.$(type).silent_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){silent:"enabled"} run data modify storage eden:settings mob_settings.$(type).silent_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){drown:"enabled"} run data modify storage eden:settings mob_settings.$(type).drown_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){drown:"enabled"} run data modify storage eden:settings mob_settings.$(type).drown_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){breed:"enabled"} run data modify storage eden:settings mob_settings.$(type).breed_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){breed:"enabled"} run data modify storage eden:settings mob_settings.$(type).breed_initial set value "true"

dialog show @s mob_settings:neutral

$execute unless data storage eden:settings mob_settings.$(type){type:"all_neutral"} run return fail
data modify storage eden:settings mob_settings.bee merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.cave_spider merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.dolphin merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.drowned merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.enderman merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.fox merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.goat merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.iron_golem merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.llama merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.panda merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.piglin merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.polar_bear merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.spider merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.trader_llama merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.wolf merge from storage eden:settings mob_settings.all_neutral
data modify storage eden:settings mob_settings.zombified_piglin merge from storage eden:settings mob_settings.all_neutral

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