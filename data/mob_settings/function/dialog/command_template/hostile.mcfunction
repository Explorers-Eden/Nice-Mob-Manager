$data modify storage eden:settings mob_settings.$(type) merge value {locator_color:'$(locator_color)',locator_range:$(locator_range),pickup:$(pickup),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),silent:$(silent),drown:$(drown)}

$execute if data storage eden:settings mob_settings.$(type){burn:"enabled"} run data modify storage eden:settings mob_settings.$(type).burn_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){burn:"enabled"} run data modify storage eden:settings mob_settings.$(type).burn_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){pickup:"enabled"} run data modify storage eden:settings mob_settings.$(type).pickup_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){pickup:"enabled"} run data modify storage eden:settings mob_settings.$(type).pickup_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){silent:"enabled"} run data modify storage eden:settings mob_settings.$(type).silent_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){silent:"enabled"} run data modify storage eden:settings mob_settings.$(type).silent_initial set value "true"

$execute if data storage eden:settings mob_settings.$(type){drown:"enabled"} run data modify storage eden:settings mob_settings.$(type).drown_initial set value "false"
$execute unless data storage eden:settings mob_settings.$(type){drown:"enabled"} run data modify storage eden:settings mob_settings.$(type).drown_initial set value "true"

dialog show @s mob_settings:hostile

$execute unless data storage eden:settings mob_settings.$(type){type:"all_hostile"} run return fail
data modify storage eden:settings mob_settings.blaze merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.bogged merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.breeze merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.creeper merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.elder_guardian merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.endermite merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.evoker merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.ghast merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.guardian merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.hoglin merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.magma_cube merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.phantom merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.piglin_brute merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.pillager merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.ravager merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.shulker merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.silverfish merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.skeleton merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.slime merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.stray merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.vex merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.vindicator merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.warden merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.witch merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.wither_skeleton merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.zoglin merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.zombie merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.zombie_villager merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.husk merge from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.illusioner merge from storage eden:settings mob_settings.all_hostile

data modify storage eden:settings mob_settings.blaze.type set value "blaze"
data modify storage eden:settings mob_settings.bogged.type set value "bogged"
data modify storage eden:settings mob_settings.breeze.type set value "breeze"
data modify storage eden:settings mob_settings.creeper.type set value "creeper"
data modify storage eden:settings mob_settings.elder_guardian.type set value "elder_guardian"
data modify storage eden:settings mob_settings.endermite.type set value "endermite"
data modify storage eden:settings mob_settings.evoker.type set value "evoker"
data modify storage eden:settings mob_settings.ghast.type set value "ghast"
data modify storage eden:settings mob_settings.guardian.type set value "guardian"
data modify storage eden:settings mob_settings.hoglin.type set value "hoglin"
data modify storage eden:settings mob_settings.magma_cube.type set value "magma_cube"
data modify storage eden:settings mob_settings.phantom.type set value "phantom"
data modify storage eden:settings mob_settings.piglin_brute.type set value "piglin_brute"
data modify storage eden:settings mob_settings.pillager.type set value "pillager"
data modify storage eden:settings mob_settings.ravager.type set value "ravager"
data modify storage eden:settings mob_settings.shulker.type set value "shulker"
data modify storage eden:settings mob_settings.silverfish.type set value "silverfish"
data modify storage eden:settings mob_settings.skeleton.type set value "skeleton"
data modify storage eden:settings mob_settings.slime.type set value "slime"
data modify storage eden:settings mob_settings.stray.type set value "stray"
data modify storage eden:settings mob_settings.vex.type set value "vex"
data modify storage eden:settings mob_settings.vindicator.type set value "vindicator"
data modify storage eden:settings mob_settings.warden.type set value "warden"
data modify storage eden:settings mob_settings.witch.type set value "witch"
data modify storage eden:settings mob_settings.wither_skeleton.type set value "wither_skeleton"
data modify storage eden:settings mob_settings.zoglin.type set value "zoglin"
data modify storage eden:settings mob_settings.zombie.type set value "zombie"
data modify storage eden:settings mob_settings.zombie_villager.type set value "zombie_villager"
data modify storage eden:settings mob_settings.husk.type set value "husk"