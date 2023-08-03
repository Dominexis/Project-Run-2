function pr:player/checkpoint/mark
title @s actionbar {"text": "Checkpoint!","color": "green"}
scoreboard players operation @s sliceoflife.cp = @e[tag=sol.cp,limit=1,sort=nearest,tag=pr.target] sliceoflife.nextcp