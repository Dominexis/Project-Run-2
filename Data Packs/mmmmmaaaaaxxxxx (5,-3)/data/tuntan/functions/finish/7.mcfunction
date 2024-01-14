execute if entity @s[tag=!tuntan.finished7] run scoreboard players add @s tuntan_points 5
#execute if entity @s[tag=tuntan.finished7] run tellraw @s {"text":"You have already completed this tunnel!","color":"red"}
function tuntan:tostart

scoreboard players add @s[tag=!tuntan.finished7] tuntan_tunnels 1
tag @s add tuntan.finished7
return 1