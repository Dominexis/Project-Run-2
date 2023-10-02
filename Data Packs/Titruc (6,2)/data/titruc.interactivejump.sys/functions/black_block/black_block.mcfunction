execute at @s run fill ~-1 ~-1 ~-1 ~1 ~ ~1 air
kill @e[tag=titruc.interactivejump.blackblock.display,tag=pr.target,distance=..2]
setblock ~ ~ ~ polished_deepslate
setblock ~ ~-1 ~ minecraft:deepslate_tile_slab[type=top,waterlogged=false]
setblock ~ ~-2 ~ light[level=12]
