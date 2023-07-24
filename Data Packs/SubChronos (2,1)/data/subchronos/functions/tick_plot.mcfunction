# This function will run every tick while players are in your plot on the center block at Y=0

#Checkpoints
# 1
execute positioned ~-40 ~49 ~ as @a[distance=0..4,tag=pr.target] run function pr:player/checkpoint/mark
# 2
execute positioned ~31 ~57 ~-17 as @a[distance=0..4,tag=pr.target] at @s if block ~ ~-1 ~ honeycomb_block run function pr:player/checkpoint/mark
execute positioned ~31 ~57 ~-17 as @a[distance=0..4,tag=pr.target] at @s if block ~ ~-1 ~ brown_terracotta run function pr:player/checkpoint/mark
# 3
execute positioned ~-3 ~3 ~10 as @a[distance=0..4,tag=pr.target] run function pr:player/checkpoint/mark
# 4
execute positioned ~33 ~1 ~ as @a[distance=0..3,tag=pr.target] run function pr:player/checkpoint/mark

#Test if player enters on the pit1
tag @a remove subchronos_pit1
execute positioned ~4 ~54 ~-20 run tag @a[distance=0..8,tag=!subchronos_pit1,tag=pr.target] add subchronos_pit1
execute positioned ~14 ~54 ~-22 run tag @a[distance=0..8,tag=!subchronos_pit1,tag=pr.target] add subchronos_pit1
execute positioned ~22 ~54 ~-24 run tag @a[distance=0..8,tag=!subchronos_pit1,tag=pr.target] add subchronos_pit1
execute positioned ~28 ~54 ~-20 run tag @a[distance=0..8,tag=!subchronos_pit1,tag=pr.target] add subchronos_pit1
execute if entity @a[tag=subchronos_pit1,tag=pr.target] run function subchronos:pits/pit1/tick


#Test if player enters on the pit2
tag @a remove subchronos_pit2
execute positioned ~32 ~55 ~19 run tag @a[distance=0..8,tag=!subchronos_pit2,tag=pr.target] add subchronos_pit2
execute positioned ~30 ~55 ~27 run tag @a[distance=0..8,tag=!subchronos_pit2,tag=pr.target] add subchronos_pit2
execute positioned ~22 ~55 ~32 run tag @a[distance=0..8,tag=!subchronos_pit2,tag=pr.target] add subchronos_pit2

execute if entity @a[tag=subchronos_pit2,tag=pr.target] run function subchronos:pits/pit2/tick


#Test if player enters on the pit3
tag @a remove subchronos_pit3
tag @a[tag=pr.target,tag=!subchronos_pit2,scores={subchronos_y=-7..20}] add subchronos_pit3

execute if entity @a[tag=subchronos_pit3,tag=pr.target] run function subchronos:pits/pit3/tick



#Sores Y coord on score
execute as @a[tag=pr.target] store result score @s subchronos_y run data get entity @s Pos[1]

#Death if fall
execute as @a[tag=pr.target,scores={subchronos_y=29..44}] at @s unless block ~ ~-0.1 ~ air run kill @s