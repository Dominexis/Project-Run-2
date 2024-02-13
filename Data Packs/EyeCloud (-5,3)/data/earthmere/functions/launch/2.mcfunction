tag @s add earthmere_launch2

execute at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 5 1
particle minecraft:explosion_emitter ~2 ~2 ~2 0 0 0 0.1 5 normal @s

scoreboard players set #entity_mot_y pr.value 4350
scoreboard players set #entity_mot_x pr.value -40
scoreboard players set #entity_mot_z pr.value 0

function pr:player/launch/apply/vector
return 1