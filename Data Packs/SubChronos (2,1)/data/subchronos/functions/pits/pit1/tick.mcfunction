#Cycle
scoreboard players add pit1 subchronos_hive 1

execute if score pit1 subchronos_hive matches 10 run function subchronos:pits/pit1/rise
execute if score pit1 subchronos_hive matches 65 run function subchronos:pits/pit1/rise2
execute if score pit1 subchronos_hive matches 180 run function subchronos:pits/pit1/low
execute if score pit1 subchronos_hive matches 195 run function subchronos:pits/pit1/low2
execute if score pit1 subchronos_hive matches 235 run function subchronos:pits/pit1/low3
execute if score pit1 subchronos_hive matches 360.. run scoreboard players reset pit1 subchronos_hive

#SFX
execute if score pit1_moving subchronos_hive matches 1 run playsound minecraft:block.honey_block.slide master @a[tag=pr.target] ~ ~ ~ 5 1

#Death if falls
execute as @a[scores={subchronos_y=51},tag=subchronos_pit1,tag=pr.target] at @a[scores={subchronos_y=51},tag=subchronos_pit1,tag=pr.target] if block ~ ~-1 ~ yellow_concrete run damage @s 1000 minecraft:sting
execute if score pit1_rised subchronos_hive matches 1 as @a[scores={subchronos_y=51..56},tag=subchronos_pit1,tag=pr.target] at @a[scores={subchronos_y=51..56},tag=subchronos_pit1,tag=pr.target] if block ~ ~-0.4 ~ gray_terracotta run damage @s 1000 minecraft:sting
execute if score pit1_rised subchronos_hive matches 1 as @a[scores={subchronos_y=51..56},tag=subchronos_pit1,tag=pr.target] at @a[scores={subchronos_y=51..56},tag=subchronos_pit1,tag=pr.target] if block ~ ~-0.4 ~ orange_concrete run damage @s 1000 minecraft:sting