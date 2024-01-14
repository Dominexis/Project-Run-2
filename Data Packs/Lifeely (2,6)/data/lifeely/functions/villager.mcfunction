scoreboard players add @s lifeely.value 1
execute if score @s lifeely.value matches 30.. run summon minecraft:villager ~ ~ ~ {Rotation:[90.0f,0.0f],Health:0.1f,Tags:["lifeely.villager_to_die"]}
execute if score @s lifeely.value matches 30.. run scoreboard players set @s lifeely.value 0
return 1