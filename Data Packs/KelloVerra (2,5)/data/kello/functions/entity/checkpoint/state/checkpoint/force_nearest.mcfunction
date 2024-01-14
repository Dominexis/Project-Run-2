tp @p[tag=kello.player.force_checkpoint] ~ ~ ~ ~ ~

execute at @s run function kello:entity/checkpoint/state/checkpoint/start
scoreboard players operation @s kello.entity.state = #state kello.value

execute if score @s kello.entity.state matches 1 run function kello:entity/checkpoint/state/checkpoint/main

execute as @e[type=minecraft:marker,tag=kello.mark.previous_pos] at @s run function kello:entity/checkpoint/state/checkpoint/force_nearest_tp
return 1