# States

scoreboard players set #boolean kello.value 0
execute on passengers on vehicle run scoreboard players set #boolean kello.value 1
execute if entity @s[tag=!kello.entity.lock] if score #boolean kello.value matches 0 run function kello:entity/chariot/state/idle/terminate

tag @s add kello.entity.chariot.target
execute if entity @s[tag=kello.entity.lock] if score #boolean kello.value matches 0 run ride @p[tag=pr.target,tag=kello.entity.player.target] mount @s
tag @s remove kello.entity.chariot.target

execute if entity @e[type=marker,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.destination_marker,tag=kello.entity.target,distance=..1.5] run function kello:entity/chariot/state/lock/start