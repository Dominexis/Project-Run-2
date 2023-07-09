### Start

# Secret barrel
function simondmc:start/fill_barrel
clear @a[tag=pr.target] paper
clear @a[tag=pr.target] grass_block

# Tick jingle function for relevant players
execute as @a[tag=pr.target] if score @s sdmc.start-jingle matches 0.. at @s run function simondmc:start/jingle