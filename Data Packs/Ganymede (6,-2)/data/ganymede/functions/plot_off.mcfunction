# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
kill @e[tag=ganymede.lens_block,tag=pr.target]
kill @e[tag=ganymede.end_point,tag=pr.target]
kill @e[tag=ganymede.interaction,tag=pr.target]
kill @e[tag=ganymede.idisplay,tag=pr.target]
kill @e[tag=ganymede.painting,tag=pr.target]
fill ~-20 ~2 ~1 ~-20 ~1 ~-1 minecraft:oxidized_copper
fill ~-13 ~4 ~8 ~-16 ~1 ~8 minecraft:stripped_oak_wood replace minecraft:air
fill ~-20 ~3 ~11 ~-18 ~1 ~11 minecraft:oxidized_copper
fill ~-27 ~1 ~22 ~-27 ~2 ~22 minecraft:oxidized_copper
fill ~-21 ~4 ~26 ~-21 ~1 ~28 minecraft:oxidized_copper
fill ~-8 ~1 ~16 ~-8 ~2 ~16 minecraft:stripped_oak_wood
fill ~-20 ~-2 ~-4 ~-20 ~-3 ~-6 minecraft:stone
fill ~-18 ~-6 ~-24 ~-18 ~-5 ~-24 minecraft:iron_bars
fill ~-6 ~-6 ~-24 ~-6 ~-5 ~-24 minecraft:iron_bars
setblock ~-14 ~-5 ~-8 minecraft:air
setblock ~-10 ~-2 ~-11 minecraft:lever[facing=west]
return 1