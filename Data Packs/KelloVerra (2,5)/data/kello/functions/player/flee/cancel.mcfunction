scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=marker,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.unflee_marker,distance=..64] if score @s kello.player.id = #local kello.player.id run kill @s
tag @s remove kello.player.flee_revertable