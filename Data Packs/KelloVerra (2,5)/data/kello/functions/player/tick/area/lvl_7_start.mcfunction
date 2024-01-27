# Assign level

scoreboard players set #level_id_to_assign kello.value 7
scoreboard players set #level_variant_to_load kello.value 0
function kello:tick/level/assign



# Reset wipe time

scoreboard players set @s kello.death.send_delay_time 0




# Derelate

tag @s add kello.player.has_triggered.lvl_7_start
return 1