scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=minecraft:marker,distance=..64,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.unflee_marker] if score @s kello.player.id = #local kello.player.id run kill @s
tag @s remove kello.player.flee_revertable
return 1