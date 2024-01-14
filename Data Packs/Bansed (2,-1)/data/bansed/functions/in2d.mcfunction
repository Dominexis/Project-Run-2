execute align z positioned ~ ~ ~.5 run tp @s[distance=0.1..] ~ ~ ~ -180 0
execute unless entity @s[y_rotation=-180] run tp @s ~ ~ ~ -180 0
execute unless entity @s[x_rotation=0] run tp @s ~ ~ ~ -180 0



#Pos0 calculation
scoreboard players operation @s bnsd.1Pos = @s bnsd.Pos0
execute store result score @s bnsd.Pos0 run data get entity @s Pos[0] 100
scoreboard players operation @s bnsd.2Pos = @s bnsd.Pos0

scoreboard players operation @s bnsd.1Pos -= @s bnsd.2Pos

#tp
tag @s add bnsd.move
execute as @e[tag=bnsd.char,tag=pr.target] if score @s bnsd.id = @p[tag=bnsd.move,tag=pr.target] bnsd.id at @p[tag=bnsd.move,tag=pr.target] run function bansed:chartp
tag @s remove bnsd.move

# execute if entity @s[gamemode=!adventure] run function bansed:leave2d
return 1