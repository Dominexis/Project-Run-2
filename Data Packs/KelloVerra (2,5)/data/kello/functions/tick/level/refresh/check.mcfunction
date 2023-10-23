scoreboard players set #boolean kello.value 0
execute if score @s kello.level.id = #level_id kello.value run scoreboard players set #boolean kello.value 1
execute if score @s kello.level.next_id = #level_id kello.value run scoreboard players set #boolean kello.value 1
execute unless score #level_variant kello.value matches 0 unless score @s kello.level.next_var = #level_variant kello.value run scoreboard players set #boolean kello.value 0

execute if score #boolean kello.value matches 1 run scoreboard players add #playercount kello.value 1
scoreboard players set #boolean kello.value 0