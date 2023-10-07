# Assign scores

scoreboard players set @s kello.decal.active 1

function kello:entity/decal/init

scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.entity.checkpoint.id = #global kello.entity.checkpoint.id
execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.entity.checkpoint.id = #init kello.entity.checkpoint.id
execute if score #uninstantiate kello.value matches 1 run scoreboard players operation @s kello.player.void_y = #init kello.player.void_y

execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id

scoreboard players operation #spawn_local kello.entity.checkpoint.id = #global kello.entity.checkpoint.id


scoreboard players set @s kello.entity.tick_dist 8
execute if score #local kello.level.id matches 1 run scoreboard players set @s kello.entity.tick_dist 24





# Notify

# tellraw @p [{"text":"> Spawned a checkpoint, set the local checkpoint ID => ","color":"gray"},{"score":{"name":"#spawn_local","objective":"kello.entity.checkpoint.id"},"color":"white"}]
# tellraw @p [{"text":"> The checkpoint uses local an entity ID => ","color":"gray"},{"score":{"name":"#global","objective":"kello.entity.id"},"color":"white"}]





# Assign Tags

tag @s add kello.entity
tag @s add kello.entity.type.checkpoint
tag @s add kello.entity.part.main
tag @s add kello.entity.ticking

execute on passengers run function kello:entity/decal/init