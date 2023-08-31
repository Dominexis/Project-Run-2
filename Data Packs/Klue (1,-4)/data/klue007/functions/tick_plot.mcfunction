# This function will run every tick while players are in your plot on the center block at Y=0

#minecart
execute if block ~18 ~-27 ~19 oak_button[powered=true] run clone ~17 ~-29 ~18 ~17 ~-29 ~18 ~17 ~-27 ~18
execute positioned ~12 ~-21 ~23 as @e[type=minecart,tag=pr.target,distance=..1] run kill @s

execute if block ~-12 ~2 ~20 oak_button[powered=true] run clone ~-12 ~-1 ~21 ~-12 ~-1 ~21 ~-12 ~1 ~21
execute positioned ~27 ~3 ~-24 as @e[type=minecart,tag=pr.target,distance=..1] run kill @s