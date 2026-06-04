effect give @s minecraft:slowness 2 255 true

rotate @s facing entity @p[distance=..8,tag=mob_manager.villager.leader]

execute store result score @s mob_manager.follow.motionX run data get entity @s Motion[0] 100
execute store result score @s mob_manager.follow.motionZ run data get entity @s Motion[2] 100

execute as @p[distance=..8,tag=mob_manager.villager.leader] store result score @s mob_manager.follow.px run data get entity @s Pos[0] 5
execute as @p[distance=..8,tag=mob_manager.villager.leader] store result score @s mob_manager.follow.py run data get entity @s Pos[1] 50
execute as @p[distance=..8,tag=mob_manager.villager.leader] store result score @s mob_manager.follow.pz run data get entity @s Pos[2] 5

execute store result score @s mob_manager.follow.ex run data get entity @s Pos[0] 5
execute store result score @s mob_manager.follow.ey run data get entity @s Pos[1] 50
execute store result score @s mob_manager.follow.ez run data get entity @s Pos[2] 5

scoreboard players operation @s mob_manager.follow.dx = @p[distance=..8,tag=mob_manager.villager.leader] mob_manager.follow.px
scoreboard players operation @s mob_manager.follow.dx -= @s mob_manager.follow.ex

scoreboard players operation @s mob_manager.follow.dy = @p[distance=..8,tag=mob_manager.villager.leader] mob_manager.follow.py
scoreboard players operation @s mob_manager.follow.dy -= @s mob_manager.follow.ey

scoreboard players operation @s mob_manager.follow.dz = @p[distance=..8,tag=mob_manager.villager.leader] mob_manager.follow.pz
scoreboard players operation @s mob_manager.follow.dz -= @s mob_manager.follow.ez

scoreboard players operation @s mob_manager.follow.dx2 = @s mob_manager.follow.dx
scoreboard players operation @s mob_manager.follow.dx2 *= @s mob_manager.follow.dx
scoreboard players operation @s mob_manager.follow.dz2 = @s mob_manager.follow.dz
scoreboard players operation @s mob_manager.follow.dz2 *= @s mob_manager.follow.dz
scoreboard players operation @s mob_manager.follow.len2 = @s mob_manager.follow.dx2
scoreboard players operation @s mob_manager.follow.len2 += @s mob_manager.follow.dz2

execute if score @s mob_manager.follow.len2 matches ..99 run return 0

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s mob_manager.follow.dx
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s mob_manager.follow.dz
execute as @s[scores={mob_manager.follow.dy=43..}] run scoreboard players set @s mob_manager.follow.dy 42
execute as @s[scores={mob_manager.follow.dy=1..,mob_manager.follow.motionX=-2..2,mob_manager.follow.motionZ=-2..2}] if data entity @s {OnGround:1b} store result entity @s Motion[1] double 0.01 run scoreboard players get @s mob_manager.follow.dy
