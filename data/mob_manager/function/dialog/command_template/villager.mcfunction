$data modify storage eden:settings mob_manager.villager merge value {breeddiversity:$(breeddiversity),gossip:$(gossip),payamount:$(payamount),payitem:'$(payitem)',miniblock:$(miniblock),restock:$(restock),customname:$(customname)}

execute if data storage eden:settings mob_manager.villager{customname:"enabled"} run data modify storage eden:settings mob_manager.villager.customname_initial set value "false"
execute unless data storage eden:settings mob_manager.villager{customname:"enabled"} run data modify storage eden:settings mob_manager.villager.customname_initial set value "true"

execute if data storage eden:settings mob_manager.villager{restock:"enabled"} run data modify storage eden:settings mob_manager.villager.restock_initial set value "false"
execute unless data storage eden:settings mob_manager.villager{restock:"enabled"} run data modify storage eden:settings mob_manager.villager.restock_initial set value "true"

execute if data storage eden:settings mob_manager.villager{miniblock:"enabled"} run data modify storage eden:settings mob_manager.villager.miniblock_initial set value "false"
execute unless data storage eden:settings mob_manager.villager{miniblock:"enabled"} run data modify storage eden:settings mob_manager.villager.miniblock_initial set value "true"

execute if data storage eden:settings mob_manager.villager{gossip:"enabled"} run data modify storage eden:settings mob_manager.villager.gossip_initial set value "false"
execute unless data storage eden:settings mob_manager.villager{gossip:"enabled"} run data modify storage eden:settings mob_manager.villager.gossip_initial set value "true"

execute if data storage eden:settings mob_manager.villager{breeddiversity:"enabled"} run data modify storage eden:settings mob_manager.villager.breeddiversity_initial set value "false"
execute unless data storage eden:settings mob_manager.villager{breeddiversity:"enabled"} run data modify storage eden:settings mob_manager.villager.breeddiversity_initial set value "true"

dialog show @s mob_manager:main