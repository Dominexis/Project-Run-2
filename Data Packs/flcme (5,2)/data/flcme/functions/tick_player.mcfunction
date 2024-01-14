execute if block ~ ~ ~ minecraft:water run function flcme:initdeath

execute if block ~ ~-.2 ~ minecraft:air run scoreboard players set @s flcme.jump -1
# execute if score @s flcme.jump matches -1 unless block ~ ~-.1 ~ air run effect give @s jump_boost 1
execute if score @s flcme.jump matches -1 unless block ~ ~-.2 ~ minecraft:air run scoreboard players set @s flcme.jump 1

execute if score @s flcme.jump matches 1.. run scoreboard players set @s flcme.jumptimer 7
execute if score @s flcme.jumptimer matches 1.. run scoreboard players remove @s flcme.jumptimer 1

execute if score @s flcme.jumptimer matches 1.. if block ~ -13 ~ minecraft:yellow_stained_glass run effect give @s minecraft:speed 1 1 true
execute if score @s flcme.jumptimer matches 1.. unless block ~ -13 ~ minecraft:yellow_stained_glass run effect clear @s minecraft:speed
execute unless score @s flcme.jumptimer matches 1.. run effect clear @s minecraft:speed

execute if score @s flcme.jumptimer matches 1.. if block ~ -13 ~ #flcme:jump_boost run effect give @s minecraft:jump_boost 4 4 true
execute if score @s flcme.jumptimer matches 1.. unless block ~ -13 ~ #flcme:jump_boost run effect clear @s minecraft:jump_boost
execute if score @s flcme.jump matches 1 run effect clear @s minecraft:jump_boost

execute if score @s flcme.jump matches 1.. run scoreboard players set @s flcme.jump 0
return 1