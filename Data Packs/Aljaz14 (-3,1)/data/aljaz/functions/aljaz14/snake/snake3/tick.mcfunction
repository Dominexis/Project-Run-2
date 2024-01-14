execute at @e[tag=snake_3,tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ minecraft:cyan_concrete
tag @e[tag=snake_3,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_3,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_3,tag=block,tag=aljaza.snake,tag=pr.target] 3_sn_timer 1
execute at @e[tag=pr.target,scores={3_sn_timer=4}] run tag @e[distance=..1.1,tag=snake_3,tag=!endSnake,tag=aljaza.snake,tag=pr.target] add beginSnake

execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=15}] run setblock ~ ~1 ~ minecraft:cyan_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=49}] run setblock ~ ~1 ~ minecraft:cyan_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=75}] run setblock ~ ~1 ~ minecraft:cyan_stained_glass
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=120}] run setblock ~ ~1 ~ minecraft:cyan_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=190}] run setblock ~ ~1 ~ minecraft:cyan_stained_glass
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=240}] run setblock ~ ~1 ~ minecraft:cyan_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={3_sn_timer=300}] run setblock ~ ~1 ~ minecraft:cyan_stained_glass


tag @e[tag=pr.target,scores={3_sn_timer=240}] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ minecraft:air
scoreboard players reset @e[tag=snake_3,tag=endSnake,tag=aljaza.snake,tag=pr.target] 3_sn_timer
tag @e[tag=snake_3,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_3,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake
return 1