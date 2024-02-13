tag @s add rko_fan_launch2
tag @s add rko_pipe_launch
scoreboard players set #entity_mot_y pr.value 3300
execute if entity @s[tag=rko_boost] run scoreboard players add #entity_mot_y pr.value 125
function rko:mech/fan/base
return 1