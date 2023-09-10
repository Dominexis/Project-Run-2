scoreboard players add pipe_fan_state rko.time 1
scoreboard players set pipe_fan rko.time 0

execute if score pipe_fan_state rko.time matches 1 run clone ~-23 ~135 ~-14 ~-13 ~145 ~-14 ~-5 ~107 ~11
execute if score pipe_fan_state rko.time matches 2 run clone ~-11 ~135 ~-14 ~-1 ~145 ~-14 ~-5 ~107 ~11
execute if score pipe_fan_state rko.time matches 3 run clone ~1 ~135 ~-14 ~11 ~145 ~-14 ~-5 ~107 ~11
execute if score pipe_fan_state rko.time matches 4 run clone ~13 ~135 ~-14 ~23 ~145 ~-14 ~-5 ~107 ~11

execute if score pipe_fan_state rko.time matches 4.. run scoreboard players set pipe_fan_state rko.time 0