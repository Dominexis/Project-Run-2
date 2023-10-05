# Every tick at the center of the plot

# First button
execute positioned ~-24 ~9 ~33 if block ~ ~ ~ minecraft:birch_button[face=floor,facing=north,powered=true] as @p[tag=pr.target] positioned ~24 ~-9 ~-33 run tp @s ~-25 ~23 ~-26
execute positioned ~-24 ~9 ~33 if block ~ ~ ~ minecraft:birch_button[face=floor,facing=north,powered=true] run setblock ~ ~ ~ minecraft:birch_button[face=floor,facing=north,powered=false]

# Cherry button (2nd)
execute positioned ~26 ~37 ~31 if block ~ ~ ~ minecraft:cherry_button[face=floor,powered=true] run tellraw @p[tag=pr.target] ["",{"text":"[Parkour]","color":"red"},{"text":" Try to see behind you!","color":"white"}]
execute if block ~26 ~37 ~31 minecraft:cherry_button[face=floor,powered=true] run clone ~13 ~72 ~17 ~10 ~67 ~-7 ~10 ~34 ~-7
execute if block ~26 ~37 ~31 minecraft:cherry_button[face=floor,powered=true] run particle cloud ~12 ~36 ~5 2 1.5 6 0.001 100 force
execute positioned ~26 ~37 ~31 if block ~ ~ ~ minecraft:cherry_button[face=floor,powered=true] run setblock ~ ~ ~ minecraft:cherry_button[face=floor,powered=false]

# Slime Block = Levitation
execute positioned ~16 ~26 ~-11 as @a[distance=..2,tag=pr.target] run effect give @s minecraft:levitation 10 4 true
execute positioned ~16 ~26 ~-11 as @a[distance=..2,tag=pr.target] run setblock ~ ~ ~ air

# Place slime block
execute positioned ~12 ~36 ~-1 if entity @a[distance=..2,tag=pr.target] run setblock ~4 ~-10 ~-10 minecraft:slime_block
execute positioned ~12 ~36 ~-1 if entity @a[distance=..2,tag=pr.target] run particle minecraft:glow ~4 ~-10 ~-10 0.5 0.5 0.5 0.001 50 force

# Blindness at the end
execute positioned ~16 ~55 ~-11 as @a[distance=..2,tag=pr.target] run effect give @s minecraft:blindness 2 1 true
# Removes the parkor
execute positioned ~16 ~55 ~-11 as @a[distance=..2,tag=pr.target] positioned ~-6 ~-21 ~4 unless entity @a[dx=3,dy=5,dz=24,tag=pr.target] run fill ~ ~ ~ ~3 ~5 ~24 air

# End
execute positioned ~16 ~60 ~-11 as @a[distance=..2,tag=pr.target] positioned ~-16 ~-60 ~11 run function proxxchf:end

# Particles
execute positioned ~16 ~46 ~-11 as @a[distance=..2,tag=pr.target] positioned ~-16 ~-46 ~11 run fill ~15 ~55 ~-12 ~17 ~64 ~-10 air
execute positioned ~16 ~46 ~-11 as @a[distance=..2,tag=pr.target] positioned ~-16 ~-46 ~11 run setblock ~13 ~65 ~-24 redstone_block
execute if block ~13 ~65 ~-24 redstone_block run particle minecraft:reverse_portal ~16 ~56 ~-11 0.75 4 0.75 0.001 10 force

# DIE
execute as @a[tag=pr.target] at @s if block ~ ~-0.2 ~ gray_concrete_powder run kill @s