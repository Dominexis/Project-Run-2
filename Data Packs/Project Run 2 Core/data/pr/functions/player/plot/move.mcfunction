# Exit current plot

function pr:plot/exit







# Change coordinates

scoreboard players operation @s pr.plot_previous = @s pr.plot
function pr:player/plot/coords_from_id







# Enter new plot

function pr:plot/enter