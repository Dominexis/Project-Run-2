# Trigger checkpoint if player is nearby

execute if score @s kello.entity.timer matches 36.. run function kello:entity/checkpoint/state/idle/start


scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id
scoreboard players set #boolean kello.value 0
execute on passengers if entity @s[tag=kello.entity.part.mark_pointer] on origin positioned as @s as @a[gamemode=!spectator,distance=..2.75,tag=pr.target,predicate=!kello:unsafe] unless score @s kello.player.checkpoint.id = #local kello.entity.checkpoint.id run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 1 run function kello:entity/checkpoint/state/checkpoint/start
return 1