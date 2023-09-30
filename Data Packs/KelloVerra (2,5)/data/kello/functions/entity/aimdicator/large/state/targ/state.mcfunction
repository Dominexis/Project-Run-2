# Recoil

execute if score #state kello.value matches 2 if score @s kello.aim.count matches 0 run function kello:entity/aimdicator/large/state/look/start
execute if entity @e[type=item_display,tag=pr.target,tag=kello.entity.type.thrown_cogwheel,distance=..1.5] run function kello:entity/aimdicator/large/state/lock/start