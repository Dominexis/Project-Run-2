scoreboard players operation #local kello.player.id = @s kello.player.id
tp @s ~ ~-2500 ~
execute as @e[type=minecraft:marker,distance=..81,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.destination_marker,sort=nearest,limit=1] if score @s kello.player.id = #local kello.player.id run kill @s


# Launch Player

execute as @p[tag=pr.target,tag=kello.entity.player.target,tag=!kello.entity.small_cogwheel_pulling,tag=pr.target] at @s run function kello:player/flee/start
return 1