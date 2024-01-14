execute at @s run fill ~-1 ~-1 ~-1 ~1 ~ ~1 minecraft:air
kill @e[distance=..2,tag=titruc.interactivejump.blackblock.display,tag=pr.target]
setblock ~ ~ ~ minecraft:polished_deepslate
setblock ~ ~-1 ~ minecraft:deepslate_tile_slab[type=top,waterlogged=false]
setblock ~ ~-2 ~ minecraft:light[level=12]

return 1