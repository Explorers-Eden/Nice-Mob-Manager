$data modify storage eden:settings mob_manager.mob_drops.dragonegg_initial set value $(dragonegg)
execute store result storage eden:settings mob_manager.mob_drops.dragonegg float 0.01 run data get storage eden:settings mob_manager.mob_drops.dragonegg_initial

$data modify storage eden:settings mob_manager.mob_drops.dragonelytra_initial set value $(dragonelytra)
execute store result storage eden:settings mob_manager.mob_drops.dragonelytra float 0.01 run data get storage eden:settings mob_manager.mob_drops.dragonelytra_initial

$data modify storage eden:settings mob_manager.mob_drops.shulkerdrop_initial set value $(shulkerdrop)
execute store result storage eden:settings mob_manager.mob_drops.shulkerdrop float 0.01 run data get storage eden:settings mob_manager.mob_drops.shulkerdrop_initial

$data modify storage eden:settings mob_manager.mob_drops.husksand_initial set value $(husksand)
execute store result storage eden:settings mob_manager.mob_drops.husksand float 0.01 run data get storage eden:settings mob_manager.mob_drops.husksand_initial

$data modify storage eden:settings mob_manager.mob_drops.batmembrane_initial set value $(batmembrane)
execute store result storage eden:settings mob_manager.mob_drops.batmembrane float 0.01 run data get storage eden:settings mob_manager.mob_drops.batmembrane_initial

dialog show @s mob_manager:main