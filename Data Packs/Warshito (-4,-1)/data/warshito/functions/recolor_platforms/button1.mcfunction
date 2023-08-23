# Change the next platform color for a few seconds

execute if block ~4 ~19 ~-11 minecraft:stone_button[powered=true] run fill ~ ~19 ~-12 ~-2 ~19 ~-14 minecraft:blue_concrete
execute if block ~ ~19 ~-12 blue_concrete run scoreboard players add b1 warshito.ticks 1

execute if score b1 warshito.ticks matches 40.. run fill ~ ~19 ~-12 ~-2 ~19 ~-14 minecraft:yellow_concrete
execute if score b1 warshito.ticks matches 40.. run scoreboard players set b1 warshito.ticks 0