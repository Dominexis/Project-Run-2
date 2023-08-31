scoreboard players remove new_wall wall_hall 40
summon armor_stand ~39 ~-3 ~9 {Invulnerable:1b,Invisible:1b,Tags:["NewWall","WallHall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall1","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall2","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall3","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall4","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall5","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall6","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall7","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall8","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall9","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall10","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall11","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall12","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall13","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall14","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall15","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall16","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall17","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall18","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall19","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall20","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall21","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Wall22","PossibleWall"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color1","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color2","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color3","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color4","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color5","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color6","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color7","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color8","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color9","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color10","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color11","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color12","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color13","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color14","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color15","PossibleColor"]}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Color16","PossibleColor"]}
tag @e[tag=PossibleWall,sort=random,limit=1] add Selected 
execute if entity @e[type=marker,tag=Wall1,tag=Selected] run clone ~-39 ~-63 ~-39 ~-39 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall2,tag=Selected] run clone ~-38 ~-63 ~-39 ~-38 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall3,tag=Selected] run clone ~-37 ~-63 ~-39 ~-37 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall4,tag=Selected] run clone ~-36 ~-63 ~-39 ~-36 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall5,tag=Selected] run clone ~-35 ~-63 ~-39 ~-35 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall6,tag=Selected] run clone ~-34 ~-63 ~-39 ~-34 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall7,tag=Selected] run clone ~-33 ~-63 ~-39 ~-33 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall8,tag=Selected] run clone ~-32 ~-63 ~-39 ~-32 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall9,tag=Selected] run clone ~-31 ~-63 ~-39 ~-31 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall10,tag=Selected] run clone ~-30 ~-63 ~-39 ~-30 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall11,tag=Selected] run clone ~-29 ~-63 ~-39 ~-29 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall12,tag=Selected] run clone ~-28 ~-63 ~-39 ~-28 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall13,tag=Selected] run clone ~-27 ~-63 ~-39 ~-27 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall14,tag=Selected] run clone ~-26 ~-63 ~-39 ~-26 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall15,tag=Selected] run clone ~-25 ~-63 ~-39 ~-25 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall16,tag=Selected] run clone ~-24 ~-63 ~-39 ~-24 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall17,tag=Selected] run clone ~-23 ~-63 ~-39 ~-23 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall18,tag=Selected] run clone ~-22 ~-63 ~-39 ~-22 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall19,tag=Selected] run clone ~-21 ~-63 ~-39 ~-21 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall20,tag=Selected] run clone ~-20 ~-63 ~-39 ~-20 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall21,tag=Selected] run clone ~-19 ~-63 ~-39 ~-19 ~-59 ~25 ~39 ~ ~9
execute if entity @e[type=marker,tag=Wall22,tag=Selected] run clone ~-18 ~-63 ~-39 ~-18 ~-59 ~25 ~39 ~ ~9
kill @e[tag=PossibleWall]
tag @e[tag=PossibleColor,sort=random,limit=1] add Selected 
execute if entity @e[type=marker,tag=Color1,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 white_concrete replace stone
execute if entity @e[type=marker,tag=Color2,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 light_gray_concrete replace stone
execute if entity @e[type=marker,tag=Color3,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 gray_concrete replace stone
execute if entity @e[type=marker,tag=Color4,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 black_concrete replace stone
execute if entity @e[type=marker,tag=Color5,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 brown_concrete replace stone
execute if entity @e[type=marker,tag=Color6,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 red_concrete replace stone
execute if entity @e[type=marker,tag=Color7,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 orange_concrete replace stone
execute if entity @e[type=marker,tag=Color8,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 yellow_concrete replace stone
execute if entity @e[type=marker,tag=Color9,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 lime_concrete replace stone
execute if entity @e[type=marker,tag=Color10,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 green_concrete replace stone
execute if entity @e[type=marker,tag=Color11,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 cyan_concrete replace stone
execute if entity @e[type=marker,tag=Color12,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 light_blue_concrete replace stone
execute if entity @e[type=marker,tag=Color13,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 blue_concrete replace stone
execute if entity @e[type=marker,tag=Color14,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 purple_concrete replace stone
execute if entity @e[type=marker,tag=Color15,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 magenta_concrete replace stone
execute if entity @e[type=marker,tag=Color16,tag=Selected] run fill ~39 ~ ~9 ~39 ~4 ~23 pink_concrete replace stone
kill @e[tag=PossibleColor]
execute as @e[type=armor_stand,tag=NewWall,tag=WallHall] store result score @s wall_hall_prev_x_pos run data get entity @s Pos[0]
#tag @e[tag=NewWall] remove NewWall