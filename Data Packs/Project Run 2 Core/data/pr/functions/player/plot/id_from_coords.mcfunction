# Derive plot ID from coordinates

scoreboard players operation #x pr.value = @s pr.plot_x
scoreboard players add #x pr.value 16
scoreboard players operation #z pr.value = @s pr.plot_z
scoreboard players add #z pr.value 16
scoreboard players operation #z pr.value *= #64 pr.value

scoreboard players operation @s pr.plot = #x pr.value
scoreboard players operation @s pr.plot += #z pr.value
return 1