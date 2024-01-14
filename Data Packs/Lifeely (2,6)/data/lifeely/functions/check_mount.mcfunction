scoreboard players set #boolean lifeely.value 0
execute on vehicle run scoreboard players set #boolean lifeely.value 1
execute if score #boolean lifeely.value matches 0 run tag @s remove lifeely.mount
execute if score #boolean lifeely.value matches 1 run tag @s add lifeely.mount
return 1