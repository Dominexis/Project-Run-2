# This function will run every tick while players are in your plot on the center block at Y=0
execute positioned ~-40 -112 ~-40 run kill @a[dx=80,dy=100,dz=80,tag=pr.target]
return 1