# Launch forward

scoreboard players set #entity_mot pr.value 500

data modify storage pr:data tag.Rotation set from entity @s Rotation
execute store result score #entity_yaw pr.value run data get storage pr:data tag.Rotation[0] 10
execute store result score #entity_pitch pr.value run data get storage pr:data tag.Rotation[1] 10

function pr:player/launch/apply/gimbal
return 1