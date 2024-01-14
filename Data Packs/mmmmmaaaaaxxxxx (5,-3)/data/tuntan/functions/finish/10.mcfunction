function tuntan:tostart
execute if entity @s[tag=!tuntan.finished10] run scoreboard players add @s tuntan_points 5
#execute if entity @s[tag=tuntan.finished10] run tellraw @s {"text":"You have already completed this tunnel!","color":"red"}


scoreboard players add @s[tag=!tuntan.finished10] tuntan_tunnels 1
tag @s add tuntan.finished10
return 1