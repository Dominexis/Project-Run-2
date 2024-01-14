# finish sliding
kill @e[tag=piemel.slideanchor,tag=pr.target,sort=nearest,limit=1]
tag @s remove piemel.sliding
effect clear @s minecraft:slow_falling

# launch
scoreboard players set #entity_yaw pr.value 2700
scoreboard players set #entity_pitch pr.value -500
scoreboard players set #entity_mot pr.value 880
function pr:player/launch/apply/gimbal
return 1