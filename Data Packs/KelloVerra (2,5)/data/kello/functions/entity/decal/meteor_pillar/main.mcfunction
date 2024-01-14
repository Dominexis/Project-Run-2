# Animation

function kello:entity/decal/meteor_pillar/animation/main



# State

scoreboard players remove @s kello.entity.timer 1
execute if score @s kello.entity.timer matches ..0 run function kello:entity/decal/meteor_pillar/terminate
return 1