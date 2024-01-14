scoreboard players add alarm_rot masp005.val 15
scoreboard players operation alarm_rot masp005.val %= 180 masp005.val
# that targets the alarm armor stands, not players
execute as @e[tag=masp005.alarm] store result entity @s Pose.Head[2] float 1 run scoreboard players get alarm_rot masp005.val

execute if score alarm_rot masp005.val matches 0 run particle minecraft:falling_water ~8.0 ~17 ~1.5 .1 0 .1 1 1
execute if score alarm_rot masp005.val matches 0 run particle minecraft:falling_water ~8.0 ~18 ~-8.5 .6 0 .3 1 1
execute if score alarm_rot masp005.val matches 90 run particle minecraft:falling_water ~8.0 ~18 ~-8.5 .6 0 .3 1 1

execute positioned ~-7 ~-31 ~-19 as @a[dx=29,dy=1,dz=29,tag=pr.target] positioned ~7 ~31 ~19 run tp @s ~-10 ~103 ~-2
execute positioned ~4 ~59 ~30 as @a[dx=16,dy=6,dz=10,tag=pr.target] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s pr.death 1
execute positioned ~6 ~56 ~14 as @a[dx=7,dy=2,dz=6,tag=pr.target] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s pr.death 1
execute positioned ~-10 ~-4 ~-32 as @a[dx=36,dy=57,dz=63,tag=pr.target] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s pr.death 1

# execute as @a[tag=pr.target] at @s if block ~ ~ ~ light_weighted_pressure_plate run function pr:player/checkpoint/mark

execute at @e[tag=masp005.elytra] as @a[distance=..1,tag=pr.target,tag=!masp005.equipped] at @s run function masp005:equip
return 1