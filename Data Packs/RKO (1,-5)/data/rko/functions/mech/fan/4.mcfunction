tag @s add rko_fan_launch4
scoreboard players set #entity_mot_y pr.value 1300
execute if entity @s[tag=rko_boost] run scoreboard players add #entity_mot_y pr.value 75
function rko:mech/fan/base
return 1