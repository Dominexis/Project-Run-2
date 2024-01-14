execute at @e[tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ minecraft:lime_concrete
tag @e[tag=snake_1,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_1,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_1,tag=block,tag=aljaza.snake,tag=pr.target] 1_sn_timer 1
execute at @e[tag=pr.target,scores={1_sn_timer=4}] run tag @e[distance=..1.1,tag=snake_1,tag=aljaza.snake,tag=pr.target,tag=!endSnake] add beginSnake

execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={1_sn_timer=15}] run setblock ~ ~1 ~ minecraft:lime_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={1_sn_timer=29}] run setblock ~ ~1 ~ minecraft:lime_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={1_sn_timer=45}] run setblock ~ ~1 ~ minecraft:lime_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={1_sn_timer=60}] run setblock ~ ~1 ~ minecraft:green_concrete


tag @e[tag=pr.target,scores={1_sn_timer=75}] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ minecraft:air
scoreboard players reset @e[tag=snake_1,tag=endSnake,tag=aljaza.snake,tag=pr.target] 1_sn_timer
tag @e[tag=snake_1,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_1,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake
return 1