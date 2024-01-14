execute if entity @s[tag=!tuntan.finished2] run scoreboard players add @s tuntan_points 2
#execute if entity @s[tag=tuntan.finished2] run tellraw @s {"text":"You have already completed this tunnel!","color":"red"}
function tuntan:tostart

scoreboard players add @s[tag=!tuntan.finished2] tuntan_tunnels 1
tag @s add tuntan.finished2
return 1