# Warp to position

execute store result entity @s Pos[0] double 1 run scoreboard players get #x pr.value
execute store result entity @s Pos[1] double 1 run scoreboard players get #y pr.value
execute store result entity @s Pos[2] double 1 run scoreboard players get #z pr.value

execute at @s align xyz run tp @a[tag=pr.plot_warp] ~0.5 ~ ~0.5

kill @s
return 1