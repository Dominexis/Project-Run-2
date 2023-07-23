# This function will run every tick while players are in your plot on the center block at Y=0

# Graceful falling
# grants fall damage immunity to players jumping down from the start tube.

execute positioned ~-10 ~64 ~-2 run effect give @a[dx=0,dy=4,dz=4,tag=pr.target] resistance 5 5 true

# killzones
# kills every player that falls in the zone, to make them return to their checkpoint.

execute positioned ~-39 ~62 ~4 run kill @a[dx=28,dy=-2,dz=-8,tag=pr.target]

execute positioned ~-41 ~-60 ~-41 run kill @a[dx=80,dy=1,dz=80,tag=pr.target]


# checkpoints
# list of checkpoints in the plot, with a 'trigger zone' (area where the player needs to be to create a checkpoint) and a checkpoint location (coordinates of the checkpoint itself, relative to the start of the trigger zone)

execute positioned ~-10 ~64 ~-2 as @a[tag=pr.target,dx=0,dy=4,dz=4] positioned ~10 ~-118 ~2 rotated -90 0 run function rex_saltus_neon:bettermark

execute positioned ~-31 ~-24 ~-6 as @a[tag=pr.target,dx=3,dy=4,dz=3] positioned ~2 ~ ~2 rotated -90 0 run function rex_saltus_neon:bettermark

execute positioned ~21 ~-13 ~-14 as @a[tag=pr.target,dx=9,dy=0,dz=9] positioned ~6 ~1 ~7 rotated -180 0 run function rex_saltus_neon:bettermark

execute positioned ~-25 ~-9 ~24 as @a[tag=pr.target,dx=2,dy=0,dz=2] positioned ~ ~1 ~1 rotated -90 0 run function rex_saltus_neon:bettermark

execute positioned ~18 ~8 ~-27 as @a[tag=pr.target,dx=5,dy=0,dz=5] positioned ~3 ~1 ~3 rotated 135 0 run function rex_saltus_neon:bettermark