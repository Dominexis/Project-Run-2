execute as @e[type=marker,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.destination.marker,distance=..128] if score @s kello.player.id = #local kello.player.id run kill @s
execute align xyz positioned ~.5 ~-1.25 ~.5 summon marker run function kello:player/ride/destination_mark
tag @s remove kello.entity.destination_pos
scoreboard players set #boolean kello.value 1

execute if entity @s[tag=kello.entity.type.unflee_marker] run kill @s