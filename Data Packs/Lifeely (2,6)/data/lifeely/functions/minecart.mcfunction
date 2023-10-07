scoreboard players remove @s lifeely.value 1

execute if score @s lifeely.value matches 1 run summon minecart ~ ~ ~ {Motion:[0.0d,0.0d,0.2d]}

execute unless score @s lifeely.value matches 1.. run scoreboard players set #input pr.value 30
execute unless score @s lifeely.value matches 1.. run function pr:generic/rng/lcg
execute unless score @s lifeely.value matches 1.. run scoreboard players add #output pr.value 20
execute unless score @s lifeely.value matches 1.. run scoreboard players operation @s lifeely.value = #output pr.value