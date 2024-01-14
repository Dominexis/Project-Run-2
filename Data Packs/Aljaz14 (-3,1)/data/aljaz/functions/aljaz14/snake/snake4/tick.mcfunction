execute at @e[tag=snake_4,tag=beginSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ minecraft:pink_concrete
tag @e[tag=snake_4,tag=beginSnake,tag=aljaza.snake,tag=pr.target] add block
tag @e[tag=snake_4,tag=block,tag=aljaza.snake,tag=pr.target] remove beginSnake
scoreboard players add @e[tag=snake_4,tag=block,tag=aljaza.snake,tag=pr.target] 4_sn_timer 1
execute at @e[tag=pr.target,scores={4_sn_timer=4}] run tag @e[distance=..1.1,tag=snake_4,tag=!endSnake,tag=aljaza.snake,tag=pr.target] add beginSnake

execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=15}] run setblock ~ ~1 ~ minecraft:pink_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=49}] run setblock ~ ~1 ~ minecraft:pink_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=74}] run setblock ~ ~1 ~ minecraft:pink_stained_glass
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=100}] run setblock ~ ~1 ~ minecraft:pink_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=141}] run setblock ~ ~1 ~ minecraft:pink_stained_glass
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=200}] run setblock ~ ~1 ~ minecraft:pink_concrete
execute at @e[type=minecraft:armor_stand,tag=pr.target,scores={4_sn_timer=260}] run setblock ~ ~1 ~ minecraft:pink_stained_glass

tag @e[tag=pr.target,scores={4_sn_timer=200}] add endSnake
execute at @e[tag=endSnake,tag=aljaza.snake,tag=pr.target] run setblock ~ ~1 ~ minecraft:air
scoreboard players reset @e[tag=snake_4,tag=endSnake,tag=aljaza.snake,tag=pr.target] 4_sn_timer
tag @e[tag=snake_4,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove block
tag @e[tag=snake_4,tag=endSnake,tag=aljaza.snake,tag=pr.target] remove endSnake
return 1