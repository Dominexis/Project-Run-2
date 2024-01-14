function pr:player/checkpoint/mark
title @s actionbar {"text":"Checkpoint!","color":"green","type":"text"}
scoreboard players operation @s sliceoflife.cp = @e[tag=sol.cp,tag=pr.target,sort=nearest,limit=1] sliceoflife.nextcp
return 1