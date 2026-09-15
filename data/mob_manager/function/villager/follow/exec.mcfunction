effect give @s minecraft:slowness 2 255 true

rotate @s facing entity @p[distance=..8,tag=mob_manager.villager.leader]

execute store result score @s mob_manager.follow.motionX run data get entity @s Motion[0] 100
execute store result score @s mob_manager.follow.motionZ run data get entity @s Motion[2] 100

execute as @p[distance=..8,tag=mob_manager.villager.leader] run data modify storage eden:temp mob_manager.follow.leader_pos set from entity @s Pos
data modify storage eden:temp mob_manager.follow.self_pos set from entity @s Pos

execute store result score @s mob_manager.follow.dx run compute default float mob_manager:follow/dx 5
execute store result score @s mob_manager.follow.dy run compute default float mob_manager:follow/dy 50
execute store result score @s mob_manager.follow.dz run compute default float mob_manager:follow/dz 5

execute store result score @s mob_manager.follow.len2 run compute default float mob_manager:follow/len2 25

execute if score @s mob_manager.follow.len2 matches ..99 run return 0

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s mob_manager.follow.dx
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s mob_manager.follow.dz
execute as @s[scores={mob_manager.follow.dy=43..}] run scoreboard players set @s mob_manager.follow.dy 42
execute as @s[scores={mob_manager.follow.dy=1..,mob_manager.follow.motionX=-2..2,mob_manager.follow.motionZ=-2..2}] if data entity @s {OnGround:1b} store result entity @s Motion[1] double 0.01 run scoreboard players get @s mob_manager.follow.dy
