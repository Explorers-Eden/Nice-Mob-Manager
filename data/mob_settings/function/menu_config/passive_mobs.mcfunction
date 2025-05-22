tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Nice Mob Settings for Passive Mobs applied!"}]

$data modify storage eden:temp mob_settings.config.type set value $(type)
$data modify storage eden:mob_settings $(type) set value {scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),burn:$(burn),drown:$(drown)}

$execute store result storage eden:mob_settings $(type).health float 0.01 run data get storage eden:mob_settings $(type).health
$execute store result storage eden:mob_settings $(type).tempt_range float 0.01 run data get storage eden:mob_settings $(type).tempt_range
$execute store result storage eden:mob_settings $(type).follow_range float 0.01 run data get storage eden:mob_settings $(type).follow_range
$execute store result storage eden:mob_settings $(type).safe_fall float 0.01 run data get storage eden:mob_settings $(type).safe_fall
$execute store result storage eden:mob_settings $(type).move_speed float 0.01 run data get storage eden:mob_settings $(type).move_speed

execute unless data storage eden:temp mob_settings.config{type:"all_passive"} run return fail
data modify storage eden:mob_settings allay set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings armadillo set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings axolotl set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings bat set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings camel set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings cat set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings chicken set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings cod set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings cow set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings donkey set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings frog set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings glow_squid set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings horse set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings mooshroom set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings mule set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings ocelot set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings parrot set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings pig set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings pufferfish set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings rabbit set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings salmon set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings sheep set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings skeleton_horse set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings sniffer set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings snow_golem set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings squid set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings strider set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings tadpole set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings tropical_fish set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings turtle set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings villager set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings wandering_trader set from storage eden:mob_settings all_passive
data modify storage eden:mob_settings zombie_horse set from storage eden:mob_settings all_passive
