tp @s @s



tag @s add kello.player.flee_revertable
tag @s remove kello.trigger_flee




execute store result score #entity_yaw pr.value run data get entity @s Rotation[0] 10
scoreboard players operation #entity_pitch pr.value = #escapement_motion_pitch kello.value
scoreboard players operation #entity_mot pr.value = #escapement_motion kello.value
function pr:player/launch/apply/gimbal