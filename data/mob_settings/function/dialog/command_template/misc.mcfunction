$data modify storage eden:settings mob_settings.misc set value {snifferbrain:$(snifferbrain),creeperfuse:$(creeperfuse),skeletonhorsetrap:$(skeletonhorsetrap),irongolemanger:$(irongolemanger),jebcolor:$(jebcolor),egglay:$(egglay),need_sky:$(need_sky)}
data modify storage eden:settings mob_settings.misc.command_template set value "function mob_settings:dialog/command_template/misc {snifferbrain:$(snifferbrain),immunezombie:$(immunezombie),creeperfuse:$(creeperfuse),skeletonhorsetrap:$(skeletonhorsetrap),irongolemanger:$(irongolemanger),brownmoospawning:$(brownmoospawning),illusionerspawning:$(illusionerspawning),babymountspawning:$(babymountspawning),killerrabbitspawning:$(killerrabbitspawning),jebcolor:$(jebcolor),jebspawning:$(jebspawning),egglay:$(egglay),need_sky:$(need_sky)}"

execute if data storage eden:settings mob_settings.misc{snifferbrain:"enabled"} run data modify storage eden:settings mob_settings.misc.snifferbrain_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{snifferbrain:"enabled"} run data modify storage eden:settings mob_settings.misc.snifferbrain_initial set value "true"

execute if data storage eden:settings mob_settings.misc{creeperfuse:"enabled"} run data modify storage eden:settings mob_settings.misc.creeperfuse_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{creeperfuse:"enabled"} run data modify storage eden:settings mob_settings.misc.creeperfuse_initial set value "true"

execute if data storage eden:settings mob_settings.misc{skeletonhorsetrap:"enabled"} run data modify storage eden:settings mob_settings.misc.skeletonhorsetrap_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{skeletonhorsetrap:"enabled"} run data modify storage eden:settings mob_settings.misc.skeletonhorsetrap_initial set value "true"

execute if data storage eden:settings mob_settings.misc{irongolemanger:"enabled"} run data modify storage eden:settings mob_settings.misc.irongolemanger_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{irongolemanger:"enabled"} run data modify storage eden:settings mob_settings.misc.irongolemanger_initial set value "true"

execute if data storage eden:settings mob_settings.misc{jebcolor:"enabled"} run data modify storage eden:settings mob_settings.misc.jebcolor_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{jebcolor:"enabled"} run data modify storage eden:settings mob_settings.misc.jebcolor_initial set value "true"

execute if data storage eden:settings mob_settings.misc{egglay:"enabled"} run data modify storage eden:settings mob_settings.misc.egglay_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{egglay:"enabled"} run data modify storage eden:settings mob_settings.misc.egglay_initial set value "true"

execute if data storage eden:settings mob_settings.misc{need_sky:"enabled"} run data modify storage eden:settings mob_settings.misc.need_sky_initial set value "false"
execute unless data storage eden:settings mob_settings.misc{need_sky:"enabled"} run data modify storage eden:settings mob_settings.misc.need_sky_initial set value "true"

$data modify storage eden:settings mob_settings.misc.jebspawning_initial set value $(jebspawning)
execute store result storage eden:settings mob_settings.misc.jebspawning float 0.01 run data get storage eden:settings mob_settings.misc.jebspawning_initial

$data modify storage eden:settings mob_settings.misc.killerrabbitspawning_initial set value $(killerrabbitspawning)
execute store result storage eden:settings mob_settings.misc.killerrabbitspawning float 0.01 run data get storage eden:settings mob_settings.misc.killerrabbitspawning_initial

$data modify storage eden:settings mob_settings.misc.babymountspawning_initial set value $(babymountspawning)
execute store result storage eden:settings mob_settings.misc.babymountspawning float 0.01 run data get storage eden:settings mob_settings.misc.babymountspawning_initial

$data modify storage eden:settings mob_settings.misc.illusionerspawning_initial set value $(illusionerspawning)
execute store result storage eden:settings mob_settings.misc.illusionerspawning float 0.01 run data get storage eden:settings mob_settings.misc.illusionerspawning_initial

$data modify storage eden:settings mob_settings.misc.brownmoospawning_initial set value $(brownmoospawning)
execute store result storage eden:settings mob_settings.misc.brownmoospawning float 0.01 run data get storage eden:settings mob_settings.misc.brownmoospawning_initial

$data modify storage eden:settings mob_settings.misc.immunezombie_initial set value $(immunezombie)
execute store result storage eden:settings mob_settings.misc.immunezombie float 0.01 run data get storage eden:settings mob_settings.misc.immunezombie_initial

dialog show @s mob_settings:main