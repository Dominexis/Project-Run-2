execute positioned ~-10 ~ ~-10 store success score $has_players lory.var if entity @a[dx=19,dy=80,dz=19,tag=pr.target,limit=1]

execute if score $has_players lory.var matches 1 run fill ~ ~ ~-1 ~ ~ ~1 slime_block
execute if score $has_players lory.var matches 1 run fill ~-1 ~ ~ ~1 ~ ~ slime_block

execute if score $has_players lory.var matches 0 run setblock ~ ~ ~ air

execute if score $has_players lory.var matches 0 run setblock ~ ~ ~1 lily_of_the_valley
execute if score $has_players lory.var matches 0 run setblock ~-1 ~ ~ lily_of_the_valley
execute if score $has_players lory.var matches 0 run setblock ~ ~ ~-1 pink_petals[flower_amount=2]
execute if score $has_players lory.var matches 0 run setblock ~1 ~ ~ grass
