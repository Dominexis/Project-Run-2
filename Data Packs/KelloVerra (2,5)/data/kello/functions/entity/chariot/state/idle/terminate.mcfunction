scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=marker,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.destination_marker,distance=..81] if score @s kello.player.id = #local kello.player.id run kill @s
tp @s ~ ~-2500 ~