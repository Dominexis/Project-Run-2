function inquognito:logic/tick

# Gun
execute as @e[type=minecraft:marker,tag=inquognito.gun] at @s run function inquognito:logic/abilities/gun/tick

# Gates
execute as @e[type=minecraft:marker,tag=inquognito.gate] at @s run function inquognito:logic/gates/tick

# Moving Barrier
execute as @e[type=minecraft:item_display,tag=inquognito.movingBarrier] at @s run function inquognito:logic/plot/moving_barrier/tick

# Enemies
execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.1] run scoreboard players add enemy.1 inquognito.temp 1
execute if score enemy.1 inquognito.temp matches 100.. positioned ~15 ~43 ~-36 summon minecraft:zombie_villager run function inquognito:logic/enemies/1

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.2] run scoreboard players add enemy.2 inquognito.temp 1
execute if score enemy.2 inquognito.temp matches 100.. positioned ~20 ~43 ~-32 summon minecraft:zombie_villager run function inquognito:logic/enemies/2

execute unless entity @e[type=#inquognito:enemies,tag=inquognito.enemy.3] run scoreboard players add enemy.3 inquognito.temp 1
execute if score enemy.3 inquognito.temp matches 100.. positioned ~25 ~43 ~-36 summon minecraft:zombie_villager run function inquognito:logic/enemies/3

execute as @e[type=#inquognito:enemies,scores={inquognito.frostbite_timer=1..}] at @s run function inquognito:logic/abilities/gun/augments/frostbite/tick
