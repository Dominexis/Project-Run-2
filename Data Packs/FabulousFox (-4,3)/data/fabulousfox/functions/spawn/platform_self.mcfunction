# Calculate block distance x fabulousfox_spawn_args + y fabulousfox_spawn_args + z fabulousfox_spawn_args = fabulousfox_spawn_args blocks
scoreboard players operation blocks fabulousfox_spawn_args = x fabulousfox_spawn_args
scoreboard players operation blocks fabulousfox_spawn_args += y fabulousfox_spawn_args
scoreboard players operation blocks fabulousfox_spawn_args += z fabulousfox_spawn_args
execute if score blocks fabulousfox_spawn_args matches ..0 run scoreboard players operation blocks fabulousfox_spawn_args *= inverse fabulousfox_static

# Calculate max steps = stepsperblock fabulousfox_static * blocks fabulousfox_spawn_args
scoreboard players operation @s fabulousfox_platform_max_steps = stepsperblock fabulousfox_static
scoreboard players operation @s fabulousfox_platform_max_steps *= blocks fabulousfox_spawn_args
scoreboard players operation @s fabulousfox_platform_max_steps += extendplatform fabulousfox_static

# Set steps to 0
scoreboard players set @s fabulousfox_platform_steps 0

# Set dir to 1
scoreboard players set @s fabulousfox_platform_dir 1

# Set Yaw & pitch
execute if score x fabulousfox_spawn_args matches 0 if score y fabulousfox_spawn_args matches 0 if score z fabulousfox_spawn_args matches 0.. rotated 0 0 run function fabulousfox:spawn/platform_self2
execute if score x fabulousfox_spawn_args matches 0 if score y fabulousfox_spawn_args matches 0 if score z fabulousfox_spawn_args matches ..-1 rotated 180 0 run function fabulousfox:spawn/platform_self2
execute if score x fabulousfox_spawn_args matches 0 if score y fabulousfox_spawn_args matches 1.. if score z fabulousfox_spawn_args matches 0 rotated 0 -90 run function fabulousfox:spawn/platform_self2
execute if score x fabulousfox_spawn_args matches 0 if score y fabulousfox_spawn_args matches ..-1 if score z fabulousfox_spawn_args matches 0 rotated 0 90 run function fabulousfox:spawn/platform_self2
execute if score x fabulousfox_spawn_args matches 0.. if score y fabulousfox_spawn_args matches 0 if score z fabulousfox_spawn_args matches 0 rotated 90 0 run function fabulousfox:spawn/platform_self2
execute if score x fabulousfox_spawn_args matches ..0 if score y fabulousfox_spawn_args matches 0 if score z fabulousfox_spawn_args matches 0 rotated -90 0 run function fabulousfox:spawn/platform_self2

tag @s remove fabulousfox_platform_init