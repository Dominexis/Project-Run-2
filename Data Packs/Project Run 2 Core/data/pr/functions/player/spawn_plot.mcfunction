# Reset plot scores

scoreboard players operation @s pr.plot = #spawn_plot pr.value
scoreboard players operation @s pr.plot_previous = @s pr.plot
function pr:player/plot/coords_from_id
return 1