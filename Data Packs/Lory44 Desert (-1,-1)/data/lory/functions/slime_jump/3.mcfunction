execute positioned ~-6 ~ ~-6 store success score $has_players lory.var if entity @a[dx=11,dy=80,dz=11,tag=pr.target,limit=1]

execute if score $has_players lory.var matches 1 run fill ~ ~ ~ ~1 ~-2 ~1 slime_block
execute if score $has_players lory.var matches 0 run fill ~ ~ ~ ~1 ~-2 ~1 mangrove_leaves
