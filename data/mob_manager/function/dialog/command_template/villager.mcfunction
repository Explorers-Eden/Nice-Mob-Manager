$data modify storage eden:settings mob_manager.villager_settings merge value {talking:$(talking),breeddiversity:$(breeddiversity),gossip:$(gossip),restock:$(restock),customname:$(customname)}

execute if data storage eden:settings mob_manager.villager_settings{customname:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.customname_initial set value "false"
execute unless data storage eden:settings mob_manager.villager_settings{customname:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.customname_initial set value "true"

execute if data storage eden:settings mob_manager.villager_settings{restock:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.restock_initial set value "false"
execute unless data storage eden:settings mob_manager.villager_settings{restock:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.restock_initial set value "true"

execute if data storage eden:settings mob_manager.villager_settings{miniblock:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.miniblock_initial set value "false"
execute unless data storage eden:settings mob_manager.villager_settings{miniblock:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.miniblock_initial set value "true"

execute if data storage eden:settings mob_manager.villager_settings{gossip:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.gossip_initial set value "false"
execute unless data storage eden:settings mob_manager.villager_settings{gossip:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.gossip_initial set value "true"

execute if data storage eden:settings mob_manager.villager_settings{breeddiversity:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.breeddiversity_initial set value "false"
execute unless data storage eden:settings mob_manager.villager_settings{breeddiversity:"enabled"} run data modify storage eden:settings mob_manager.villager_settings.breeddiversity_initial set value "true"

execute if data storage eden:settings mob_manager.villager_settings{talking:"disabled"} run data modify storage eden:settings mob_manager.villager_settings.talking_chat_initial set value "false"
execute if data storage eden:settings mob_manager.villager_settings{talking:"disabled"} run data modify storage eden:settings mob_manager.villager_settings.talking_actionbar_initial set value "false"
execute if data storage eden:settings mob_manager.villager_settings{talking:"chat"} run data modify storage eden:settings mob_manager.villager_settings.talking_chat_initial set value "true"
execute if data storage eden:settings mob_manager.villager_settings{talking:"chat"} run data modify storage eden:settings mob_manager.villager_settings.talking_actionbar_initial set value "false"
execute if data storage eden:settings mob_manager.villager_settings{talking:"actionbar"} run data modify storage eden:settings mob_manager.villager_settings.talking_chat_initial set value "false"
execute if data storage eden:settings mob_manager.villager_settings{talking:"actionbar"} run data modify storage eden:settings mob_manager.villager_settings.talking_actionbar_initial set value "true"

dialog show @s mob_manager:main