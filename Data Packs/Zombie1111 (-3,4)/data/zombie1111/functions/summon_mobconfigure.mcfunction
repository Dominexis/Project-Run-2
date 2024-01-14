

#runs as new summoned mob
tag @s remove zombieNew

#set velocity
#execute store result score spawnY zombie_rngV run data get entity @s Pos[1] 1000
#spreadplayers ~ ~ 1 3 false @s
#execute store result entity @s Pos[1] double 0.001 run scoreboard players get spawnY zombie_rngV
execute positioned 0 0 0 run summon minecraft:marker ^ ^ ^100 {Tags:["zombieMarker","pr.target"]}
execute as @e[type=minecraft:marker,tag=zombieMarker,tag=pr.target,limit=1] at @s run function zombie1111:summon_markerrandom
execute store result entity @s Motion[0] double 0.015 run data get entity @e[type=minecraft:marker,tag=zombieMarker,tag=pr.target,limit=1] Pos[0] 1
execute store result entity @s Motion[1] double 0.015 run data get entity @e[type=minecraft:marker,tag=zombieMarker,tag=pr.target,limit=1] Pos[1] 1
execute store result entity @s Motion[2] double 0.015 run data get entity @e[type=minecraft:marker,tag=zombieMarker,tag=pr.target,limit=1] Pos[2] 1
kill @e[type=minecraft:marker,tag=zombieMarker,tag=pr.target,limit=1]



return 1