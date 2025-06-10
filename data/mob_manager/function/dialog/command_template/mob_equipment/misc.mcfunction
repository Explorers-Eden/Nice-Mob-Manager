$data modify storage eden:settings mob_manager.mob_equipment.misc merge value {leathercolor:$(leathercolor),trim:$(trim),bannershield:$(bannershield)}

execute if data storage eden:settings mob_manager.mob_equipment.misc{leathercolor:"enabled"} run data modify storage eden:settings mob_manager.mob_equipment.misc.leathercolor_initial set value "false"
execute unless data storage eden:settings mob_manager.mob_equipment.misc{leathercolor:"enabled"} run data modify storage eden:settings mob_manager.mob_equipment.misc.leathercolor_initial set value "true"

execute if data storage eden:settings mob_manager.mob_equipment.misc{trim:"enabled"} run data modify storage eden:settings mob_manager.mob_equipment.misc.trim_initial set value "false"
execute unless data storage eden:settings mob_manager.mob_equipment.misc{trim:"enabled"} run data modify storage eden:settings mob_manager.mob_equipment.misc.trim_initial set value "true"

execute if data storage eden:settings mob_manager.mob_equipment.misc{bannershield:"enabled"} run data modify storage eden:settings mob_manager.mob_equipment.misc.bannershield_initial set value "false"
execute unless data storage eden:settings mob_manager.mob_equipment.misc{bannershield:"enabled"} run data modify storage eden:settings mob_manager.mob_equipment.misc.bannershield_initial set value "true"

$data modify storage eden:settings mob_manager.mob_equipment.misc.playerheads_initial set value $(playerheads)
execute store result storage eden:settings mob_manager.mob_equipment.misc.playerheads float 0.01 run data get storage eden:settings mob_manager.mob_equipment.misc.playerheads_initial

$data modify storage eden:settings mob_manager.mob_equipment.misc.mobheads_initial set value $(mobheads)
execute store result storage eden:settings mob_manager.mob_equipment.misc.mobheads float 0.01 run data get storage eden:settings mob_manager.mob_equipment.misc.mobheads_initial

dialog show @s mob_manager:mob_equipment