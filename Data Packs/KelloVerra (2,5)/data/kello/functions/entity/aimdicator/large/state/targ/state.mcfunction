# Recoil

execute if score #state kello.value matches 2 if score @s kello.aim.count matches 0 run function kello:entity/aimdicator/large/state/look/start
execute if entity @e[type=minecraft:item_display,distance=..1.5,tag=pr.target,tag=kello.entity.type.thrown_cogwheel] run function kello:entity/aimdicator/large/state/lock/start
return 1