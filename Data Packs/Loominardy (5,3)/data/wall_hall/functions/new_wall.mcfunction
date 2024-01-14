scoreboard players set new_wall loom.wall_hall 0
summon minecraft:armor_stand ~37 ~-3 ~9 {Invulnerable:1b,Invisible:0b,Tags:["NewWall","WallHall","pr.target"]}

scoreboard players set #input pr.value 22
function pr:generic/rng/lcg
execute if score #output pr.value matches 00 run clone ~-39 ~-63 ~-39 ~-39 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 01 run clone ~-38 ~-63 ~-39 ~-38 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 02 run clone ~-37 ~-63 ~-39 ~-37 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 03 run clone ~-36 ~-63 ~-39 ~-36 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 04 run clone ~-35 ~-63 ~-39 ~-35 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 05 run clone ~-34 ~-63 ~-39 ~-34 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 06 run clone ~-33 ~-63 ~-39 ~-33 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 07 run clone ~-32 ~-63 ~-39 ~-32 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 08 run clone ~-31 ~-63 ~-39 ~-31 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 09 run clone ~-30 ~-63 ~-39 ~-30 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 10 run clone ~-29 ~-63 ~-39 ~-29 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 11 run clone ~-28 ~-63 ~-39 ~-28 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 12 run clone ~-27 ~-63 ~-39 ~-27 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 13 run clone ~-26 ~-63 ~-39 ~-26 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 14 run clone ~-25 ~-63 ~-39 ~-25 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 15 run clone ~-24 ~-63 ~-39 ~-24 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 16 run clone ~-23 ~-63 ~-39 ~-23 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 17 run clone ~-22 ~-63 ~-39 ~-22 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 18 run clone ~-21 ~-63 ~-39 ~-21 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 19 run clone ~-20 ~-63 ~-39 ~-20 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 20 run clone ~-19 ~-63 ~-39 ~-19 ~-59 ~-26 ~38 ~ ~9
execute if score #output pr.value matches 21 run clone ~-18 ~-63 ~-39 ~-18 ~-59 ~-26 ~38 ~ ~9

scoreboard players set #input pr.value 16
function pr:generic/rng/lcg
execute if score #output pr.value matches 00 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:white_concrete replace minecraft:stone
execute if score #output pr.value matches 01 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:light_gray_concrete replace minecraft:stone
execute if score #output pr.value matches 02 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:gray_concrete replace minecraft:stone
execute if score #output pr.value matches 03 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:black_concrete replace minecraft:stone
execute if score #output pr.value matches 04 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:brown_concrete replace minecraft:stone
execute if score #output pr.value matches 05 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:red_concrete replace minecraft:stone
execute if score #output pr.value matches 06 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:orange_concrete replace minecraft:stone
execute if score #output pr.value matches 07 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:yellow_concrete replace minecraft:stone
execute if score #output pr.value matches 08 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:lime_concrete replace minecraft:stone
execute if score #output pr.value matches 09 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:green_concrete replace minecraft:stone
execute if score #output pr.value matches 10 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:cyan_concrete replace minecraft:stone
execute if score #output pr.value matches 11 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:light_blue_concrete replace minecraft:stone
execute if score #output pr.value matches 12 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:blue_concrete replace minecraft:stone
execute if score #output pr.value matches 13 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:purple_concrete replace minecraft:stone
execute if score #output pr.value matches 14 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:magenta_concrete replace minecraft:stone
execute if score #output pr.value matches 15 run fill ~38 ~ ~9 ~38 ~4 ~23 minecraft:pink_concrete replace minecraft:stone

# execute as @e[type=armor_stand,tag=NewWall,tag=WallHall,tag=pr.target] store result score @s loom.wall_hall_prev_x_pos run data get entity @s Pos[0]
return 1