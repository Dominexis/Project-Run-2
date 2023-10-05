# finish sliding
kill @e[tag=piemel.slideanchor,tag=pr.target,sort=nearest,limit=1]
tag @s remove piemel.sliding
effect clear @s slow_falling

# launch
scoreboard players set #entity_yaw pr.value 2700
scoreboard players set #entity_pitch pr.value -450
scoreboard players set #entity_mot pr.value 1100
function pr:player/launch/apply/gimbal