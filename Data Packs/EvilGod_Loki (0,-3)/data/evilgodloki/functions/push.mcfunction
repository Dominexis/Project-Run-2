#move key
execute if score temp lokicode matches 0 run tag @e[tag=loki0] add lokipush
execute if score temp lokicode matches 1 run tag @e[tag=loki1] add lokipush
execute if score temp lokicode matches 2 run tag @e[tag=loki2] add lokipush
execute if score temp lokicode matches 3 run tag @e[tag=loki3] add lokipush
execute if score temp lokicode matches 4 run tag @e[tag=loki4] add lokipush
execute if score temp lokicode matches 5 run tag @e[tag=loki5] add lokipush
execute if score temp lokicode matches 6 run tag @e[tag=loki6] add lokipush
execute if score temp lokicode matches 7 run tag @e[tag=loki7] add lokipush
execute if score temp lokicode matches 8 run tag @e[tag=loki8] add lokipush
execute if score temp lokicode matches 9 run tag @e[tag=loki9] add lokipush
execute if score temp lokicode matches 10 run tag @e[tag=lokiv] add lokipush
execute if score temp lokicode matches -1 run tag @e[tag=lokix] add lokipush

execute as @e[tag=lokipush] at @s if score @s lokicode matches ..0 run tp @s ^ ^ ^-0.05
scoreboard players set @e[tag=lokipush] lokicode 3

tag @e remove lokipush

