#exit tp
execute at @e[tag=maze_escape.exit] run tp @s ~ ~1 ~

#sound
execute at @e[tag=maze_escape.exit] run playsound minecraft:entity.player.levelup ambient @a[distance=..4] ~ ~ ~ 1 1





return 1