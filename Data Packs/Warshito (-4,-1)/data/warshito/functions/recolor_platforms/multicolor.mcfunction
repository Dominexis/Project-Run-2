# The platform will change every x seconds (Red > Green > Blue > Red...)

# Platform 1

scoreboard players add Pl1 warshito.ticks 1
execute if score Pl1 warshito.ticks matches 60.. run scoreboard players set Pl1 warshito.ticks 0

execute if score Pl1 warshito.ticks matches 0..19 run fill ~17 ~19 ~6 ~15 ~19 ~8 minecraft:red_wool
execute if score Pl1 warshito.ticks matches 20..39 run fill ~17 ~19 ~6 ~15 ~19 ~8 minecraft:lime_wool
execute if score Pl1 warshito.ticks matches 40..59 run fill ~17 ~19 ~6 ~15 ~19 ~8 minecraft:blue_wool

# Platform 2

scoreboard players add Pl2 warshito.ticks 1
execute if score Pl2 warshito.ticks matches 60.. run scoreboard players set Pl2 warshito.ticks 0

execute if score Pl2 warshito.ticks matches 0..19 run fill ~14 ~20 ~-10 ~16 ~20 ~-12 minecraft:red_wool
execute if score Pl2 warshito.ticks matches 20..39 run fill ~14 ~20 ~-10 ~16 ~20 ~-12 minecraft:lime_wool
execute if score Pl2 warshito.ticks matches 40..59 run fill ~14 ~20 ~-10 ~16 ~20 ~-12 minecraft:blue_wool

# Platform 3

scoreboard players add Pl3 warshito.ticks 1
execute if score Pl3 warshito.ticks matches 90.. run scoreboard players set Pl3 warshito.ticks 0

execute if score Pl3 warshito.ticks matches 0..29 run fill ~-7 ~29 ~3 ~-9 ~29 ~5 minecraft:red_concrete
execute if score Pl3 warshito.ticks matches 30..59 run fill ~-7 ~29 ~3 ~-9 ~29 ~5 minecraft:lime_concrete
execute if score Pl3 warshito.ticks matches 60..89 run fill ~-7 ~29 ~3 ~-9 ~29 ~5 minecraft:blue_concrete

# Platform 4

scoreboard players add Pl4 warshito.ticks 1
execute if score Pl4 warshito.ticks matches 90.. run scoreboard players set Pl4 warshito.ticks 0

execute if score Pl4 warshito.ticks matches 0..29 run fill ~-7 ~30 ~8 ~-5 ~30 ~10 minecraft:red_concrete
execute if score Pl4 warshito.ticks matches 30..59 run fill ~-7 ~30 ~8 ~-5 ~30 ~10 minecraft:lime_concrete
execute if score Pl4 warshito.ticks matches 60..89 run fill ~-7 ~30 ~8 ~-5 ~30 ~10 minecraft:blue_concrete

# Platform 5

scoreboard players add Pl5 warshito.ticks 1
execute if score Pl5 warshito.ticks matches 90.. run scoreboard players set Pl5 warshito.ticks 0

execute if score Pl5 warshito.ticks matches 0..29 run fill ~-2 ~31 ~9 ~0 ~31 ~7 minecraft:yellow_concrete
execute if score Pl5 warshito.ticks matches 30..39 run fill ~-2 ~31 ~9 ~0 ~31 ~7 minecraft:light_blue_concrete
execute if score Pl5 warshito.ticks matches 60..89 run fill ~-2 ~31 ~9 ~0 ~31 ~7 minecraft:magenta_concrete
return 1