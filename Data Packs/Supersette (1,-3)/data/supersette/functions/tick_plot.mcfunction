# Kill zones

execute positioned ~-40 -34 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 -18 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 -2 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 14 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 30 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 46 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 61 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]
execute positioned ~-40 78 ~-40 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]





# Warps

execute positioned ~0 ~63 ~-32 as @a[dx=2,dy=0,dz=-1,tag=pr.target] positioned ~0 ~-63 ~32 positioned ~-36 ~-15 ~25 rotated -135 0 run function supersette:warp
execute positioned ~28 ~-15 ~-37 as @a[distance=..1,tag=pr.target] positioned ~-28 ~15 ~37 positioned ~36 ~-31 ~-18 rotated 90 0 run function supersette:warp
execute positioned ~-37 ~-31 ~-18 as @a[distance=..1,tag=pr.target] positioned ~37 ~31 ~18 positioned ~-21 ~1 ~-36 rotated 0 0 run function supersette:warp
execute positioned ~-21 ~5 ~37 as @a[distance=..1,tag=pr.target] positioned ~21 ~-5 ~-37 positioned ~36 ~17 ~12 rotated 135 0 run function supersette:warp
execute positioned ~-12 ~16 ~-34 as @a[dx=1,dy=1,dz=1,tag=pr.target] positioned ~12 ~-16 ~34 positioned ~26 ~81 ~36 rotated 135 0 run function supersette:warp

execute positioned ~-37 ~81 ~-25 as @a[distance=..1,tag=pr.target] positioned ~37 ~-81 ~25 positioned ~-1 ~49 ~-35 rotated 45 0 run function supersette:warp
execute positioned ~-36 ~81 ~-31 as @a[distance=..1,tag=pr.target] positioned ~36 ~-81 ~31 positioned ~-36 ~33 ~0 rotated -90 0 run function supersette:warp
return 1