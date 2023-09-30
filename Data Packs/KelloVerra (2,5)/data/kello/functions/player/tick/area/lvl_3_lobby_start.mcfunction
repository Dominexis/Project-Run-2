# Load level 3 a & b

scoreboard players set #level_id_to_assign kello.value 3
scoreboard players set #level_variant_to_load kello.value 1
scoreboard players set #force_load kello.value 1

function kello:tick/level/assign
scoreboard players set #force_load kello.value 0

# Derelate

tag @s add kello.player.has_triggered.lvl_3_lobby_start