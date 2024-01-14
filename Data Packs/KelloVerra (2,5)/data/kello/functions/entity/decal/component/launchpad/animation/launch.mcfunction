function animated_java:launchpad/animations/pause_all
function animated_java:launchpad/animations/shoot/play

execute if score @s kello.entity.quantity matches 1.. run scoreboard players set @s kello.entity.timer 16
return 1