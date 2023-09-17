### End

# Start ending transition when on ending pressure plate
execute positioned ~-15.5 ~3 ~12.5 as @a[tag=pr.target,dy=0.1] unless score @s sdmc.end-jingle matches 0.. run scoreboard players set @s sdmc.end-jingle 0

# Tick jingle function for relevant players
execute as @a[tag=pr.target] if score @s sdmc.end-jingle matches 0.. at @s run function simondmc:end/jingle