scoreboard players remove new_wall loom.wall_hall 40
summon armor_stand ~38 ~-3 ~9 {Invulnerable:1b,Invisible:1b,Tags:["NewWall","WallHall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall1","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall2","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall3","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall4","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall5","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall6","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall7","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall8","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall9","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall10","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall11","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall12","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall13","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall14","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall15","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall16","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall17","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall18","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall19","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall20","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall21","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall22","PossibleWall","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color1","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color2","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color3","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color4","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color5","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color6","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color7","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color8","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color9","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color10","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color11","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color12","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color13","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color14","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color15","PossibleColor","pr.target"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color16","PossibleColor","pr.target"]}
tag @e[tag=PossibleWall,tag=pr.target,sort=random,limit=1] add Selected 
execute if entity @e[type=marker,tag=pr.target,tag=Wall1,tag=Selected] run clone ~-39 ~-63 ~-39 ~-39 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall2,tag=Selected] run clone ~-38 ~-63 ~-39 ~-38 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall3,tag=Selected] run clone ~-37 ~-63 ~-39 ~-37 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall4,tag=Selected] run clone ~-36 ~-63 ~-39 ~-36 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall5,tag=Selected] run clone ~-35 ~-63 ~-39 ~-35 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall6,tag=Selected] run clone ~-34 ~-63 ~-39 ~-34 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall7,tag=Selected] run clone ~-33 ~-63 ~-39 ~-33 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall8,tag=Selected] run clone ~-32 ~-63 ~-39 ~-32 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall9,tag=Selected] run clone ~-31 ~-63 ~-39 ~-31 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall10,tag=Selected] run clone ~-30 ~-63 ~-39 ~-30 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall11,tag=Selected] run clone ~-29 ~-63 ~-39 ~-29 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall12,tag=Selected] run clone ~-28 ~-63 ~-39 ~-28 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall13,tag=Selected] run clone ~-27 ~-63 ~-39 ~-27 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall14,tag=Selected] run clone ~-26 ~-63 ~-39 ~-26 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall15,tag=Selected] run clone ~-25 ~-63 ~-39 ~-25 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall16,tag=Selected] run clone ~-24 ~-63 ~-39 ~-24 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall17,tag=Selected] run clone ~-23 ~-63 ~-39 ~-23 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall18,tag=Selected] run clone ~-22 ~-63 ~-39 ~-22 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall19,tag=Selected] run clone ~-21 ~-63 ~-39 ~-21 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall20,tag=Selected] run clone ~-20 ~-63 ~-39 ~-20 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall21,tag=Selected] run clone ~-19 ~-63 ~-39 ~-19 ~-59 ~-25 ~38 ~ ~9
execute if entity @e[type=marker,tag=pr.target,tag=Wall22,tag=Selected] run clone ~-18 ~-63 ~-39 ~-18 ~-59 ~-25 ~38 ~ ~9
kill @e[tag=PossibleWall,tag=pr.target]
tag @e[tag=PossibleColor,tag=pr.target,sort=random,limit=1] add Selected 
execute if entity @e[type=marker,tag=pr.target,tag=Color1,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 white_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color2,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 light_gray_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color3,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 gray_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color4,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 black_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color5,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 brown_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color6,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 red_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color7,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 orange_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color8,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 yellow_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color9,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 lime_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color10,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 green_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color11,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 cyan_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color12,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 light_blue_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color13,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 blue_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color14,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 purple_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color15,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 magenta_concrete replace stone
execute if entity @e[type=marker,tag=pr.target,tag=Color16,tag=Selected] run fill ~38 ~ ~9 ~38 ~4 ~23 pink_concrete replace stone
kill @e[tag=PossibleColor,tag=pr.target]
execute as @e[type=armor_stand,tag=NewWall,tag=WallHall,tag=pr.target] store result score @s loom.wall_hall_prev_x_pos run data get entity @s Pos[0]