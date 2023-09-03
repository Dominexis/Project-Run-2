execute if entity @s[tag=!tuntan.finished4] run scoreboard players add @s tuntan_points 4
#execute if entity @s[tag=tuntan.finished4,tag=!tuntan.temp2] run tellraw @s {"text":"You have already completed this tunnel!","color":"red"}

scoreboard players add @s[tag=!tuntan.finished4] tuntan_tunnels 1
tag @s add tuntan.finished4
tag @s add tuntan.temp1
tag @s add tuntan.temp2