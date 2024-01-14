# Load level 3 lobby

scoreboard players set #level_id_to_assign kello.value 3
scoreboard players set #level_variant_to_load kello.value 0
function kello:tick/level/assign





# Derelate

tag @s add kello.player.has_triggered.lvl_2_mid
return 1