# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add fabulousfox_static dummy
scoreboard players set inverse fabulousfox_static -1
# With 2m/s => 0.1 blocks/tick => blocks 10 = steps
scoreboard players set stepsperblock fabulousfox_static 10
# 0.2 Blocks * 2
scoreboard players set extendplatform fabulousfox_static 5

scoreboard objectives add fabulousfox_spawn_args dummy
scoreboard objectives add fabulousfox_platform_max_steps dummy
scoreboard objectives add fabulousfox_platform_steps dummy
scoreboard objectives add fabulousfox_platform_dir dummy

# Lower 1
scoreboard players set x fabulousfox_spawn_args 0
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 4
execute positioned ~-12 ~2 ~-1 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Lower 2
scoreboard players set x fabulousfox_spawn_args -8
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~-6 ~5 ~17 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Lower 3
scoreboard players set x fabulousfox_spawn_args 8
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~10 ~13 ~-17 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Lower 4
scoreboard players set x fabulousfox_spawn_args 4
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~18 ~20 ~0 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Upper 1
scoreboard players set x fabulousfox_spawn_args 4
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~-2 ~28 ~-3 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Upper 2
scoreboard players set x fabulousfox_spawn_args 0
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 1
execute positioned ~-4 ~29 ~1 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Upper 3
scoreboard players set x fabulousfox_spawn_args 4
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~-7 ~29 ~5 positioned ~ ~ ~1 run function fabulousfox:spawn/platform2x2

# Top 1
scoreboard players set x fabulousfox_spawn_args -7
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~-20 ~30 ~-1 run function fabulousfox:spawn/platform1x1

# Top 2
scoreboard players set x fabulousfox_spawn_args 7
scoreboard players set y fabulousfox_spawn_args 0
scoreboard players set z fabulousfox_spawn_args 0
execute positioned ~-21 ~30 ~-1 positioned ~ ~ ~1 run function fabulousfox:spawn/platform1x1