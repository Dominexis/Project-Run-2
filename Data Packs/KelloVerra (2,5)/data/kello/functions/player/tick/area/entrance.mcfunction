# Load start room (Level 1)

scoreboard players set #selected kello.level.id 1
function kello:plot/levels/unload/verify
# function kello:plot/levels/load/start_room/main
scoreboard players set #level_id_to_assign kello.value 1
scoreboard players set #level_variant_to_load kello.value 0
function kello:tick/level/assign






# Tag

tag @s add kello.player.has_triggered.entrance