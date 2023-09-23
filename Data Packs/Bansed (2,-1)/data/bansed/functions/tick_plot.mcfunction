# This function will run every tick while there are players in your plot
execute as @a[tag=bnsd.goto2d,tag=pr.target] at @s run function bansed:goto2d
# execute as @e[type=armor_stand,tag=bnsd.char,tag=pr.target] at @s run function bansed:character

#count players in section
scoreboard players set .players bnsd.main 0
execute as @a[tag=bnsd.in2d,tag=pr.target] run scoreboard players add .players bnsd.main 1

#count armor stands in section
scoreboard players set .armorplayers bnsd.main 0
execute as @e[tag=bnsd.char,tag=pr.target] run scoreboard players add .armorplayers bnsd.main 1

#compares armor stand player and real players to see if one needs to be removed
execute unless score .players bnsd.main = .armorplayers bnsd.main run function bansed:equalchar

#IN 2D
execute as @a[tag=bnsd.in2d,tag=pr.target] at @s run function bansed:in2d



#as character
execute as @e[tag=bnsd.char,tag=pr.target] at @s run function bansed:char


execute as @a[tag=pr.target] at @s if entity @e[tag=bnsd.cherryportal,tag=pr.target,distance=...5] run tag @s add bnsd.incherry
execute as @a[tag=bnsd.incherry,tag=pr.target] at @s run function bansed:cherryportal

execute positioned ~26 ~-40 ~34 as @a[tag=pr.target,distance=..1] at @s run tp @s ~-61 ~0 ~-15


#particles
particle minecraft:portal ~-21 ~-11 ~4 .8 .8 0 0 20 normal @a
particle minecraft:cherry_leaves ~1 ~-42.5 ~-3.5 15 8 6.5 1 5 normal @a[tag=bnsd.in2d]
particle minecraft:dripping_water ~-20 ~-12.5 ~8 0 0 .05 0 1 normal @a


execute as @a[tag=pr.target] at @s run function bansed:tick_prtarget


