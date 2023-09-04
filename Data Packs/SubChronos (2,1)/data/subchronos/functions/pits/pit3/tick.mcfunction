#Cycle
scoreboard players add pit3 subchronos_hive 1

execute if score pit3 subchronos_hive matches 1 run function subchronos:pits/pit3/rise
execute if score pit3 subchronos_hive matches 35 run function subchronos:pits/pit3/rise2
execute if score pit3 subchronos_hive matches 100 run function subchronos:pits/pit3/low
execute if score pit3 subchronos_hive matches 115 run function subchronos:pits/pit3/low2
execute if score pit3 subchronos_hive matches 140 run function subchronos:pits/pit3/low3
execute if score pit3 subchronos_hive matches 200.. run scoreboard players reset pit3 subchronos_hive

#SFX
execute if score pit3_moving subchronos_hive matches 1 run playsound minecraft:block.honey_block.slide master @a[tag=pr.target] ~ ~ ~ 5 1

#Death if falls
execute as @a[scores={subchronos_y=-3},tag=subchronos_pit3,tag=pr.target] at @a[scores={subchronos_y=-3},tag=subchronos_pit3,tag=pr.target] if block ~ ~-1 ~ ochre_froglight run damage @s 1000 minecraft:sting
execute if score pit3_rised subchronos_hive matches 1 as @a[scores={subchronos_y=-3..0},tag=subchronos_pit3,tag=pr.target] at @a[scores={subchronos_y=-3..0},tag=subchronos_pit3,tag=pr.target] if block ~ ~-0.4 ~ gray_terracotta run damage @s 1000 minecraft:sting
execute if score pit3_rised subchronos_hive matches 1 as @a[scores={subchronos_y=-3..0},tag=subchronos_pit3,tag=pr.target] at @a[scores={subchronos_y=-3..0},tag=subchronos_pit3,tag=pr.target] if block ~ ~-0.4 ~ orange_concrete run damage @s 1000 minecraft:sting