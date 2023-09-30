scoreboard players remove @s kello.entity.quantity 1

execute store result score #entity_yaw pr.value run data get entity @s Rotation[0] 10
execute store result score #entity_pitch pr.value run data get entity @s Rotation[1] 10
scoreboard players operation #entity_mot pr.value = @s kello.entity.launch_power

scoreboard players operation #local kello.decal.id = @s kello.decal.id

function kello:entity/decal/component/launchpad/animation/launch

execute positioned as @s as @p[tag=pr.target,tag=kello.entity.player.target,distance=..3.5] run function kello:entity/thrown/large_cog/state/launcher/as_detach_player