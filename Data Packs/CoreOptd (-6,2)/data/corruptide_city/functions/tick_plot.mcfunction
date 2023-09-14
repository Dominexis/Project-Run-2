# This function will run every tick while players are in your plot on the center block at Y=0
#JUMP PAD COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ lime_wool run effect give @s minecraft:jump_boost 1 11 true
#SPEED TUNNEL COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ light_blue_wool run effect give @s minecraft:speed 1 18 true
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ blue_wool run effect give @s minecraft:speed 1 120 true
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ light_gray_wool run effect clear @s minecraft:speed
#QOL & CHECKPOINT COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~ ~ water run effect give @s minecraft:dolphins_grace 3 3 true
execute at @e[tag=corecity.checkpoint,type=armor_stand,tag=pr.target] as @a[tag=coretidecity_player_tag,tag=pr.target,distance=..3] run function pr:player/checkpoint/mark
#LIFTER COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ white_wool run effect give @s minecraft:levitation 2 32 true
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-3 ~ white_wool run effect give @s minecraft:slow_falling 1 0 true
#DEATH COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-0.00000001 ~ red_stained_glass_pane run kill @s
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-1 ~ barrier run kill @s
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-0.5 ~ iron_bars run kill @s
#ELEVATOR COMMANDS
execute as @e[tag=corecity.elevator_start,type=armor_stand,tag=pr.target] at @s run tp @a[tag=coretidecity_player_tag,tag=pr.target,distance=..2] ~-2 ~-27.5 ~-1 -90 0
execute as @e[tag=corecity.elevator_end,type=armor_stand,tag=pr.target] at @s run tp @a[tag=coretidecity_player_tag,tag=pr.target,distance=..2] ~ ~41.5 ~ -90 0
#ENDING COMMANDS
execute positioned ~-39 ~84 ~0 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.1
execute positioned ~-39 ~84 ~0 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute positioned ~-39 ~84 ~0 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function pr:player/finish

execute positioned ~-39 ~84 ~-2 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.1
execute positioned ~-39 ~84 ~-2 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute positioned ~-39 ~84 ~-2 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function pr:player/finish