execute as @e[type=minecraft:marker,distance=..128,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.destination.marker] if score @s kello.player.id = #local kello.player.id run kill @s
execute align xyz positioned ~.5 ~-1.25 ~.5 summon minecraft:marker run function kello:player/ride/destination_mark
tag @s remove kello.entity.destination_pos
scoreboard players set #boolean kello.value 1

execute if entity @s[tag=kello.entity.type.unflee_marker] run kill @s
return 1