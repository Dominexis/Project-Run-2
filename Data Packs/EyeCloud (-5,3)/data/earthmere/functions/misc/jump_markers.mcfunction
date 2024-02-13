scoreboard players add jump_markers earthmere_time 1

execute if score jump_markers earthmere_time matches 1 run particle minecraft:end_rod ~25 ~-4 ~-7 0 0 0 0.01 3 normal @a
execute if score jump_markers earthmere_time matches 10 run particle minecraft:end_rod ~23 ~-6 ~-5 0 0 0 0.01 3 normal @a
execute if score jump_markers earthmere_time matches 20 run particle minecraft:end_rod ~22 ~-9 ~-4 0 0 0 0.01 3 normal @a
execute if score jump_markers earthmere_time matches 30 run particle minecraft:end_rod ~21 ~-14 ~-3 0 0 0 0.01 3 normal @a
execute if score jump_markers earthmere_time matches 40 run particle minecraft:end_rod ~20 ~-18 ~-2 0 0 0 0.01 3 normal @a
execute if score jump_markers earthmere_time matches 50 run particle minecraft:end_rod ~19 ~-23 ~-1 0 0 0 0.01 3 normal @a

execute if score jump_markers earthmere_time matches 60.. run scoreboard players reset jump_markers earthmere_time
return 1