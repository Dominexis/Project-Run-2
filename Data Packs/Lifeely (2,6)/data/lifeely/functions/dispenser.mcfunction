scoreboard players remove @s lifeely.value 1

execute if score @s lifeely.value matches 1 run summon arrow ~ ~0.5 ~ {NoGravity:1b,Motion:[-0.4d,0.0d,0.0d],damage:15.0d}
execute if score @s lifeely.value matches 1 run playsound minecraft:block.dispenser.launch master @a

execute unless score @s lifeely.value matches 1.. run scoreboard players set #input pr.value 30
execute unless score @s lifeely.value matches 1.. run function pr:generic/rng/lcg
execute unless score @s lifeely.value matches 1.. run scoreboard players add #output pr.value 20
execute unless score @s lifeely.value matches 1.. run scoreboard players operation @s lifeely.value = #output pr.value