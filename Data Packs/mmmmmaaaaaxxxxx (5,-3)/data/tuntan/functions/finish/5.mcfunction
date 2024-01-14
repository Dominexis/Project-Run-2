execute if entity @s[tag=!tuntan.finished5] run scoreboard players add @s tuntan_points 5
#execute if entity @s[tag=tuntan.finished5,tag=!tuntan.temp2] run tellraw @s {"text":"You have already completed this tunnel!","color":"red"}

scoreboard players add @s[tag=!tuntan.finished5] tuntan_tunnels 1
tag @s add tuntan.finished5
tag @s add tuntan.temp1
tag @s add tuntan.temp2
return 1