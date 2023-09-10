# This function will run every tick while players are in your plot on the center block at Y=0
#execute positioned 65288 0 136 run function pr:aljaz14/tick
execute as @a[tag=pr.target] at @s if block ~ ~-0.03 ~ cobweb run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~-0.03 ~ honey_block run kill @s
execute positioned ~-40 -64 ~-40 as @a[tag=pr.target,dx=80,dy=32,dz=80] at @s if block ~ ~ ~ structure_void run kill @s
execute as @a[tag=pr.target,y=-60,dy=12] at @s run kill @s

function aljaz:aljaz14/tp/tick
function aljaz:aljaz14/snake/tick
function aljaz:aljaz14/elytra/tick

#checkpoints
execute positioned ~0 ~66 ~6 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~-7 ~-24 ~13 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~-19 ~-35 ~-15 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark
execute positioned ~-9 ~3 ~12 as @a[dx=0,dy=1,dz=0,tag=pr.target] at @s run function pr:player/checkpoint/mark


scoreboard players remove @a[tag=pr.target,scores={aljaz.hotbar_timer=0..}] aljaz.hotbar_timer 1
tag @a[tag=pr.target,scores={aljaz.hotbar_timer=0}] remove pr.hide_timer