# Trigger checkpoint if player is nearby

scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id

scoreboard players set #boolean kello.value 0
# execute positioned as @e[type=marker,tag=pr.target,tag=kello.entity.target,tag=kello.entity.type.checkpoint,tag=kello.entity.part.mark] if entity @a[tag=pr.target,distance=..2.75,gamemode=!spectator,predicate=!kello:unsafe] as @a[tag=pr.target,distance=..2.75,gamemode=!spectator,predicate=!kello:unsafe] unless score @s kello.player.checkpoint.id = #local kello.entity.checkpoint.id run scoreboard players set #boolean kello.value 1
execute on passengers if entity @s[tag=kello.entity.part.mark_pointer] on origin positioned as @s as @a[tag=pr.target,distance=..2.75,gamemode=!spectator,predicate=!kello:unsafe] unless score @s kello.player.checkpoint.id = #local kello.entity.checkpoint.id run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 1 run function kello:entity/checkpoint/state/checkpoint/start