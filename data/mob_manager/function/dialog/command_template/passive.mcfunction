$data modify storage eden:settings mob_manager.$(type) set value {locator_color:'$(locator_color)',locator_range:$(locator_range),type:$(type),pickup:$(pickup),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),burn:$(burn),silent:$(silent),drown:$(drown)}

$execute if data storage eden:settings mob_manager.$(type){burn:"enabled"} run data modify storage eden:settings mob_manager.$(type).burn_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){burn:"enabled"} run data modify storage eden:settings mob_manager.$(type).burn_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){pickup:"enabled"} run data modify storage eden:settings mob_manager.$(type).pickup_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){pickup:"enabled"} run data modify storage eden:settings mob_manager.$(type).pickup_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify storage eden:settings mob_manager.$(type).silent_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify storage eden:settings mob_manager.$(type).silent_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){drown:"enabled"} run data modify storage eden:settings mob_manager.$(type).drown_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){drown:"enabled"} run data modify storage eden:settings mob_manager.$(type).drown_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){breed:"enabled"} run data modify storage eden:settings mob_manager.$(type).breed_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){breed:"enabled"} run data modify storage eden:settings mob_manager.$(type).breed_initial set value "true"

dialog show @s mob_manager:passive

$execute unless data storage eden:settings mob_manager.$(type){type:"all_passive"} run return fail
data modify storage eden:settings mob_manager.allay set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.armadillo set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.axolotl set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.bat set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.camel set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.cat set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.chicken set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.cod set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.cow set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.donkey set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.frog set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.glow_squid set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.horse set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.mooshroom set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.mule set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.ocelot set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.parrot set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.pig set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.pufferfish set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.rabbit set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.salmon set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.sheep set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.skeleton_horse set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.sniffer set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.snow_golem set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.squid set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.strider set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.tadpole set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.tropical_fish set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.turtle set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.villager set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.wandering_trader set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.zombie_horse set from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.happy_ghast set from storage eden:settings mob_manager.all_passive

data modify storage eden:settings mob_manager.allay.type set value "allay"
data modify storage eden:settings mob_manager.armadillo.type set value "armadillo"
data modify storage eden:settings mob_manager.axolotl.type set value "axolotl"
data modify storage eden:settings mob_manager.bat.type set value "bat"
data modify storage eden:settings mob_manager.camel.type set value "camel"
data modify storage eden:settings mob_manager.cat.type set value "cat"
data modify storage eden:settings mob_manager.chicken.type set value "chicken"
data modify storage eden:settings mob_manager.cod.type set value "cod"
data modify storage eden:settings mob_manager.cow.type set value "cow"
data modify storage eden:settings mob_manager.donkey.type set value "donkey"
data modify storage eden:settings mob_manager.frog.type set value "frog"
data modify storage eden:settings mob_manager.glow_squid.type set value "glow_squid"
data modify storage eden:settings mob_manager.horse.type set value "horse"
data modify storage eden:settings mob_manager.mooshroom.type set value "mooshroom"
data modify storage eden:settings mob_manager.mule.type set value "mule"
data modify storage eden:settings mob_manager.ocelot.type set value "ocelot"
data modify storage eden:settings mob_manager.parrot.type set value "parrot"
data modify storage eden:settings mob_manager.pig.type set value "pig"
data modify storage eden:settings mob_manager.pufferfish.type set value "pufferfish"
data modify storage eden:settings mob_manager.rabbit.type set value "rabbit"
data modify storage eden:settings mob_manager.salmon.type set value "salmon"
data modify storage eden:settings mob_manager.sheep.type set value "sheep"
data modify storage eden:settings mob_manager.skeleton_horse.type set value "skeleton_horse"
data modify storage eden:settings mob_manager.sniffer.type set value "sniffer"
data modify storage eden:settings mob_manager.snow_golem.type set value "snow_golem"
data modify storage eden:settings mob_manager.squid.type set value "squid"
data modify storage eden:settings mob_manager.strider.type set value "strider"
data modify storage eden:settings mob_manager.tadpole.type set value "tadpole"
data modify storage eden:settings mob_manager.tropical_fish.type set value "tropical_fish"
data modify storage eden:settings mob_manager.turtle.type set value "turtle"
data modify storage eden:settings mob_manager.villager.type set value "villager"
data modify storage eden:settings mob_manager.wandering_trader.type set value "wandering_trader"
data modify storage eden:settings mob_manager.zombie_horse.type set value "zombie_horse"
data modify storage eden:settings mob_manager.happy_ghast.type set value "happy_ghast"