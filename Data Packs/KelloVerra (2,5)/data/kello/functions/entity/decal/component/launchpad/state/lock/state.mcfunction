execute if score @s kello.entity.quantity matches 0 run function kello:entity/decal/component/launchpad/state/idle/start
execute if score @s kello.entity.quantity matches 1.. if score @s kello.entity.timer matches 0 run function kello:entity/decal/component/launchpad/animation/bloom
return 1