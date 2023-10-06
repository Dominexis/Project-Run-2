scoreboard players operation #local lory.boat_id = @s lory.boat_id
scoreboard players set #boolean lory.boat_id 0
execute on vehicle unless score @s lory.boat_id = #local lory.boat_id run scoreboard players set #boolean lory.boat_id 1
execute if score #boolean lory.boat_id matches 1 run tellraw @s {"text":"That's not your boat!","color":"red"}
execute if score #boolean lory.boat_id matches 1 run ride @s dismount