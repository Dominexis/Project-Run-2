function inquognito:logic/tick

# Gates
execute as @e[type=minecraft:marker,tag=inquognito.gate] at @s run function inquognito:logic/gates/tick

# Moving Barrier
execute as @e[type=minecraft:item_display,tag=inquognito.movingBarrier] at @s run function inquognito:logic/plot/moving_barrier/tick

# Cameras
execute as @e[type=minecraft:armor_stand,tag=inquognito.camera] at @s anchored eyes run function inquognito:logic/plot/cameras/raycast/start

# Propellers
execute as @e[type=minecraft:item_display,tag=inquognito.propeller] at @s run teleport @s ~ ~ ~ ~60.0 ~

# Particles
particle minecraft:sculk_soul ~-5 ~-25 ~3 25.0 10.0 25.0 0.0 2 normal @a

particle minecraft:ash ~-5 ~-35 ~-21 5.0 5.0 10.0 0.0 50 normal @a
particle minecraft:ash ~2 ~-30 ~-8 1.0 1.0 1.0 0.0 1 normal @a
particle minecraft:ash ~-5 ~-30 ~5 2.5 1.0 5.0 0.0 5 normal @a
particle minecraft:ash ~-5 ~-30 ~13 10.0 1.0 2.5 0.0 10 normal @a
particle minecraft:ash ~18 ~-25 ~13 5.0 20.0 5.0 0.0 50 normal @a
particle minecraft:ash ~-24.5 ~-25 ~5 2.0 2.0 2.0 0.0 5 normal @a
particle minecraft:ash ~-26 ~-25 ~-11.5 10.0 10.0 10.0 0.0 50 normal @a

particle minecraft:ash ~-5 ~-30 ~27 5.0 5.0 5.0 0.0 10 normal @a

# Enemies
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.1] run scoreboard players add enemy.1 inquognito.temp 1
execute if score enemy.1 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.1] summon minecraft:zombie_villager run function inquognito:logic/enemies/1

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.2] run scoreboard players add enemy.2 inquognito.temp 1
execute if score enemy.2 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.2] summon minecraft:zombie_villager run function inquognito:logic/enemies/2

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.3] run scoreboard players add enemy.3 inquognito.temp 1
execute if score enemy.3 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.3] summon minecraft:zombie_villager run function inquognito:logic/enemies/3


execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.4] run scoreboard players add enemy.4 inquognito.temp 1
execute if score enemy.4 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.4] summon minecraft:zombie_villager run function inquognito:logic/enemies/4

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.5] run scoreboard players add enemy.5 inquognito.temp 1
execute if score enemy.5 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.5] summon minecraft:zombie_villager run function inquognito:logic/enemies/5

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.6] run scoreboard players add enemy.6 inquognito.temp 1
execute if score enemy.6 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.6] summon minecraft:zombie_villager run function inquognito:logic/enemies/6


execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.11] run scoreboard players add enemy.11 inquognito.temp 1
execute if score enemy.11 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.11] summon minecraft:zombie_villager run function inquognito:logic/enemies/11


execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.12] run scoreboard players add enemy.12 inquognito.temp 1
execute if score enemy.12 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.12] summon minecraft:drowned run function inquognito:logic/enemies/12

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.13] run scoreboard players add enemy.13 inquognito.temp 1
execute if score enemy.13 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.13] summon minecraft:drowned run function inquognito:logic/enemies/13

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.14] run scoreboard players add enemy.14 inquognito.temp 1
execute if score enemy.14 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.14] summon minecraft:drowned run function inquognito:logic/enemies/14


execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.15] run scoreboard players add enemy.15 inquognito.temp 1
execute if score enemy.15 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.15] summon minecraft:zombie_villager run function inquognito:logic/enemies/15

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.16] run scoreboard players add enemy.16 inquognito.temp 1
execute if score enemy.16 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.16] summon minecraft:zombie_villager run function inquognito:logic/enemies/16

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.17] run scoreboard players add enemy.17 inquognito.temp 1
execute if score enemy.17 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.17] summon minecraft:zombie_villager run function inquognito:logic/enemies/17

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.18] run scoreboard players add enemy.18 inquognito.temp 1
execute if score enemy.18 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.18] summon minecraft:zombie_villager run function inquognito:logic/enemies/18

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.19] run scoreboard players add enemy.19 inquognito.temp 1
execute if score enemy.19 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.19] summon minecraft:zombie_villager run function inquognito:logic/enemies/19


execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.20] run scoreboard players add enemy.20 inquognito.temp 1
execute if score enemy.20 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.20] summon minecraft:zombie_villager run function inquognito:logic/enemies/20

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.21] run scoreboard players add enemy.21 inquognito.temp 1
execute if score enemy.21 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.21] summon minecraft:zombie_villager run function inquognito:logic/enemies/21

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.22] run scoreboard players add enemy.22 inquognito.temp 1
execute if score enemy.22 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.22] summon minecraft:zombie_villager run function inquognito:logic/enemies/22

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.23] run scoreboard players add enemy.23 inquognito.temp 1
execute if score enemy.23 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.23] summon minecraft:zombie_villager run function inquognito:logic/enemies/23

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.24] run scoreboard players add enemy.24 inquognito.temp 1
execute if score enemy.24 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.24] summon minecraft:zombie_villager run function inquognito:logic/enemies/24

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.25] run scoreboard players add enemy.25 inquognito.temp 1
execute if score enemy.25 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.25] summon minecraft:zombie_villager run function inquognito:logic/enemies/25

execute as @e[type=#inquognito:enemies,scores={inquognito.frostbite_timer=1..}] at @s run function inquognito:logic/abilities/gun/augments/frostbite/tick

# Killboxes
execute positioned ~-18 ~18 ~12 run kill @e[predicate=inquognito:targets,dx=6,dy=0,dz=5]
execute positioned ~10 ~-11 ~-34 run kill @e[predicate=inquognito:targets,dx=28,dy=0,dz=17]
execute positioned ~-36 ~-43 ~-29 run kill @e[predicate=inquognito:targets,dx=67,dy=0,dz=67]
