$gamerule doInsomnia $(insomnia)e
$gamerule doWardenSpawning $(warden)e
$gamerule sendCommandFeedback $(cmdfeedback)e
$gamerule disableRaids $(raids)e
$gamerule doMobLoot $(mobloot)e
$gamerule doPatrolSpawning $(patrols)e
$gamerule doTraderSpawning $(trader)e
$gamerule mobGriefing $(griefing)e
$gamerule locatorBar $(locatorbar)e
$gamerule maxEntityCramming $(cramming)

execute store result storage eden:temp mob_manager.gamerules.insomnia int 1 run gamerule doInsomnia
execute if data storage eden:temp mob_manager.gamerules{insomnia:1} run data modify storage eden:settings mob_manager.gamerules.insomnia_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{insomnia:1} run data modify storage eden:settings mob_manager.gamerules.insomnia_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.warden int 1 run gamerule doWardenSpawning
execute if data storage eden:temp mob_manager.gamerules{warden:1} run data modify storage eden:settings mob_manager.gamerules.warden_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{warden:1} run data modify storage eden:settings mob_manager.gamerules.warden_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.cmdfeedback int 1 run gamerule sendCommandFeedback
execute if data storage eden:temp mob_manager.gamerules{cmdfeedback:1} run data modify storage eden:settings mob_manager.gamerules.cmdfeedback_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{cmdfeedback:1} run data modify storage eden:settings mob_manager.gamerules.cmdfeedback_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.raids int 1 run gamerule disableRaids
execute if data storage eden:temp mob_manager.gamerules{raids:1} run data modify storage eden:settings mob_manager.gamerules.raids_initial set value "true"
execute unless data storage eden:temp mob_manager.gamerules{raids:1} run data modify storage eden:settings mob_manager.gamerules.raids_initial set value "false"

execute store result storage eden:temp mob_manager.gamerules.mobloot int 1 run gamerule doMobLoot
execute if data storage eden:temp mob_manager.gamerules{mobloot:1} run data modify storage eden:settings mob_manager.gamerules.mobloot_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{mobloot:1} run data modify storage eden:settings mob_manager.gamerules.mobloot_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.patrols int 1 run gamerule doPatrolSpawning
execute if data storage eden:temp mob_manager.gamerules{patrols:1} run data modify storage eden:settings mob_manager.gamerules.patrols_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{patrols:1} run data modify storage eden:settings mob_manager.gamerules.patrols_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.trader int 1 run gamerule doTraderSpawning
execute if data storage eden:temp mob_manager.gamerules{trader:1} run data modify storage eden:settings mob_manager.gamerules.trader_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{trader:1} run data modify storage eden:settings mob_manager.gamerules.trader_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.griefing int 1 run gamerule mobGriefing
execute if data storage eden:temp mob_manager.gamerules{griefing:1} run data modify storage eden:settings mob_manager.gamerules.griefing_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{griefing:1} run data modify storage eden:settings mob_manager.gamerules.griefing_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.locatorbar int 1 run gamerule locatorBar
execute if data storage eden:temp mob_manager.gamerules{locatorbar:1} run data modify storage eden:settings mob_manager.gamerules.locatorbar_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{locatorbar:1} run data modify storage eden:settings mob_manager.gamerules.locatorbar_initial set value "true"

execute store result storage eden:settings mob_manager.gamerules.cramming int 1 run gamerule maxEntityCramming

dialog show @s mob_manager:main