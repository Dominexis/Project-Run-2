scoreboard players add @s lifeely.value 1

scoreboard players set #cycle lifeely.value 45

scoreboard players operation #position lifeely.value = @s lifeely.value
execute if entity @s[tag=lifeely.time_1] run scoreboard players add #position lifeely.value 15
execute if entity @s[tag=lifeely.time_2] run scoreboard players add #position lifeely.value 30
scoreboard players operation #position lifeely.value %= #cycle lifeely.value

execute if score #position lifeely.value matches 00..01 run fill ~ ~ ~ ~00 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 02..03 run fill ~ ~ ~ ~-1 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 04..05 run fill ~ ~ ~ ~-2 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 06..07 run fill ~ ~ ~ ~-3 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 08..09 run fill ~ ~ ~ ~-4 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 10..11 run fill ~ ~ ~ ~-5 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 12..13 run fill ~ ~ ~ ~-4 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 14..15 run fill ~ ~ ~ ~-3 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 16..17 run fill ~ ~ ~ ~-2 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 18..19 run fill ~ ~ ~ ~-1 ~ ~ minecraft:chain[axis=x]
execute if score #position lifeely.value matches 20..21 run fill ~ ~ ~ ~00 ~ ~ minecraft:chain[axis=x]

execute if score #position lifeely.value matches 00..01 run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 02..03 run setblock ~-2 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 04..05 run setblock ~-3 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 06..07 run setblock ~-4 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 08..09 run setblock ~-5 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 10..11 run setblock ~-6 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 12..13 run setblock ~-5 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 14..15 run setblock ~-4 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 16..17 run setblock ~-3 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 18..19 run setblock ~-2 ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 20..21 run setblock ~-1 ~ ~ minecraft:lightning_rod[facing=west]

execute if score #position lifeely.value matches 00..01 run fill ~-2 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 02..03 run fill ~-3 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 04..05 run fill ~-4 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 06..07 run fill ~-5 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 08..09 run fill ~-6 ~ ~ ~-6 ~ ~ minecraft:air
# execute if score #position lifeely.value matches 10..11 run fill ~-7 ~ ~ ~-6 ~ ~ air
execute if score #position lifeely.value matches 12..13 run fill ~-6 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 14..15 run fill ~-5 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 16..17 run fill ~-4 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 18..19 run fill ~-3 ~ ~ ~-6 ~ ~ minecraft:air
execute if score #position lifeely.value matches 20..21 run fill ~-2 ~ ~ ~-6 ~ ~ minecraft:air

execute if score #position lifeely.value matches 22.. run setblock ~ ~ ~ minecraft:lightning_rod[facing=west]
execute if score #position lifeely.value matches 22.. run fill ~-1 ~ ~ ~-6 ~ ~ minecraft:air

execute if score #position lifeely.value matches 10 run playsound minecraft:entity.iron_golem.repair master @a ~-6 ~ ~
return 1