# Kill if you are not in the block of your color

execute as @a[tag=Red,tag=pr.target] at @s if block ~ ~-0.2 ~ #warshito:kill_red run function pr:player/checkpoint/send_to
execute as @a[tag=Green,tag=pr.target] at @s if block ~ ~-0.2 ~ #warshito:kill_green run function pr:player/checkpoint/send_to
execute as @a[tag=Blue,tag=pr.target] at @s if block ~ ~-0.2 ~ #warshito:kill_blue run function pr:player/checkpoint/send_to

# Vines
execute as @a[tag=Red,tag=pr.target] at @s if block ~ ~ ~ minecraft:twisting_vines_plant run function pr:player/checkpoint/send_to
execute as @a[tag=Green,tag=pr.target] at @s if block ~ ~ ~ minecraft:twisting_vines_plant run function pr:player/checkpoint/send_to
execute as @a[tag=Blue,tag=pr.target] at @s if block ~ ~ ~ minecraft:weeping_vines_plant run function pr:player/checkpoint/send_to
execute as @a[tag=Green,tag=pr.target] at @s if block ~ ~ ~ minecraft:weeping_vines_plant run function pr:player/checkpoint/send_to
execute as @a[tag=Blue,tag=pr.target] at @s if block ~ ~ ~ minecraft:vine run function pr:player/checkpoint/send_to
execute as @a[tag=Red,tag=pr.target] at @s if block ~ ~ ~ minecraft:vine run function pr:player/checkpoint/send_to
return 1