# Assign scores

scoreboard players operation @s kello.player.id = #local kello.player.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id
execute unless score #set kello.aim.id matches 0 run scoreboard players operation @s kello.aim.id = #set kello.aim.id
scoreboard players set @s kello.entity.owner 1




# Teleport

tp @s ~ ~64 ~




# Assign tags

tag @s add kello.entity
tag @s add kello.entity.throwable
tag @s add kello.entity.type.large
tag @s add kello.entity.type.thrown_cogwheel
tag @s add kello.entity.part.cogwheel
tag @s add kello.entity.ticking

execute on passengers run function kello:entity/thrown/large_cog/spawn/as
return 1