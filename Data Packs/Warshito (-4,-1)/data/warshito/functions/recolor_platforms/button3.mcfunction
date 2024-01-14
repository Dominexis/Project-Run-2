# Change the next platform color for a few seconds

execute if block ~-7 ~20 ~-12 minecraft:stone_button[powered=true] run fill ~-7 ~19 ~-7 ~-9 ~19 ~-5 minecraft:lime_concrete
execute if block ~-7 ~19 ~-7 minecraft:lime_concrete run scoreboard players add b3 warshito.ticks 1

execute if score b3 warshito.ticks matches 40.. run fill ~-7 ~19 ~-7 ~-9 ~19 ~-5 minecraft:magenta_concrete
execute if score b3 warshito.ticks matches 40.. run scoreboard players set b3 warshito.ticks 0
return 1