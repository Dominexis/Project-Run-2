# Derive coordinates from plot ID

scoreboard players operation @s pr.plot_x = @s pr.plot
scoreboard players operation @s pr.plot_x %= #64 pr.value
scoreboard players remove @s pr.plot_x 16

scoreboard players operation @s pr.plot_z = @s pr.plot
scoreboard players operation @s pr.plot_z /= #64 pr.value
scoreboard players remove @s pr.plot_z 16
return 1