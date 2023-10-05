# This function will run every tick while players are in your plot on the center block at Y=0

# Door number 1
execute if block ~-21 ~10 ~13 spruce_pressure_plate[powered=true] run scoreboard players set #door_1_timer teddy.value 200
execute if block ~-22 ~10 ~13 spruce_pressure_plate[powered=true] run scoreboard players set #door_1_timer teddy.value 200
execute if score #door_1_timer teddy.value matches 200 run fill ~-28 ~8 ~-1 ~-27 ~8 ~-1 redstone_torch
execute if score #door_1_timer teddy.value matches 1 run fill ~-28 ~8 ~-1 ~-27 ~8 ~-1 stone
execute if score #door_1_timer teddy.value matches 1.. run scoreboard players remove #door_1_timer teddy.value 1

# Levitation
execute positioned ~-31 ~9 ~-26 as @a[dy=9,dz=1,dx=1,tag=pr.target] at @s if block ~ ~ ~ light run effect give @s levitation infinite 4 true
execute as @a[tag=pr.target] at @s if block ~ ~ ~ air run effect clear @s levitation

#Checkpoints I guess
# execute as @a[tag=pr.target] at @s if block ~ ~ ~ light_weighted_pressure_plate if score @s teddy.checkpointbool matches 0 run function snowvillage:pressureplate
# execute as @a[tag=pr.target] at @s if block ~ ~ ~ air run scoreboard players set @s teddy.checkpointbool 0

#Not making you burn after escaping the lava
execute as @a[tag=pr.target] at @s if block ~ ~ ~ air run effect give @s fire_resistance infinite 0 true
execute as @a[tag=pr.target] at @s if block ~ ~ ~ lava run effect clear @s fire_resistance

#Slime bounce pad
execute positioned ~-31 ~22.9 ~-16 if entity @a[dx=0,dy=0,dz=0,tag=pr.target] positioned ~31 ~-22.9 ~16 run fill ~-30 ~20 ~-15 ~-31 ~20 ~-16 redstone_block
execute positioned ~-31 ~22.9 ~-16 unless entity @a[dx=0,dy=0,dz=0,tag=pr.target] positioned ~31 ~-22.9 ~16 run fill ~-30 ~20 ~-15 ~-31 ~20 ~-16 stone

#Boat Spawner
tag @e[type=boat,tag=pr.target] remove teddy.occupied
execute as @a[tag=pr.target] on vehicle run tag @s add teddy.occupied

execute if block ~-14 ~25 ~30 birch_button[powered=true] positioned ~-12 ~25 ~35 unless entity @e[type=boat,distance=..3,tag=!teddy.occupied] run function snowvillage:boating/summonboat
execute if block ~-14 ~25 ~30 birch_button[powered=true] run setblock ~-14 ~25 ~30 birch_button[face=wall,facing=south,powered=false]
execute positioned ~27 ~14 ~29 as @a[dx=6,dz=4,dy=2,tag=pr.target] if score @s teddy.boat matches 1 run function snowvillage:boating/boatreset
execute positioned ~-12 ~25 ~35 run kill @e[type=boat,distance=3..,tag=!teddy.occupied]

execute positioned ~-12 ~25 ~35 unless entity @a[distance=..8,tag=pr.target] run kill @e[type=boat,distance=..5,tag=pr.target]

#Boat Kill
tag @a[tag=pr.target] remove teddy.in_boat
execute as @e[type=boat,tag=pr.target] on passengers run tag @s add teddy.in_boat

execute positioned ~-40 -2 ~-40 as @a[dx=80,dy=14,dz=80,tag=pr.target,tag=teddy.in_boat] run function snowvillage:boating/boatreset
execute positioned ~-40 -2 ~-40 as @a[dx=80,dy=14,dz=80,tag=pr.target,tag=teddy.in_boat] run kill @s

#Teleports

execute positioned ~0 ~15 ~-6 as @a[dx=-1,dy=0,dz=-1,tag=pr.target] at @s positioned ~ ~-6 ~ run function snowvillage:warp
execute positioned ~33 ~18 ~22 as @a[dx=-2,dz=1,dy=1,tag=pr.target] at @s positioned ~-7 ~-1 ~-48 run function snowvillage:warp
execute positioned ~-22 ~26 ~-36 as @a[dx=0,dz=0,dy=1,tag=pr.target] at @s positioned ~48 ~-9 ~10 run function snowvillage:warp