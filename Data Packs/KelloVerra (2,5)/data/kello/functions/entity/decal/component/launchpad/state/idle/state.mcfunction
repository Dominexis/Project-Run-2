#execute if entity @s[tag=kello.attach] run function kello:entity/decal/component/launchpad/state/lock/start
execute if score @s kello.entity.quantity matches 1.. run function kello:entity/decal/component/launchpad/state/lock/start




execute if entity @s[tag=!kello.checkpoint.is_loaded] run function kello:entity/decal/component/launchpad/state/low_lod/start
return 1