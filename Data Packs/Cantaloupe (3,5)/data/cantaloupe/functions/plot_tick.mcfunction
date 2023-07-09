scoreboard players add @e[type=marker,tag=pr.target,tag=FireLeft] CantaloupeTimer 1
scoreboard players add @e[type=marker,tag=pr.target,tag=FireRight] CantaloupeTimer 1
scoreboard players add platform CantaloupeTimer 1

execute as @e[type=marker,tag=FireLeft,tag=pr.target,scores={CantaloupeTimer=15..}] at @s run summon arrow ~ ~ ~ {Motion:[1.0,0.0,0.0]}
execute as @e[type=marker,tag=FireLeft,tag=pr.target,scores={CantaloupeTimer=15..}] at @s run summon arrow ~ ~ ~ {Motion:[-1.0,0.0,0.0]}

execute if score platform CantaloupeTimer matches 24 run clone ~10 ~-6 ~-33 ~16 ~-2 ~-29 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 48 run clone ~10 ~-6 ~-25 ~16 ~-2 ~-21 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 72 run clone ~20 ~-6 ~-33 ~26 ~-2 ~-29 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 96 run clone ~20 ~-6 ~-25 ~26 ~-2 ~-21 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 120 run clone ~10 ~-6 ~-17 ~16 ~-2 ~-13 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 144 run clone ~20 ~-6 ~-17 ~26 ~-2 ~-13 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 192 run clone ~10 ~-6 ~-17 ~16 ~-2 ~-13 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 218 run clone ~20 ~-6 ~-25 ~26 ~-2 ~-21 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 242 run clone ~20 ~-6 ~-33 ~26 ~-2 ~-29 ~-3 ~-6 ~1
execute if score platform CantaloupeTimer matches 266 run clone ~10 ~-6 ~-25 ~16 ~-2 ~-21 ~-3 ~-6 ~1

execute if score platform CantaloupeTimer >= 290 290 run scoreboard players set platform Cantaloupe 0