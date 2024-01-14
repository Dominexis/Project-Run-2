# This function will run every tick while players are in your plot on the center block at Y=0
#JUMP PAD COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ minecraft:lime_wool run effect give @s minecraft:jump_boost 1 11 true
#SPEED TUNNEL COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ minecraft:light_blue_wool run effect give @s minecraft:speed 1 18 true
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ minecraft:blue_wool run effect give @s minecraft:speed 1 120 true
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ minecraft:light_gray_wool run effect clear @s minecraft:speed
#QOL & CHECKPOINT COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:dolphins_grace 3 3 true
execute at @e[type=minecraft:armor_stand,tag=corecity.checkpoint,tag=pr.target] as @a[distance=..3,tag=coretidecity_player_tag,tag=pr.target] run function pr:player/checkpoint/mark
#LIFTER COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-2 ~ minecraft:white_wool run effect give @s minecraft:levitation 2 32 true
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-3 ~ minecraft:white_wool run effect give @s minecraft:slow_falling 1 0 true
#DEATH COMMANDS
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-0.00000001 ~ minecraft:red_stained_glass_pane run kill @s
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:barrier run kill @s
execute as @a[tag=coretidecity_player_tag,tag=pr.target] at @s if block ~ ~-0.5 ~ minecraft:iron_bars run kill @s
#ELEVATOR COMMANDS
execute as @e[type=minecraft:armor_stand,tag=corecity.elevator_start,tag=pr.target] at @s run tp @a[distance=..2,tag=coretidecity_player_tag,tag=pr.target] ~-2 ~-27.5 ~-1 -90 0
execute as @e[type=minecraft:armor_stand,tag=corecity.elevator_end,tag=pr.target] at @s run tp @a[distance=..2,tag=coretidecity_player_tag,tag=pr.target] ~ ~41.5 ~ -90 0
#ENDING COMMANDS
execute positioned ~-39 ~84 ~0 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.1
execute positioned ~-39 ~84 ~0 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute positioned ~-39 ~84 ~0 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function pr:player/finish

execute positioned ~-39 ~84 ~-2 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.1
execute positioned ~-39 ~84 ~-2 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2
execute positioned ~-39 ~84 ~-2 as @a[distance=..2,tag=pr.target,sort=nearest,limit=1] if block ~ ~ ~ minecraft:mangrove_button[powered=true] run function pr:player/finish
return 1