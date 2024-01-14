execute store result score @s kello.player.y run data get entity @s Pos[1] 10


tag @s add kello.player.void_target

scoreboard players operation #void_y kello.value = @s kello.player.void_y
scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=minecraft:marker,tag=kello.void_marker] if score @s kello.player.id = #local kello.player.id run function kello:player/tick/void/indication

tag @s remove kello.player.void_target
return 1