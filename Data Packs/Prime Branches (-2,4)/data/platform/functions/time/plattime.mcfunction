execute as @e[tag=Platform,tag=pr.target] at @s if score @s PlatTime matches 40..59 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:yellow_stained_glass replace #platform:glassreplace
execute as @e[tag=Platform,tag=pr.target] at @s if score @s PlatTime matches 60.. run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:orange_stained_glass replace #platform:glassreplace
return 1