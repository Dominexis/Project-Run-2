#execute if entity @s[tag=kello.attach] run function kello:entity/decal/component/escapement/state/lock/start
execute if score @s kello.entity.quantity matches 1.. run function kello:entity/decal/component/escapement/state/lock/start
return 1