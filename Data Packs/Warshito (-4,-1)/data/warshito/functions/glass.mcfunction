# The glass should break when stepped on.
# First, a glass breaking sound, indicating it will break soon. Then, another glass breaking sound when it finally breaks.

# Glass 1
execute if score G1 warshito.Phase matches 0 positioned ~4 ~19 ~6 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G1 warshito.Phase matches 0 positioned ~4 ~19 ~6 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G1 warshito.Phase 1

execute if score G1 warshito.Phase matches 1 run scoreboard players add G1 warshito.ticks 1
execute if score G1 warshito.Phase matches 1 if score G1 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G1 warshito.Phase matches 1 if score G1 warshito.ticks matches 20.. run fill ~4 ~18 ~6 ~6 ~18 ~8 minecraft:light
execute if score G1 warshito.Phase matches 1 if score G1 warshito.ticks matches 20.. run scoreboard players set G1 warshito.Phase 2

execute if score G1 warshito.Phase matches 2 run scoreboard players add G1 warshito.ticks 1
execute if score G1 warshito.Phase matches 2 if score G1 warshito.ticks matches 60.. run fill ~4 ~18 ~6 ~6 ~18 ~8 minecraft:blue_stained_glass
execute if score G1 warshito.Phase matches 2 if score G1 warshito.ticks matches 60.. run scoreboard players set G1 warshito.Phase 0
execute if score G1 warshito.Phase matches 0 if score G1 warshito.ticks matches 60.. run scoreboard players set G1 warshito.ticks 0

# Glass 2
execute if score G2 warshito.Phase matches 0 positioned ~5 ~19 ~11 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G2 warshito.Phase matches 0 positioned ~5 ~19 ~11 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G2 warshito.Phase 1

execute if score G2 warshito.Phase matches 1 run scoreboard players add G2 warshito.ticks 1
execute if score G2 warshito.Phase matches 1 if score G2 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G2 warshito.Phase matches 1 if score G2 warshito.ticks matches 20.. run fill ~5 ~18 ~11 ~7 ~18 ~13 minecraft:light
execute if score G2 warshito.Phase matches 1 if score G2 warshito.ticks matches 20.. run scoreboard players set G2 warshito.Phase 2

execute if score G2 warshito.Phase matches 2 run scoreboard players add G2 warshito.ticks 1
execute if score G2 warshito.Phase matches 2 if score G2 warshito.ticks matches 60.. run fill ~5 ~18 ~11 ~7 ~18 ~13 minecraft:red_stained_glass
execute if score G2 warshito.Phase matches 2 if score G2 warshito.ticks matches 60.. run scoreboard players set G2 warshito.Phase 0
execute if score G2 warshito.Phase matches 0 if score G2 warshito.ticks matches 60.. run scoreboard players set G2 warshito.ticks 0

# Glass 3
execute if score G3 warshito.Phase matches 0 positioned ~2 ~19 ~15 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G3 warshito.Phase matches 0 positioned ~2 ~19 ~15 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G3 warshito.Phase 1

execute if score G3 warshito.Phase matches 1 run scoreboard players add G3 warshito.ticks 1
execute if score G3 warshito.Phase matches 1 if score G3 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G3 warshito.Phase matches 1 if score G3 warshito.ticks matches 20.. run fill ~2 ~18 ~15 ~4 ~18 ~17 minecraft:light
execute if score G3 warshito.Phase matches 1 if score G3 warshito.ticks matches 20.. run scoreboard players set G3 warshito.Phase 2

execute if score G3 warshito.Phase matches 2 run scoreboard players add G3 warshito.ticks 1
execute if score G3 warshito.Phase matches 2 if score G3 warshito.ticks matches 60.. run fill ~2 ~18 ~15 ~4 ~18 ~17 minecraft:lime_stained_glass
execute if score G3 warshito.Phase matches 2 if score G3 warshito.ticks matches 60.. run scoreboard players set G3 warshito.Phase 0
execute if score G3 warshito.Phase matches 0 if score G3 warshito.ticks matches 60.. run scoreboard players set G3 warshito.ticks 0

# Glass 4
execute if score G4 warshito.Phase matches 0 positioned ~9 ~20 ~6 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G4 warshito.Phase matches 0 positioned ~9 ~20 ~6 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G4 warshito.Phase 1

execute if score G4 warshito.Phase matches 1 run scoreboard players add G4 warshito.ticks 1
execute if score G4 warshito.Phase matches 1 if score G4 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G4 warshito.Phase matches 1 if score G4 warshito.ticks matches 20.. run fill ~9 ~19 ~6 ~11 ~19 ~8 minecraft:light
execute if score G4 warshito.Phase matches 1 if score G4 warshito.ticks matches 20.. run scoreboard players set G4 warshito.Phase 2

execute if score G4 warshito.Phase matches 2 run scoreboard players add G4 warshito.ticks 1
execute if score G4 warshito.Phase matches 2 if score G4 warshito.ticks matches 60.. run fill ~9 ~19 ~6 ~11 ~19 ~8 minecraft:magenta_stained_glass
execute if score G4 warshito.Phase matches 2 if score G4 warshito.ticks matches 60.. run scoreboard players set G4 warshito.Phase 0
execute if score G4 warshito.Phase matches 0 if score G4 warshito.ticks matches 60.. run scoreboard players set G4 warshito.ticks 0

# Glass 5
execute if score G5 warshito.Phase matches 0 positioned ~7 ~20 ~16 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G5 warshito.Phase matches 0 positioned ~7 ~20 ~16 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G5 warshito.Phase 1

execute if score G5 warshito.Phase matches 1 run scoreboard players add G5 warshito.ticks 1
execute if score G5 warshito.Phase matches 1 if score G5 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G5 warshito.Phase matches 1 if score G5 warshito.ticks matches 20.. run fill ~7 ~19 ~16 ~9 ~19 ~18 minecraft:light
execute if score G5 warshito.Phase matches 1 if score G5 warshito.ticks matches 20.. run scoreboard players set G5 warshito.Phase 2

execute if score G5 warshito.Phase matches 2 run scoreboard players add G5 warshito.ticks 1
execute if score G5 warshito.Phase matches 2 if score G5 warshito.ticks matches 60.. run fill ~7 ~19 ~16 ~9 ~19 ~18 minecraft:yellow_stained_glass
execute if score G5 warshito.Phase matches 2 if score G5 warshito.ticks matches 60.. run scoreboard players set G5 warshito.Phase 0
execute if score G5 warshito.Phase matches 0 if score G5 warshito.ticks matches 60.. run scoreboard players set G5 warshito.ticks 0

# Glass 6
execute if score G6 warshito.Phase matches 0 positioned ~12 ~21 ~12 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G6 warshito.Phase matches 0 positioned ~12 ~21 ~12 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G6 warshito.Phase 1

execute if score G6 warshito.Phase matches 1 run scoreboard players add G6 warshito.ticks 1
execute if score G6 warshito.Phase matches 1 if score G6 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G6 warshito.Phase matches 1 if score G6 warshito.ticks matches 20.. run fill ~12 ~20 ~12 ~14 ~20 ~14 minecraft:light
execute if score G6 warshito.Phase matches 1 if score G6 warshito.ticks matches 20.. run scoreboard players set G6 warshito.Phase 2

execute if score G6 warshito.Phase matches 2 run scoreboard players add G6 warshito.ticks 1
execute if score G6 warshito.Phase matches 2 if score G6 warshito.ticks matches 60.. run fill ~12 ~20 ~12 ~14 ~20 ~14 minecraft:light_blue_stained_glass
execute if score G6 warshito.Phase matches 2 if score G6 warshito.ticks matches 60.. run scoreboard players set G6 warshito.Phase 0
execute if score G6 warshito.Phase matches 0 if score G6 warshito.ticks matches 60.. run scoreboard players set G6 warshito.ticks 0

# Glass 7
execute if score G7 warshito.Phase matches 0 positioned ~9 ~22 ~-13 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G7 warshito.Phase matches 0 positioned ~9 ~22 ~-13 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G7 warshito.Phase 1

execute if score G7 warshito.Phase matches 1 run scoreboard players add G7 warshito.ticks 1
execute if score G7 warshito.Phase matches 1 if score G7 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G7 warshito.Phase matches 1 if score G7 warshito.ticks matches 20.. run fill ~9 ~21 ~-13 ~11 ~21 ~-11 minecraft:light
execute if score G7 warshito.Phase matches 1 if score G7 warshito.ticks matches 20.. run scoreboard players set G7 warshito.Phase 2

execute if score G7 warshito.Phase matches 2 run scoreboard players add G7 warshito.ticks 1
execute if score G7 warshito.Phase matches 2 if score G7 warshito.ticks matches 60.. run fill ~9 ~21 ~-13 ~11 ~21 ~-11 minecraft:blue_stained_glass
execute if score G7 warshito.Phase matches 2 if score G7 warshito.ticks matches 60.. run scoreboard players set G7 warshito.Phase 0
execute if score G7 warshito.Phase matches 0 if score G7 warshito.ticks matches 60.. run scoreboard players set G7 warshito.ticks 0

# Glass 8
execute if score G8 warshito.Phase matches 0 positioned ~10 ~22 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G8 warshito.Phase matches 0 positioned ~10 ~22 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G8 warshito.Phase 1

execute if score G8 warshito.Phase matches 1 run scoreboard players add G8 warshito.ticks 1
execute if score G8 warshito.Phase matches 1 if score G8 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G8 warshito.Phase matches 1 if score G8 warshito.ticks matches 20.. run fill ~10 ~21 ~-17 ~12 ~21 ~-15 minecraft:light
execute if score G8 warshito.Phase matches 1 if score G8 warshito.ticks matches 20.. run scoreboard players set G8 warshito.Phase 2

execute if score G8 warshito.Phase matches 2 run scoreboard players add G8 warshito.ticks 1
execute if score G8 warshito.Phase matches 2 if score G8 warshito.ticks matches 60.. run fill ~10 ~21 ~-17 ~12 ~21 ~-15 minecraft:red_stained_glass
execute if score G8 warshito.Phase matches 2 if score G8 warshito.ticks matches 60.. run scoreboard players set G8 warshito.Phase 0
execute if score G8 warshito.Phase matches 0 if score G8 warshito.ticks matches 60.. run scoreboard players set G8 warshito.ticks 0

# Glass 9
execute if score G9 warshito.Phase matches 0 positioned ~9 ~23 ~-20 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G9 warshito.Phase matches 0 positioned ~9 ~23 ~-20 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G9 warshito.Phase 1

execute if score G9 warshito.Phase matches 1 run scoreboard players add G9 warshito.ticks 1
execute if score G9 warshito.Phase matches 1 if score G9 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G9 warshito.Phase matches 1 if score G9 warshito.ticks matches 20.. run fill ~9 ~22 ~-20 ~11 ~22 ~-18 minecraft:light
execute if score G9 warshito.Phase matches 1 if score G9 warshito.ticks matches 20.. run scoreboard players set G9 warshito.Phase 2

execute if score G9 warshito.Phase matches 2 run scoreboard players add G9 warshito.ticks 1
execute if score G9 warshito.Phase matches 2 if score G9 warshito.ticks matches 60.. run fill ~9 ~22 ~-20 ~11 ~22 ~-18 minecraft:lime_stained_glass
execute if score G9 warshito.Phase matches 2 if score G9 warshito.ticks matches 60.. run scoreboard players set G9 warshito.Phase 0
execute if score G9 warshito.Phase matches 0 if score G9 warshito.ticks matches 60.. run scoreboard players set G9 warshito.ticks 0

# Glass 10
execute if score G10 warshito.Phase matches 0 positioned ~14 ~22 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G10 warshito.Phase matches 0 positioned ~14 ~22 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G10 warshito.Phase 1

execute if score G10 warshito.Phase matches 1 run scoreboard players add G10 warshito.ticks 1
execute if score G10 warshito.Phase matches 1 if score G10 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G10 warshito.Phase matches 1 if score G10 warshito.ticks matches 20.. run fill ~14 ~21 ~-17 ~16 ~21 ~-15 minecraft:light
execute if score G10 warshito.Phase matches 1 if score G10 warshito.ticks matches 20.. run scoreboard players set G10 warshito.Phase 2

execute if score G10 warshito.Phase matches 2 run scoreboard players add G10 warshito.ticks 1
execute if score G10 warshito.Phase matches 2 if score G10 warshito.ticks matches 60.. run fill ~14 ~21 ~-17 ~16 ~21 ~-15 minecraft:lime_stained_glass
execute if score G10 warshito.Phase matches 2 if score G10 warshito.ticks matches 60.. run scoreboard players set G10 warshito.Phase 0
execute if score G10 warshito.Phase matches 0 if score G10 warshito.ticks matches 60.. run scoreboard players set G10 warshito.ticks 0

# Glass 11
execute if score G11 warshito.Phase matches 0 positioned ~6 ~24 ~-15 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G11 warshito.Phase matches 0 positioned ~6 ~24 ~-15 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G11 warshito.Phase 1

execute if score G11 warshito.Phase matches 1 run scoreboard players add G11 warshito.ticks 1
execute if score G11 warshito.Phase matches 1 if score G11 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G11 warshito.Phase matches 1 if score G11 warshito.ticks matches 20.. run fill ~6 ~23 ~-15 ~8 ~23 ~-13 minecraft:light
execute if score G11 warshito.Phase matches 1 if score G11 warshito.ticks matches 20.. run scoreboard players set G11 warshito.Phase 2

execute if score G11 warshito.Phase matches 2 run scoreboard players add G11 warshito.ticks 1
execute if score G11 warshito.Phase matches 2 if score G11 warshito.ticks matches 60.. run fill ~6 ~23 ~-15 ~8 ~23 ~-13 minecraft:lime_stained_glass
execute if score G11 warshito.Phase matches 2 if score G11 warshito.ticks matches 60.. run scoreboard players set G11 warshito.Phase 0
execute if score G11 warshito.Phase matches 0 if score G11 warshito.ticks matches 60.. run scoreboard players set G11 warshito.ticks 0

# Glass 12
execute if score G12 warshito.Phase matches 0 positioned ~4 ~23 ~-14 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G12 warshito.Phase matches 0 positioned ~4 ~23 ~-14 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G12 warshito.Phase 1

execute if score G12 warshito.Phase matches 1 run scoreboard players add G12 warshito.ticks 1
execute if score G12 warshito.Phase matches 1 if score G12 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G12 warshito.Phase matches 1 if score G12 warshito.ticks matches 20.. run fill ~4 ~22 ~-14 ~6 ~22 ~-12 minecraft:light
execute if score G12 warshito.Phase matches 1 if score G12 warshito.ticks matches 20.. run scoreboard players set G12 warshito.Phase 2

execute if score G12 warshito.Phase matches 2 run scoreboard players add G12 warshito.ticks 1
execute if score G12 warshito.Phase matches 2 if score G12 warshito.ticks matches 60.. run fill ~4 ~22 ~-14 ~6 ~22 ~-12 minecraft:blue_stained_glass
execute if score G12 warshito.Phase matches 2 if score G12 warshito.ticks matches 60.. run scoreboard players set G12 warshito.Phase 0
execute if score G12 warshito.Phase matches 0 if score G12 warshito.ticks matches 60.. run scoreboard players set G12 warshito.ticks 0

# Glass 13
execute if score G13 warshito.Phase matches 0 positioned ~5 ~22 ~-20 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G13 warshito.Phase matches 0 positioned ~5 ~22 ~-20 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G13 warshito.Phase 1

execute if score G13 warshito.Phase matches 1 run scoreboard players add G13 warshito.ticks 1
execute if score G13 warshito.Phase matches 1 if score G13 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G13 warshito.Phase matches 1 if score G13 warshito.ticks matches 20.. run fill ~5 ~21 ~-20 ~7 ~21 ~-18 minecraft:light
execute if score G13 warshito.Phase matches 1 if score G13 warshito.ticks matches 20.. run scoreboard players set G13 warshito.Phase 2

execute if score G13 warshito.Phase matches 2 run scoreboard players add G13 warshito.ticks 1
execute if score G13 warshito.Phase matches 2 if score G13 warshito.ticks matches 60.. run fill ~5 ~21 ~-20 ~7 ~21 ~-18 minecraft:red_stained_glass
execute if score G13 warshito.Phase matches 2 if score G13 warshito.ticks matches 60.. run scoreboard players set G13 warshito.Phase 0
execute if score G13 warshito.Phase matches 0 if score G13 warshito.ticks matches 60.. run scoreboard players set G13 warshito.ticks 0

# Glass 14
execute if score G14 warshito.Phase matches 0 positioned ~ ~23 ~-19 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G14 warshito.Phase matches 0 positioned ~ ~23 ~-19 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G14 warshito.Phase 1

execute if score G14 warshito.Phase matches 1 run scoreboard players add G14 warshito.ticks 1
execute if score G14 warshito.Phase matches 1 if score G14 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G14 warshito.Phase matches 1 if score G14 warshito.ticks matches 20.. run fill ~ ~22 ~-19 ~2 ~22 ~-17 minecraft:light
execute if score G14 warshito.Phase matches 1 if score G14 warshito.ticks matches 20.. run scoreboard players set G14 warshito.Phase 2

execute if score G14 warshito.Phase matches 2 run scoreboard players add G14 warshito.ticks 1
execute if score G14 warshito.Phase matches 2 if score G14 warshito.ticks matches 60.. run fill ~ ~22 ~-19 ~2 ~22 ~-17 minecraft:red_stained_glass
execute if score G14 warshito.Phase matches 2 if score G14 warshito.ticks matches 60.. run scoreboard players set G14 warshito.Phase 0
execute if score G14 warshito.Phase matches 0 if score G14 warshito.ticks matches 60.. run scoreboard players set G14 warshito.ticks 0

# Glass 15
execute if score G15 warshito.Phase matches 0 positioned ~ ~24 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G15 warshito.Phase matches 0 positioned ~ ~24 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G15 warshito.Phase 1

execute if score G15 warshito.Phase matches 1 run scoreboard players add G15 warshito.ticks 1
execute if score G15 warshito.Phase matches 1 if score G15 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G15 warshito.Phase matches 1 if score G15 warshito.ticks matches 20.. run fill ~ ~23 ~-17 ~2 ~23 ~-15 minecraft:light
execute if score G15 warshito.Phase matches 1 if score G15 warshito.ticks matches 20.. run scoreboard players set G15 warshito.Phase 2

execute if score G15 warshito.Phase matches 2 run scoreboard players add G15 warshito.ticks 1
execute if score G15 warshito.Phase matches 2 if score G15 warshito.ticks matches 60.. run fill ~ ~23 ~-17 ~2 ~23 ~-15 minecraft:lime_stained_glass
execute if score G15 warshito.Phase matches 2 if score G15 warshito.ticks matches 60.. run scoreboard players set G15 warshito.Phase 0
execute if score G15 warshito.Phase matches 0 if score G15 warshito.ticks matches 60.. run scoreboard players set G15 warshito.ticks 0

# Glass 16
execute if score G16 warshito.Phase matches 0 positioned ~-1 ~24 ~-10 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G16 warshito.Phase matches 0 positioned ~-1 ~24 ~-10 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G16 warshito.Phase 1

execute if score G16 warshito.Phase matches 1 run scoreboard players add G16 warshito.ticks 1
execute if score G16 warshito.Phase matches 1 if score G16 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G16 warshito.Phase matches 1 if score G16 warshito.ticks matches 20.. run fill ~-1 ~23 ~-10 ~1 ~23 ~-8 minecraft:light
execute if score G16 warshito.Phase matches 1 if score G16 warshito.ticks matches 20.. run scoreboard players set G16 warshito.Phase 2

execute if score G16 warshito.Phase matches 2 run scoreboard players add G16 warshito.ticks 1
execute if score G16 warshito.Phase matches 2 if score G16 warshito.ticks matches 60.. run fill ~-1 ~23 ~-10 ~1 ~23 ~-8 minecraft:blue_stained_glass
execute if score G16 warshito.Phase matches 2 if score G16 warshito.ticks matches 60.. run scoreboard players set G16 warshito.Phase 0
execute if score G16 warshito.Phase matches 0 if score G16 warshito.ticks matches 60.. run scoreboard players set G16 warshito.ticks 0

# Glass 17
execute if score G17 warshito.Phase matches 0 positioned ~-5 ~24 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G17 warshito.Phase matches 0 positioned ~-5 ~24 ~-17 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G17 warshito.Phase 1

execute if score G17 warshito.Phase matches 1 run scoreboard players add G17 warshito.ticks 1
execute if score G17 warshito.Phase matches 1 if score G17 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G17 warshito.Phase matches 1 if score G17 warshito.ticks matches 20.. run fill ~-5 ~23 ~-17 ~-3 ~23 ~-15 minecraft:light
execute if score G17 warshito.Phase matches 1 if score G17 warshito.ticks matches 20.. run scoreboard players set G17 warshito.Phase 2

execute if score G17 warshito.Phase matches 2 run scoreboard players add G17 warshito.ticks 1
execute if score G17 warshito.Phase matches 2 if score G17 warshito.ticks matches 60.. run fill ~-5 ~23 ~-17 ~-3 ~23 ~-15 minecraft:red_stained_glass
execute if score G17 warshito.Phase matches 2 if score G17 warshito.ticks matches 60.. run scoreboard players set G17 warshito.Phase 0
execute if score G17 warshito.Phase matches 0 if score G17 warshito.ticks matches 60.. run scoreboard players set G17 warshito.ticks 0

# Glass 18
execute if score G18 warshito.Phase matches 0 positioned ~-4 ~25 ~-12 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G18 warshito.Phase matches 0 positioned ~-4 ~25 ~-12 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G18 warshito.Phase 1

execute if score G18 warshito.Phase matches 1 run scoreboard players add G18 warshito.ticks 1
execute if score G18 warshito.Phase matches 1 if score G18 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G18 warshito.Phase matches 1 if score G18 warshito.ticks matches 20.. run fill ~-4 ~24 ~-12 ~-2 ~24 ~-10 minecraft:light
execute if score G18 warshito.Phase matches 1 if score G18 warshito.ticks matches 20.. run scoreboard players set G18 warshito.Phase 2

execute if score G18 warshito.Phase matches 2 run scoreboard players add G18 warshito.ticks 1
execute if score G18 warshito.Phase matches 2 if score G18 warshito.ticks matches 60.. run fill ~-4 ~24 ~-12 ~-2 ~24 ~-10 minecraft:lime_stained_glass
execute if score G18 warshito.Phase matches 2 if score G18 warshito.ticks matches 60.. run scoreboard players set G18 warshito.Phase 0
execute if score G18 warshito.Phase matches 0 if score G18 warshito.ticks matches 60.. run scoreboard players set G18 warshito.ticks 0

# Glass 19
execute if score G19 warshito.Phase matches 0 positioned ~-6 ~25 ~-9 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G19 warshito.Phase matches 0 positioned ~-6 ~25 ~-9 if entity @a[dx=2,dz=2,tag=pr.target] at @a[tag=pr.target] if block ~ ~-1 ~ #warshito:glass run scoreboard players set G19 warshito.Phase 1

execute if score G19 warshito.Phase matches 1 run scoreboard players add G19 warshito.ticks 1
execute if score G19 warshito.Phase matches 1 if score G19 warshito.ticks matches 20.. at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~
execute if score G19 warshito.Phase matches 1 if score G19 warshito.ticks matches 20.. run fill ~-6 ~24 ~-9 ~-4 ~24 ~-7 minecraft:light
execute if score G19 warshito.Phase matches 1 if score G19 warshito.ticks matches 20.. run scoreboard players set G19 warshito.Phase 2

execute if score G19 warshito.Phase matches 2 run scoreboard players add G19 warshito.ticks 1
execute if score G19 warshito.Phase matches 2 if score G19 warshito.ticks matches 60.. run fill ~-6 ~24 ~-9 ~-4 ~24 ~-7 minecraft:blue_stained_glass
execute if score G19 warshito.Phase matches 2 if score G19 warshito.ticks matches 60.. run scoreboard players set G19 warshito.Phase 0
execute if score G19 warshito.Phase matches 0 if score G19 warshito.ticks matches 60.. run scoreboard players set G19 warshito.ticks 0

return 1