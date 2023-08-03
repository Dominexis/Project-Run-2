#move key
execute if score temp lokicode matches 0 run tag @e[tag=loki0,tag=pr.target] add lokipush
execute if score temp lokicode matches 1 run tag @e[tag=loki1,tag=pr.target] add lokipush
execute if score temp lokicode matches 2 run tag @e[tag=loki2,tag=pr.target] add lokipush
execute if score temp lokicode matches 3 run tag @e[tag=loki3,tag=pr.target] add lokipush
execute if score temp lokicode matches 4 run tag @e[tag=loki4,tag=pr.target] add lokipush
execute if score temp lokicode matches 5 run tag @e[tag=loki5,tag=pr.target] add lokipush
execute if score temp lokicode matches 6 run tag @e[tag=loki6,tag=pr.target] add lokipush
execute if score temp lokicode matches 7 run tag @e[tag=loki7,tag=pr.target] add lokipush
execute if score temp lokicode matches 8 run tag @e[tag=loki8,tag=pr.target] add lokipush
execute if score temp lokicode matches 9 run tag @e[tag=loki9,tag=pr.target] add lokipush
execute if score temp lokicode matches 10 run tag @e[tag=lokiv,tag=pr.target] add lokipush
execute if score temp lokicode matches -1 run tag @e[tag=lokix,tag=pr.target] add lokipush

execute as @e[tag=lokipush,tag=pr.target] at @s if score @s lokicode matches ..0 run tp @s ^ ^ ^-0.05
scoreboard players set @e[tag=lokipush,tag=pr.target] lokicode 3

tag @e[tag=pr.target] remove lokipush

