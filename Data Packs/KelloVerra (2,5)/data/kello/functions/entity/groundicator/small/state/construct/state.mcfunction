# Recoil

execute if score @s kello.entity.timer matches 0 run function kello:entity/groundicator/small/state/construct/terminate
execute unless entity @s[tag=kello.groundicator.persistent] unless entity @e[type=item_display,tag=pr.target,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,distance=..1] run tag @s add kello.terminate