execute at @e[tag=snake_2,tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ orange_terracotta
tag @e[tag=snake_2,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_2,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_2,tag=block,tag=aljaza.snake,tag=pr.target] 2_sn_timer 1
execute at @e[scores={2_sn_timer=4},tag=pr.target] run tag @e[tag=snake_2,tag=!endSnake,distance=..1.1,tag=aljaza.snake,tag=pr.target] add beginSnake

execute at @e[type=armor_stand,scores={2_sn_timer=15},tag=pr.target] run setblock ~ ~1 ~ orange_terracotta
execute at @e[type=armor_stand,scores={2_sn_timer=29},tag=pr.target] run setblock ~ ~1 ~ orange_terracotta
execute at @e[type=armor_stand,scores={2_sn_timer=45},tag=pr.target] run setblock ~ ~1 ~ yellow_terracotta
execute at @e[type=armor_stand,scores={2_sn_timer=60},tag=pr.target] run setblock ~ ~1 ~ honeycomb_block
execute at @e[type=armor_stand,scores={2_sn_timer=71},tag=pr.target] run setblock ~ ~1 ~ yellow_terracotta
execute at @e[type=armor_stand,scores={2_sn_timer=110},tag=pr.target] run setblock ~ ~1 ~ orange_terracotta


tag @e[scores={2_sn_timer=120},tag=pr.target] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ air 
scoreboard players reset @e[tag=snake_2,tag=endSnake,tag=aljaza.snake,tag=pr.target] 2_sn_timer
tag @e[tag=snake_2,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_2,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake