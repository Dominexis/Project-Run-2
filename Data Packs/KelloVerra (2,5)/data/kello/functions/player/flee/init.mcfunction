tp @s ~ ~ ~
scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=marker,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.unflee_marker,distance=..512] if score @s kello.player.id = #local kello.player.id run kill
execute positioned as @s summon marker run function kello:player/flee/unflee_summon