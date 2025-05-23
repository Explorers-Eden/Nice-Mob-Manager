$data modify storage eden:settings mob_settings.misc set value {jebcolor:$(jebcolor),egglay:$(egglay),need_sky:$(need_sky)}

$data modify storage eden:temp mob_settings.jebspawning set value $(jebspawning)
execute store result storage eden:settings mob_settings.misc.jebspawning float 0.01 run data get storage eden:temp mob_settings.jebspawning

$data modify storage eden:temp mob_settings.killerrabbitspawning set value $(killerrabbitspawning)
execute store result storage eden:settings mob_settings.misc.killerrabbitspawning float 0.01 run data get storage eden:temp mob_settings.killerrabbitspawning

$data modify storage eden:temp mob_settings.babymountspawning set value $(babymountspawning)
execute store result storage eden:settings mob_settings.misc.babymountspawning float 0.01 run data get storage eden:temp mob_settings.babymountspawning

dialog show @s mob_settings:main