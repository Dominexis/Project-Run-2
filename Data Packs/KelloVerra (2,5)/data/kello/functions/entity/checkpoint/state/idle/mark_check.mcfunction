execute positioned as @s as @a[tag=pr.target,distance=..2.75,gamemode=!spectator,predicate=!kello:unsafe] positioned as @s unless block ~ ~-1 ~ air unless score @s kello.player.checkpoint.id = #local kello.entity.checkpoint.id run function kello:entity/checkpoint/state/idle/found_player

execute if score #boolean kello.value matches 1 run particle totem_of_undying ~ ~.325 ~ 0.125 0.125 0.125 0.4 20 force @p[tag=kello.player.checkpointed]
execute if score #boolean kello.value matches 1 run tag @a[tag=kello.player.checkpointed] remove kello.player.checkpointed