scoreboard players set #boolean lory.boat_id 0
execute on passengers run scoreboard players set #boolean lory.boat_id 1
execute if score #boolean lory.boat_id matches 0 run kill @s