
scoreboard players add @s kello.entity.timer 1

execute if score @s kello.entity.timer matches 4 run function kello:entity/decal/component/forward_platform/state/despawn/terminate
return 1