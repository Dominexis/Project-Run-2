# Prepare player for relocation

tag @s remove pr.hide_timer
tag @s remove pr.pause_timer
tag @s remove pr.temp_checkpoint
tag @s remove pr.self_checkpoint
tag @s remove pr.plate_checkpoint







# Exit current plot

function pr:plot/exit







# Change coordinates

scoreboard players operation @s pr.plot_previous = @s pr.plot
function pr:player/plot/coords_from_id

execute at @s align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~







# Enter new plot

function pr:plot/enter