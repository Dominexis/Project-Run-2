execute at @e[tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ lime_concrete
tag @e[tag=snake_1,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_1,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_1,tag=block,tag=aljaza.snake,tag=pr.target] 1_sn_timer 1
execute at @e[scores={1_sn_timer=4},tag=pr.target] run tag @e[tag=snake_1,tag=aljaza.snake,tag=pr.target,tag=!endSnake,distance=..1.1] add beginSnake

execute at @e[type=armor_stand,scores={1_sn_timer=15},tag=pr.target] run setblock ~ ~1 ~ lime_concrete
execute at @e[type=armor_stand,scores={1_sn_timer=29},tag=pr.target] run setblock ~ ~1 ~ lime_concrete
execute at @e[type=armor_stand,scores={1_sn_timer=45},tag=pr.target] run setblock ~ ~1 ~ lime_concrete
execute at @e[type=armor_stand,scores={1_sn_timer=60},tag=pr.target] run setblock ~ ~1 ~ green_concrete


tag @e[scores={1_sn_timer=75},tag=pr.target] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ air 
scoreboard players reset @e[tag=snake_1,tag=endSnake,tag=aljaza.snake,tag=pr.target] 1_sn_timer
tag @e[tag=snake_1,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_1,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake