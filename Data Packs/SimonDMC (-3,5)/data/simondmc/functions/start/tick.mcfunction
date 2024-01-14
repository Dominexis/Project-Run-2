### Start

# Secret barrel
function simondmc:start/fill_barrel
clear @a[tag=pr.target] minecraft:paper
clear @a[tag=pr.target] minecraft:grass_block

# Tick jingle function for relevant players
execute as @a[tag=pr.target] if score @s sdmc.start-jingle matches 0.. at @s run function simondmc:start/jingle
return 1