# Execute function at certain Y level

execute if score @s pr.checkpoint_y matches -4 positioned ~40 0 ~40 positioned ~-17 1 ~ align xz positioned ~0.5 ~ ~0.5 run function pr:player/checkpoint/tp
#execute if score @s pr.checkpoint_y matches 00 positioned ~40 -64 ~40 run function pr:player/checkpoint/tp
execute if score @s pr.checkpoint_y matches -1 positioned ~40 -16 ~40 run function pr:player/checkpoint/tp
execute if score @s pr.checkpoint_y matches 00 positioned ~40 000 ~40 run function pr:player/checkpoint/tp
execute if score @s pr.checkpoint_y matches 01 positioned ~40 016 ~40 run function pr:player/checkpoint/tp
execute if score @s pr.checkpoint_y matches 02 positioned ~40 032 ~40 run function pr:player/checkpoint/tp
execute if score @s pr.checkpoint_y matches 03 positioned ~40 048 ~40 run function pr:player/checkpoint/tp
execute if score @s pr.checkpoint_y matches 04 positioned ~40 064 ~40 run function pr:player/checkpoint/tp
return 1