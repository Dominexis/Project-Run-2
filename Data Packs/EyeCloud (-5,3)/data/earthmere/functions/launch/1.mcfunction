tag @s add earthmere_launch

execute at @s run playsound minecraft:entity.slime.jump master @s ~ ~ ~ 5 1.2
execute at @s run particle minecraft:block honey_block ~ ~ ~ 0.5 0 0.5 0 35 normal @s

#execute if entity @s[nbt={OnGround:0b}] run scoreboard players set #entity_mot_y pr.value 3320
scoreboard players set #entity_mot_y pr.value 2500
scoreboard players set #entity_mot_x pr.value 20
scoreboard players set #entity_mot_z pr.value -20

function pr:player/launch/apply/vector