execute at @e[tag=snake_3,tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ cyan_concrete
tag @e[tag=snake_3,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_3,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_3,tag=block,tag=aljaza.snake,tag=pr.target] 3_sn_timer 1
execute at @e[scores={3_sn_timer=4},tag=pr.target] run tag @e[tag=snake_3,tag=!endSnake,distance=..1.1,tag=aljaza.snake,tag=pr.target] add beginSnake

execute at @e[type=armor_stand,scores={3_sn_timer=15},tag=pr.target] run setblock ~ ~1 ~ cyan_concrete
execute at @e[type=armor_stand,scores={3_sn_timer=49},tag=pr.target] run setblock ~ ~1 ~ cyan_concrete
execute at @e[type=armor_stand,scores={3_sn_timer=75},tag=pr.target] run setblock ~ ~1 ~ cyan_stained_glass
execute at @e[type=armor_stand,scores={3_sn_timer=120},tag=pr.target] run setblock ~ ~1 ~ cyan_concrete
execute at @e[type=armor_stand,scores={3_sn_timer=190},tag=pr.target] run setblock ~ ~1 ~ cyan_stained_glass
execute at @e[type=armor_stand,scores={3_sn_timer=240},tag=pr.target] run setblock ~ ~1 ~ cyan_concrete
execute at @e[type=armor_stand,scores={3_sn_timer=300},tag=pr.target] run setblock ~ ~1 ~ cyan_stained_glass


tag @e[scores={3_sn_timer=240},tag=pr.target] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ air 
scoreboard players reset @e[tag=snake_3,tag=endSnake,tag=aljaza.snake,tag=pr.target] 3_sn_timer
tag @e[tag=snake_3,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_3,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake