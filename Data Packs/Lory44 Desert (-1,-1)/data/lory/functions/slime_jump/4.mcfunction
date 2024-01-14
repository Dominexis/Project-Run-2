execute positioned ~-8 ~ ~-8 store success score $has_players lory.var if entity @a[dx=15,dy=80,dz=15,tag=pr.target,limit=1]

execute if score $has_players lory.var matches 1 run fill ~ ~ ~ ~1 ~ ~1 minecraft:slime_block
execute if score $has_players lory.var matches 0 run fill ~ ~ ~ ~1 ~ ~1 minecraft:sand

return 1