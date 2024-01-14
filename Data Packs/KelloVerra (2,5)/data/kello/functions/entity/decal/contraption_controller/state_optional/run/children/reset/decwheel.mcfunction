# Clear

execute if entity @e[type=minecraft:item_display,distance=..1,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state_optional/run/children/reset/decwheel_0

execute unless entity @s[tag=kello.found_nearest_target] unless score @s kello.decal.state matches 1 unless score @s kello.decal.state matches 3 run function kello:entity/decal/contraption_controller/state_optional/run/children/reset/success

tag @s remove kello.found_nearest_target
return 1