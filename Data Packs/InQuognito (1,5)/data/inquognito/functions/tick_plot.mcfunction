execute as @a[tag=pr.target] run function inquognito:tick_players

function inquognito:logic/plot/pistons/tick

function inquognito:logic/plot/trash_room/tick

# Gates
execute as @e[type=minecraft:marker,tag=inquognito.gate] at @s run function inquognito:logic/plot/gates/tick

# Moving Barrier
execute as @e[type=minecraft:item_display,tag=inquognito.movingBarrier] at @s run function inquognito:logic/plot/moving_barrier/tick

# Janitor
execute as @e[type=minecraft:zombie_villager,tag=inquognito.enemy.janitor] run function inquognito:logic/enemies/common/janitor/tick
execute as @e[type=minecraft:arrow,tag=inquognito.acid_spray] at @s run function inquognito:logic/enemies/common/janitor/acid_spray/tick

# Cameras
execute as @e[type=minecraft:armor_stand,tag=inquognito.camera] at @s anchored eyes run function inquognito:logic/plot/cameras/raycast/start

# Propellers
execute as @e[type=minecraft:item_display,tag=inquognito.propeller] at @s run teleport @s ~ ~ ~ ~60.0 ~

# Enemies
## Red Sector
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.1] run scoreboard players add enemy.1 inquognito.temp 1
execute if score enemy.1 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.1] summon minecraft:zombie_villager run function inquognito:logic/enemies/1

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.2] run scoreboard players add enemy.2 inquognito.temp 1
execute if score enemy.2 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.2] summon minecraft:zombie_villager run function inquognito:logic/enemies/2

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.3] run scoreboard players add enemy.3 inquognito.temp 1
execute if score enemy.3 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.3] summon minecraft:zombie_villager run function inquognito:logic/enemies/3

## Trash Room
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.4] run scoreboard players add enemy.4 inquognito.temp 1
execute if score enemy.4 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.4] summon minecraft:zombie_villager run function inquognito:logic/enemies/4

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.5] run scoreboard players add enemy.5 inquognito.temp 1
execute if score enemy.5 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.5] summon minecraft:zombie_villager run function inquognito:logic/enemies/5

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.6] run scoreboard players add enemy.6 inquognito.temp 1
execute if score enemy.6 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.6] summon minecraft:zombie_villager run function inquognito:logic/enemies/6

## Sewer - Entrance
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.11] run scoreboard players add enemy.11 inquognito.temp 1
execute if score enemy.11 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.11] summon minecraft:zombie_villager run function inquognito:logic/enemies/11

## Sewer - Puddle
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.12] run scoreboard players add enemy.12 inquognito.temp 1
execute if score enemy.12 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.12] summon minecraft:drowned run function inquognito:logic/enemies/12

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.13] run scoreboard players add enemy.13 inquognito.temp 1
execute if score enemy.13 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.13] summon minecraft:drowned run function inquognito:logic/enemies/13

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.14] run scoreboard players add enemy.14 inquognito.temp 1
execute if score enemy.14 inquognito.temp matches 100.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.14] summon minecraft:drowned run function inquognito:logic/enemies/14

## Sector 4
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

## Boss Room - Parkour Area
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.20] run scoreboard players add enemy.20 inquognito.temp 1
execute if score enemy.20 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.20] summon minecraft:zombie_villager run function inquognito:logic/enemies/20

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.21] run scoreboard players add enemy.21 inquognito.temp 1
execute if score enemy.21 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.21] summon minecraft:zombie_villager run function inquognito:logic/enemies/21

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.22] run scoreboard players add enemy.22 inquognito.temp 1
execute if score enemy.22 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.22] summon minecraft:zombie_villager run function inquognito:logic/enemies/22

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.23] run scoreboard players add enemy.23 inquognito.temp 1
execute if score enemy.23 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.23] summon minecraft:zombie_villager run function inquognito:logic/enemies/23

## Sewer - Infested Scientists
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.24] run scoreboard players add enemy.24 inquognito.temp 1
execute if score enemy.24 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.24] summon minecraft:zombie_villager run function inquognito:logic/enemies/24

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.25] run scoreboard players add enemy.25 inquognito.temp 1
execute if score enemy.25 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.25] summon minecraft:zombie_villager run function inquognito:logic/enemies/25

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.26] run scoreboard players add enemy.26 inquognito.temp 1
execute if score enemy.26 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.26] summon minecraft:zombie_villager run function inquognito:logic/enemies/26

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.27] run scoreboard players add enemy.27 inquognito.temp 1
execute if score enemy.27 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.27] summon minecraft:zombie_villager run function inquognito:logic/enemies/27

## Sector 6
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.28] run scoreboard players add enemy.28 inquognito.temp 1
execute if score enemy.28 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.28] summon minecraft:zombie_villager run function inquognito:logic/enemies/28

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.29] run scoreboard players add enemy.29 inquognito.temp 1
execute if score enemy.29 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.29] summon minecraft:zombie_villager run function inquognito:logic/enemies/29

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.30] run scoreboard players add enemy.30 inquognito.temp 1
execute if score enemy.30 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.30] summon minecraft:zombie_villager run function inquognito:logic/enemies/30

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.31] run scoreboard players add enemy.31 inquognito.temp 1
execute if score enemy.31 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.31] summon minecraft:zombie_villager run function inquognito:logic/enemies/31

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.32] run scoreboard players add enemy.32 inquognito.temp 1
execute if score enemy.32 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.32] summon minecraft:zombie_villager run function inquognito:logic/enemies/32

## Boss Room - Battle Area
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.33] run scoreboard players add enemy.33 inquognito.temp 1
execute if score enemy.33 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.33] summon minecraft:zombie_villager run function inquognito:logic/enemies/33

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.34] run scoreboard players add enemy.34 inquognito.temp 1
execute if score enemy.34 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.34] summon minecraft:zombie_villager run function inquognito:logic/enemies/34

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.35] run scoreboard players add enemy.35 inquognito.temp 1
execute if score enemy.35 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.35] summon minecraft:zombie_villager run function inquognito:logic/enemies/35

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.36] run scoreboard players add enemy.36 inquognito.temp 1
execute if score enemy.36 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.36] summon minecraft:zombie_villager run function inquognito:logic/enemies/36

## Escape Sequence
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.37] run scoreboard players add enemy.37 inquognito.temp 1
execute if score enemy.37 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.37] summon minecraft:zombie_villager run function inquognito:logic/enemies/37

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.38] run scoreboard players add enemy.38 inquognito.temp 1
execute if score enemy.38 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.38] summon minecraft:zombie_villager run function inquognito:logic/enemies/38

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.39] run scoreboard players add enemy.39 inquognito.temp 1
execute if score enemy.39 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.39] summon minecraft:zombie_villager run function inquognito:logic/enemies/39

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.40] run scoreboard players add enemy.40 inquognito.temp 1
execute if score enemy.40 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.40] summon minecraft:zombie_villager run function inquognito:logic/enemies/40

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.41] run scoreboard players add enemy.41 inquognito.temp 1
execute if score enemy.41 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.41] summon minecraft:zombie_villager run function inquognito:logic/enemies/41

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.42] run scoreboard players add enemy.42 inquognito.temp 1
execute if score enemy.42 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.42] summon minecraft:zombie_villager run function inquognito:logic/enemies/42

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.43] run scoreboard players add enemy.43 inquognito.temp 1
execute if score enemy.43 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.43] summon minecraft:zombie_villager run function inquognito:logic/enemies/43

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.44] run scoreboard players add enemy.44 inquognito.temp 1
execute if score enemy.44 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.44] summon minecraft:zombie_villager run function inquognito:logic/enemies/44

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.45] run scoreboard players add enemy.45 inquognito.temp 1
execute if score enemy.45 inquognito.temp matches 80.. at @e[type=minecraft:marker,tag=inquognito.enemy_spawn.45] summon minecraft:warden run function inquognito:logic/enemies/45

## Frostbite
execute as @e[type=#inquognito:enemies,scores={inquognito.frostbite_timer=1..},tag=pr.target] at @s run function inquognito:logic/abilities/gun/augments/frostbite/tick

# Killboxes
execute positioned ~-18 ~18 ~12 run kill @e[dx=6,dy=0,dz=5,predicate=inquognito:killbox_vulnerable]

execute positioned ~10 ~-11 ~-34 run kill @e[dx=28,dy=0,dz=17,predicate=inquognito:killbox_vulnerable]

execute positioned ~-36 ~-17.5 ~-35 run kill @e[dx=12,dy=0,dz=2,predicate=inquognito:killbox_vulnerable]
execute positioned ~-26 ~-17.5 ~-32 run kill @e[dx=2,dy=0,dz=8,predicate=inquognito:killbox_vulnerable]
execute positioned ~-23 ~-17.5 ~-28 run kill @e[dx=5,dy=0,dz=4,predicate=inquognito:killbox_vulnerable]

execute positioned ~-36 ~-43 ~-29 run kill @e[type=!minecraft:player,dx=67,dy=0,dz=67,predicate=inquognito:killbox_vulnerable]
execute positioned ~-36 ~-43 ~-29 as @a[dx=67,dy=0,dz=67,tag=pr.target] run function inquognito:logic/plot/boss/respawn_player

# Keypad
execute as @e[type=minecraft:interaction,tag=inquognito.keypad.key.button] on target run tag @s add inquognito.key.click
execute as @e[type=minecraft:interaction,tag=inquognito.keypad.key.button] on attacker run tag @s add inquognito.key.click
execute as @a[tag=pr.target,tag=inquognito.key.click] at @s run function inquognito:logic/plot/keypad/click

execute if score tick inquognito.keypad matches 1.. run scoreboard players remove tick inquognito.keypad 1
execute if score tick inquognito.keypad matches 0 run kill @e[tag=inquognitokeyerror]

execute as @e[tag=inquognitokeyk] if score @s inquognito.keypad matches 1 at @s run tp @s ^ ^ ^0.05
execute as @e[tag=inquognitokeyk] if score @s inquognito.keypad matches 1.. run scoreboard players remove @s inquognito.keypad 1
