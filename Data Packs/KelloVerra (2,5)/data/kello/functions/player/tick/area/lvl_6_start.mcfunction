# Assign level

scoreboard players set #level_id_to_assign kello.value 6
scoreboard players set #level_variant_to_load kello.value 0
function kello:tick/level/assign


# Decrease wipe time

scoreboard players set @s kello.death.send_delay_time 1



# Derelate

tag @s add kello.player.has_triggered.lvl_6_start
return 1