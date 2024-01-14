scoreboard players operation #local kello.player.id = @s kello.player.id


# Check cogwheel's presence

execute if score @s kello.player.cog.l matches 0.. unless score @s kello.player.cog.l matches 1 run function kello:player/cog/availibility/left
# execute if score @s kello.player.cog.r matches 0.. unless score @s kello.player.cog.r matches 1 run function kello:player/cog/availibility/right
return 1