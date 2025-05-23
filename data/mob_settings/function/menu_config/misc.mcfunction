tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"gray","italic":false,"text":"Nice Mob Settings: Miscellaneous settings applied!"}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

$data modify storage eden:settings mob_settings.misc.need_sky set value $(need_sky)
$data modify storage eden:settings mob_settings.misc.egglay set value $(egglay)
$$(insomnia)
$$(warden)
$$(cmdfeedback)
$$(raids)
$$(mobloot)
$$(patrols)
$$(griefing)
$gamerule maxEntityCramming $(cramming)