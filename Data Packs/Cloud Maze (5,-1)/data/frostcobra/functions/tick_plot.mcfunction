# Summon entities a moment after activation otherwise the plot can break

execute if score spawn_delay frostcobra.count matches 1 run function frostcobra:spawn_entities
execute if score spawn_delay frostcobra.count matches 1.. run scoreboard players remove spawn_delay frostcobra.count 1

# Kill when falling from too high even before hitting the ground

execute as @a[tag=pr.target] store result score @s frostcobra.fallDistance run data get entity @s FallDistance
execute as @a[tag=pr.target,gamemode=adventure] if score @s frostcobra.fallDistance >= MAX_FALL frostcobra.constants run kill @a[tag=pr.target,scores={frostcobra.fallDistance=10..}]

# Kill players on ground

execute as @e[tag=pr.target,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:weathered_copper run kill @s

# Particles

execute at @e[tag=pr.target,tag=frostcobra.portalIn] run particle minecraft:dust 0.7 0.5 1.0 1.0 ~ ~0.75 ~ 0.6 0.6 0.6 0.1 2
execute at @e[tag=pr.target,tag=frostcobra.portalOut] run particle minecraft:dust 1.0 0.6 0.3 1.0 ~ ~0.75 ~ 0.6 0.6 0.6 0.1 2
execute at @e[tag=pr.target,tag=frostcobra.checkpoint] run particle minecraft:dust 1.0 1.0 1.0 0.8 ~ ~1 ~ 0.1 1 0.1 0.1 1
execute at @e[tag=pr.target,tag=frostcobra.finish] run particle minecraft:dust 0.2 1.0 0.2 1.0 ~ ~0.75 ~ 0.6 0.6 0.6 0.1 2
particle minecraft:end_rod ~-23 ~122 ~-1 0.2 4 0.2 0.05 1

# Teleport

execute as @e[tag=pr.target,tag=frostcobra.portalIn,scores={frostcobra.portals=1..}] at @s run function frostcobra:detect_portal_in
execute if entity @a[tag=pr.target,scores={frostcobra.tp=1..}] as @e[tag=pr.target,tag=frostcobra.portalOut,scores={frostcobra.portals=1..}] at @s run function frostcobra:tp_player
scoreboard players reset @a frostcobra.tp
scoreboard players reset @a frostcobra.tp2

# Checkpoints

execute as @e[tag=frostcobra.checkpoint] at @s run function frostcobra:checkpoint
scoreboard players reset @a frostcobra.tp
scoreboard players reset @a frostcobra.tp2

# Finish

execute at @e[tag=pr.target,tag=frostcobra.finish] as @a[tag=pr.target,distance=..1.7] run function pr:player/finish

# Effects

execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ minecraft:emerald_block run effect give @s minecraft:levitation 10 1 true
execute positioned ~-26 ~82 ~-15 run effect give @a[tag=pr.target,distance=..8] minecraft:blindness 2 0 true
