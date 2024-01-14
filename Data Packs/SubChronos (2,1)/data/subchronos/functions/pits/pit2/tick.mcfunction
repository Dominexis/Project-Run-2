#Cycle
scoreboard players add pit2 subchronos_hive 1

execute if score pit2 subchronos_hive matches 1 run function subchronos:pits/pit2/rise
execute if score pit2 subchronos_hive matches 35 run function subchronos:pits/pit2/rise2
execute if score pit2 subchronos_hive matches 100 run function subchronos:pits/pit2/low
execute if score pit2 subchronos_hive matches 115 run function subchronos:pits/pit2/low2
execute if score pit2 subchronos_hive matches 140 run function subchronos:pits/pit2/low3
execute if score pit2 subchronos_hive matches 200.. run scoreboard players reset pit2 subchronos_hive

#SFX
execute if score pit2_moving subchronos_hive matches 1 run playsound minecraft:block.honey_block.slide master @a[tag=pr.target] ~ ~ ~ 5 1

#Death if falls
execute as @a[tag=subchronos_pit2,tag=pr.target,scores={subchronos_y=54}] at @a[tag=subchronos_pit2,tag=pr.target,scores={subchronos_y=54}] if block ~ ~-1 ~ minecraft:yellow_concrete run damage @s 1000 minecraft:sting
execute if score pit2_rised subchronos_hive matches 1 as @a[tag=subchronos_pit2,tag=pr.target,scores={subchronos_y=54..56}] at @a[tag=subchronos_pit2,tag=pr.target,scores={subchronos_y=54..56}] if block ~ ~-0.4 ~ minecraft:gray_terracotta run damage @s 1000 minecraft:sting
execute if score pit2_rised subchronos_hive matches 1 as @a[tag=subchronos_pit2,tag=pr.target,scores={subchronos_y=54..56}] at @a[tag=subchronos_pit2,tag=pr.target,scores={subchronos_y=54..56}] if block ~ ~-0.4 ~ minecraft:orange_concrete run damage @s 1000 minecraft:sting
return 1