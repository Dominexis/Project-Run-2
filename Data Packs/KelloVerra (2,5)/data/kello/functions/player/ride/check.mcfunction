execute if entity @s[tag=kello.riding] on vehicle positioned as @s if block ~ ~ ~ minecraft:barrier align y run tp @s ~ ~1 ~
execute if entity @s[tag=kello.riding] on vehicle positioned as @s if block ~ ~1 ~ minecraft:barrier align y run tp @s ~ ~1 ~


scoreboard players set #boolean kello.value 0
execute on vehicle on passengers run scoreboard players set #boolean kello.value 1
execute if score #boolean kello.value matches 0 run tag @s remove kello.riding
execute if score #boolean kello.value matches 0 run tag @s remove kello.player.flee_reverting
execute if score #boolean kello.value matches 0 run tag @s remove kello.player.grappling
return 1