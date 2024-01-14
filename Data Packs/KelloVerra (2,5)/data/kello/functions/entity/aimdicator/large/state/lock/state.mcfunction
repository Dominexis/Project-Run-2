# Recoil

execute if score #state kello.value matches 3 unless entity @e[type=minecraft:item_display,distance=..1.5,tag=pr.target,tag=kello.entity.type.thrown_cogwheel] run function kello:entity/aimdicator/large/state/look/start
return 1