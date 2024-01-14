scoreboard players add fan_state rko.time 1
scoreboard players set fan rko.time 0

execute if score fan_state rko.time matches 1 run clone ~-35 ~134 ~4 ~-25 ~144 ~4 ~-5 ~17 ~-39
execute if score fan_state rko.time matches 2 run clone ~-21 ~134 ~4 ~-11 ~144 ~4 ~-5 ~17 ~-39
execute if score fan_state rko.time matches 3 run clone ~-7 ~134 ~4 ~3 ~144 ~4 ~-5 ~17 ~-39
execute if score fan_state rko.time matches 4 run clone ~7 ~134 ~4 ~17 ~144 ~4 ~-5 ~17 ~-39

execute if score fan_state rko.time matches 4.. run scoreboard players set fan_state rko.time 0
return 1