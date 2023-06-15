execute at @e[tag=snake_4,tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ pink_concrete
tag @e[tag=snake_4,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_4,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_4,tag=block,tag=aljaza.snake,tag=pr.target] 4_sn_timer 1
execute at @e[scores={4_sn_timer=4},tag=pr.target] run tag @e[tag=snake_4,tag=!endSnake,distance=..1.1,tag=aljaza.snake,tag=pr.target] add beginSnake

execute at @e[type=armor_stand,scores={4_sn_timer=15},tag=pr.target] run setblock ~ ~1 ~ pink_concrete
execute at @e[type=armor_stand,scores={4_sn_timer=49},tag=pr.target] run setblock ~ ~1 ~ pink_concrete
execute at @e[type=armor_stand,scores={4_sn_timer=74},tag=pr.target] run setblock ~ ~1 ~ pink_stained_glass
execute at @e[type=armor_stand,scores={4_sn_timer=100},tag=pr.target] run setblock ~ ~1 ~ pink_concrete
execute at @e[type=armor_stand,scores={4_sn_timer=131},tag=pr.target] run setblock ~ ~1 ~ pink_stained_glass
execute at @e[type=armor_stand,scores={4_sn_timer=160},tag=pr.target] run setblock ~ ~1 ~ pink_concrete
execute at @e[type=armor_stand,scores={4_sn_timer=181},tag=pr.target] run setblock ~ ~1 ~ pink_stained_glass

tag @e[scores={4_sn_timer=200},tag=pr.target] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ air 
scoreboard players reset @e[tag=snake_4,tag=endSnake,tag=aljaza.snake,tag=pr.target] 4_sn_timer
tag @e[tag=snake_4,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_4,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake