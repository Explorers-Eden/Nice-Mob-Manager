tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"gray","italic":false,"text":"Nice Mob Settings: Hostile Mob settings applied!"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

$data modify storage eden:settings mob_settings.$(type) set value {type:$(type),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),silent:$(silent),drown:$(drown)}

$execute unless data storage eden:settings mob_settings.$(type){type:"all_hostile"} run return fail
data modify storage eden:settings mob_settings.blaze set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.bogged set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.breeze set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.creeper set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.elder_guardian set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.endermite set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.evoker set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.ghast set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.guardian set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.hoglin set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.magma_cube set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.phantom set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.piglin_brute set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.pillager set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.ravager set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.shulker set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.silverfish set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.skeleton set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.slime set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.stray set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.vex set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.vindicator set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.warden set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.witch set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.wither_skeleton set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.zoglin set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.zombie set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.zombie_villager set from storage eden:settings mob_settings.all_hostile
data modify storage eden:settings mob_settings.husk set from storage eden:settings mob_settings.all_hostile

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