

tag @s remove zombieNew
scoreboard players set @s zombie_lifeTime 20
#summon marker ~ ~ ~ {Tags:["zombieNew"]}
#execute as @e[type=marker,tag=zombieNew,limit=1] run function zombie1111:player_shootlaser_configure2
#execute positioned ^ ^ ^20 run spreadplayers ~ ~ 10 20 false @e[type=marker,tag=zombieNew,limit=1]


#kill @e[type=marker,tag=zombieNew,limit=1]
scoreboard players set maxRange zombie_rngV 30
function zombie1111:player_shootlaser_gettarget
scoreboard players operation @s zombie_id = nextIdToGive zombie_id

tp @s ~ ~ ~ ~ ~ 
execute store result score rot zombie_rngV run data get entity @s Rotation[0] 1000
function zombie1111:getrandomnumber
scoreboard players operation rValue zombie_rngV %= C_50 zombie_rngC
execute if predicate zombie1111:chance_50 run scoreboard players operation rValue zombie_rngV *= C_-1 zombie_rngC
scoreboard players operation rValue zombie_rngV *= C_1000 zombie_rngC
scoreboard players operation rot zombie_rngV += rValue zombie_rngV
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get rot zombie_rngV

