tag @s add earthmere_launch2

execute at @s run playsound minecraft:entity.slime.jump master @s ~ ~ ~ 5 1.2
execute at @s run particle minecraft:block minecraft:honey_block ~ ~ ~ 0.5 0 0.5 0 35 normal @s

scoreboard players set #entity_mot_y pr.value 2900
scoreboard players set #entity_mot_x pr.value -200
scoreboard players set #entity_mot_z pr.value 0

function pr:player/launch/apply/vector
return 1