#exit tp
execute at @e[tag=maze_escape.exit] run tp @s ~ ~1 ~

#sound
execute at @e[tag=maze_escape.exit] run playsound entity.player.levelup ambient @a[distance=..4] ~ ~ ~ 1 1




