# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add lory dummy
scoreboard players set #20 lory 20
scoreboard players set #60 lory 60
scoreboard players set #1200 lory 1200
scoreboard players set gamestate lory 0
summon marker ~23 ~8 ~5 {Tags:["lory.spawnpoint"]}
summon marker ~26 ~-2 ~7 {Tags:["lory.spawnpoint"]}
summon marker ~36 ~1 ~ {Tags:["lory.spawnpoint"]}
summon marker ~32 ~-1 ~20 {Tags:["lory.spawnpoint"]}