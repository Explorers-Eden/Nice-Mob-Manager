$data modify storage eden:settings mob_settings.misc set value {creeperfuse:$(creeperfuse),skeletonhorsetrap:$(skeletonhorsetrap),irongolemanger:$(irongolemanger),jebcolor:$(jebcolor),egglay:$(egglay),need_sky:$(need_sky)}

$data modify storage eden:temp mob_settings.jebspawning set value $(jebspawning)
execute store result storage eden:settings mob_settings.misc.jebspawning float 0.01 run data get storage eden:temp mob_settings.jebspawning

$data modify storage eden:temp mob_settings.killerrabbitspawning set value $(killerrabbitspawning)
execute store result storage eden:settings mob_settings.misc.killerrabbitspawning float 0.01 run data get storage eden:temp mob_settings.killerrabbitspawning

$data modify storage eden:temp mob_settings.babymountspawning set value $(babymountspawning)
execute store result storage eden:settings mob_settings.misc.babymountspawning float 0.01 run data get storage eden:temp mob_settings.babymountspawning

$data modify storage eden:temp mob_settings.illusionerspawning set value $(illusionerspawning)
execute store result storage eden:settings mob_settings.misc.illusionerspawning float 0.01 run data get storage eden:temp mob_settings.illusionerspawning

$data modify storage eden:temp mob_settings.brownmoospawning set value $(brownmoospawning)
execute store result storage eden:settings mob_settings.misc.brownmoospawning float 0.01 run data get storage eden:temp mob_settings.brownmoospawning

$data modify storage eden:temp mob_settings.immunezombie set value $(immunezombie)
execute store result storage eden:settings mob_settings.misc.immunezombie float 0.01 run data get storage eden:temp mob_settings.immunezombie

dialog show @s mob_settings:main