#This command us activated when it is time to end the rocket ride

#use @p[tag=pr.target] to select the player
#use @s to select the rocket armorstand

tag @p[tag=pr.target] remove dtplayers.riding_rocket
kill @s

execute as @p[tag=pr.target] run function pr:player/finish