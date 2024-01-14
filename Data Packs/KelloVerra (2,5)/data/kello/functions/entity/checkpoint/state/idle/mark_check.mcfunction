execute positioned as @s as @a[gamemode=!spectator,distance=..2.75,tag=pr.target,predicate=!kello:unsafe] positioned as @s unless block ~ ~-1 ~ minecraft:air unless score @s kello.player.checkpoint.id = #local kello.entity.checkpoint.id run function kello:entity/checkpoint/state/idle/found_player

execute if score #boolean kello.value matches 1 run particle minecraft:totem_of_undying ~ ~.325 ~ 0.125 0.125 0.125 0.4 20 force @p[tag=kello.player.checkpointed]
execute if score #boolean kello.value matches 1 run tag @a[tag=kello.player.checkpointed] remove kello.player.checkpointed
return 1