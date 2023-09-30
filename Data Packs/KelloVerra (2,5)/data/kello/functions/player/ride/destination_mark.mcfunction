data merge entity @s {Tags:["kello.entity","kello.entity.type.destination_marker","kello.exclude"]}
scoreboard players operation @s kello.player.id = #local kello.player.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id
execute as @e[type=pufferfish,tag=pr.target,tag=kello.entity.type.chariot,distance=..256] if score @s kello.entity.id = #global kello.entity.id run tag @s add kello.entity.has_destination