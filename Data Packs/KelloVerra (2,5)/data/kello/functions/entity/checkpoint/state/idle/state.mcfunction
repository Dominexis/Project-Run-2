# Trigger checkpoint if player is nearby

scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id

scoreboard players set #boolean kello.value 0
execute on passengers on origin positioned as @s run function kello:entity/checkpoint/state/idle/mark_check

execute if score #boolean kello.value matches 1 run function kello:entity/checkpoint/state/checkpoint/start