# This function will run every tick while players are in your plot on the center block at Y=0

#minecart
execute if block ~18 ~-28 ~19 oak_button[powered=true] run clone ~17 ~-30 ~18 ~17 ~-30 ~18 ~17 ~-28 ~18
execute positioned ~12 ~-22 ~23 as @e[type=minecart,tag=pr.target,distance=..1] run kill @s

execute if block ~-12 ~1 ~20 oak_button[powered=true] run clone ~-12 ~-2 ~21 ~-12 ~-2 ~21 ~-12 ~0 ~21
execute positioned ~27 ~2 ~-24 as @e[type=minecart,tag=pr.target,distance=..1] run kill @s