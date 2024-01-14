scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=minecraft:marker,distance=..81,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.destination_marker] if score @s kello.player.id = #local kello.player.id run kill @s
tp @s ~ ~-2500 ~
return 1