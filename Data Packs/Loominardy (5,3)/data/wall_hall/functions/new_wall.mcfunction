scoreboard players set new_wall loom.wall_hall 0
summon armor_stand ~37 ~-3 ~9 {Invulnerable:1b,Invisible:0b,Tags:["NewWall","WallHall","pr.target"]}

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
execute if score #output pr.value matches 00 run fill ~38 ~ ~9 ~38 ~4 ~23 white_concrete replace stone
execute if score #output pr.value matches 01 run fill ~38 ~ ~9 ~38 ~4 ~23 light_gray_concrete replace stone
execute if score #output pr.value matches 02 run fill ~38 ~ ~9 ~38 ~4 ~23 gray_concrete replace stone
execute if score #output pr.value matches 03 run fill ~38 ~ ~9 ~38 ~4 ~23 black_concrete replace stone
execute if score #output pr.value matches 04 run fill ~38 ~ ~9 ~38 ~4 ~23 brown_concrete replace stone
execute if score #output pr.value matches 05 run fill ~38 ~ ~9 ~38 ~4 ~23 red_concrete replace stone
execute if score #output pr.value matches 06 run fill ~38 ~ ~9 ~38 ~4 ~23 orange_concrete replace stone
execute if score #output pr.value matches 07 run fill ~38 ~ ~9 ~38 ~4 ~23 yellow_concrete replace stone
execute if score #output pr.value matches 08 run fill ~38 ~ ~9 ~38 ~4 ~23 lime_concrete replace stone
execute if score #output pr.value matches 09 run fill ~38 ~ ~9 ~38 ~4 ~23 green_concrete replace stone
execute if score #output pr.value matches 10 run fill ~38 ~ ~9 ~38 ~4 ~23 cyan_concrete replace stone
execute if score #output pr.value matches 11 run fill ~38 ~ ~9 ~38 ~4 ~23 light_blue_concrete replace stone
execute if score #output pr.value matches 12 run fill ~38 ~ ~9 ~38 ~4 ~23 blue_concrete replace stone
execute if score #output pr.value matches 13 run fill ~38 ~ ~9 ~38 ~4 ~23 purple_concrete replace stone
execute if score #output pr.value matches 14 run fill ~38 ~ ~9 ~38 ~4 ~23 magenta_concrete replace stone
execute if score #output pr.value matches 15 run fill ~38 ~ ~9 ~38 ~4 ~23 pink_concrete replace stone

# execute as @e[type=armor_stand,tag=NewWall,tag=WallHall,tag=pr.target] store result score @s loom.wall_hall_prev_x_pos run data get entity @s Pos[0]