# This function will run every tick while players are in your plot on the center block at Y=0
#execute positioned 65288 0 136 run function pr:aljaz14/tick
execute as @a[tag=pr.target] at @s if block ~ ~-0.03 ~ cobweb run kill @s
function aljaz:aljaz14/tp/tick
function aljaz:aljaz14/snake/tick
function aljaz:aljaz14/elytra/tick

#checkpoints
execute positioned ~0 ~66 ~6 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~7 ~-24 ~31 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~19 ~-35 ~15 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark

