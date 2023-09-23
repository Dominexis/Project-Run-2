# This function will run as a player who exits your plot. Make sure you remove any tags, items, effects etc. from them when they leave.
#remove armor stand
tag @s remove bnsd.in2d
tag @s remove bnsd.goto2d
tag @s remove bnsd.playerlink
tag @s remove bnsd.incherry
tag @s add bnsd.exit
attribute @s minecraft:generic.attack_speed base set 4
execute as @e[type=armor_stand,tag=bnsd.char,tag=pr.target] at @a[tag=bnsd.exit,tag=pr.target] if score @s bnsd.id = @p[distance=..1,tag=pr.target] bnsd.id run kill @s
tag @s remove bnsd.exit
effect clear @s
clear @s
# say EXIT PLOT
stopsound @s
scoreboard players set @s bnsd.cherryportal 0

playsound bansed:ambience.jungle_end master @s ~ ~ ~