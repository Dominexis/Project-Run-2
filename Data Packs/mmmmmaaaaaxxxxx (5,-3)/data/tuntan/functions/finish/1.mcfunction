execute if entity @s[tag=!tuntan.finished1] run scoreboard players add @s tuntan_points 6
#execute if entity @s[tag=tuntan.finished1] run tellraw @s {"text":"You have already completed this tunnel!","color":"red"}
function tuntan:tostart

scoreboard players add @s[tag=!tuntan.finished1] tuntan_tunnels 1
tag @s add tuntan.finished1
return 1