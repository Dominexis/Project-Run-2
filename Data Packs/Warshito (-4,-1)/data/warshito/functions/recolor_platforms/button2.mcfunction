# Change the next platform color for a few seconds

execute if block ~-1 ~20 ~-13 minecraft:stone_button[powered=true] run fill ~-6 ~19 ~-11 ~-8 ~19 ~-13 minecraft:red_concrete
execute if block ~-6 ~19 ~-11 minecraft:red_concrete run scoreboard players add b2 warshito.ticks 1

execute if score b2 warshito.ticks matches 40.. run fill ~-6 ~19 ~-11 ~-8 ~19 ~-13 minecraft:light_blue_concrete
execute if score b2 warshito.ticks matches 40.. run scoreboard players set b2 warshito.ticks 0
return 1