tp @s ~ ~ ~
scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=minecraft:marker,distance=..512,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.unflee_marker] if score @s kello.player.id = #local kello.player.id run kill @s
execute positioned as @s summon minecraft:marker run function kello:player/flee/unflee_summon
return 1