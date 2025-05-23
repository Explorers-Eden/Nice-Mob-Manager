tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"gray","italic":false,"text":"Nice Mob Settings: Passive Mob settings applied!"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

$data modify storage eden:settings mob_settings.$(type) set value {type:$(type),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),burn:$(burn),silent:$(silent),drown:$(drown)}

$execute unless data storage eden:settings mob_settings.$(type){type:"all_passive"} run return fail
data modify storage eden:settings mob_settings.allay set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.armadillo set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.axolotl set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.bat set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.camel set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.cat set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.chicken set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.cod set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.cow set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.donkey set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.frog set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.glow_squid set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.horse set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.mooshroom set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.mule set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.ocelot set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.parrot set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.pig set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.pufferfish set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.rabbit set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.salmon set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.sheep set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.skeleton_horse set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.sniffer set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.snow_golem set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.squid set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.strider set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.tadpole set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.tropical_fish set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.turtle set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.villager set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.wandering_trader set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.zombie_horse set from storage eden:settings mob_settings.all_passive
data modify storage eden:settings mob_settings.happy_ghast set from storage eden:settings mob_settings.all_passive

data modify storage eden:settings mob_settings.allay.type set value "allay"
data modify storage eden:settings mob_settings.armadillo.type set value "armadillo"
data modify storage eden:settings mob_settings.axolotl.type set value "axolotl"
data modify storage eden:settings mob_settings.bat.type set value "bat"
data modify storage eden:settings mob_settings.camel.type set value "camel"
data modify storage eden:settings mob_settings.cat.type set value "cat"
data modify storage eden:settings mob_settings.chicken.type set value "chicken"
data modify storage eden:settings mob_settings.cod.type set value "cod"
data modify storage eden:settings mob_settings.cow.type set value "cow"
data modify storage eden:settings mob_settings.donkey.type set value "donkey"
data modify storage eden:settings mob_settings.frog.type set value "frog"
data modify storage eden:settings mob_settings.glow_squid.type set value "glow_squid"
data modify storage eden:settings mob_settings.horse.type set value "horse"
data modify storage eden:settings mob_settings.mooshroom.type set value "mooshroom"
data modify storage eden:settings mob_settings.mule.type set value "mule"
data modify storage eden:settings mob_settings.ocelot.type set value "ocelot"
data modify storage eden:settings mob_settings.parrot.type set value "parrot"
data modify storage eden:settings mob_settings.pig.type set value "pig"
data modify storage eden:settings mob_settings.pufferfish.type set value "pufferfish"
data modify storage eden:settings mob_settings.rabbit.type set value "rabbit"
data modify storage eden:settings mob_settings.salmon.type set value "salmon"
data modify storage eden:settings mob_settings.sheep.type set value "sheep"
data modify storage eden:settings mob_settings.skeleton_horse.type set value "skeleton_horse"
data modify storage eden:settings mob_settings.sniffer.type set value "sniffer"
data modify storage eden:settings mob_settings.snow_golem.type set value "snow_golem"
data modify storage eden:settings mob_settings.squid.type set value "squid"
data modify storage eden:settings mob_settings.strider.type set value "strider"
data modify storage eden:settings mob_settings.tadpole.type set value "tadpole"
data modify storage eden:settings mob_settings.tropical_fish.type set value "tropical_fish"
data modify storage eden:settings mob_settings.turtle.type set value "turtle"
data modify storage eden:settings mob_settings.villager.type set value "villager"
data modify storage eden:settings mob_settings.wandering_trader.type set value "wandering_trader"
data modify storage eden:settings mob_settings.zombie_horse.type set value "zombie_horse"
data modify storage eden:settings mob_settings.happy_ghast.type set value "happy_ghast"
