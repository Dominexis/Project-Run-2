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
execute as @a[scores={subchronos_y=54},tag=subchronos_pit2,tag=pr.target] at @a[scores={subchronos_y=54},tag=subchronos_pit2,tag=pr.target] if block ~ ~-1 ~ yellow_concrete run damage @s 1000 minecraft:sting
execute if score pit2_rised subchronos_hive matches 1 as @a[scores={subchronos_y=54..56},tag=subchronos_pit2,tag=pr.target] at @a[scores={subchronos_y=54..56},tag=subchronos_pit2,tag=pr.target] if block ~ ~-0.4 ~ gray_terracotta run damage @s 1000 minecraft:sting
execute if score pit2_rised subchronos_hive matches 1 as @a[scores={subchronos_y=54..56},tag=subchronos_pit2,tag=pr.target] at @a[scores={subchronos_y=54..56},tag=subchronos_pit2,tag=pr.target] if block ~ ~-0.4 ~ orange_concrete run damage @s 1000 minecraft:sting