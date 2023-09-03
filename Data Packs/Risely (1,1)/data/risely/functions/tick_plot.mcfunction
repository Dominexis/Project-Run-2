execute as @a[tag=pr.target] store result score @s risely.item_count run clear @s tripwire_hook 0

execute positioned ~-19 ~16 ~24 if entity @a[distance=..5,tag=pr.target,scores={risely.item_count=1..}] run setblock ~-19 ~14 ~24 minecraft:redstone_torch
execute positioned ~-19 ~16 ~24 unless entity @a[distance=..5,tag=pr.target,scores={risely.item_count=1..}] run setblock ~-19 ~14 ~24 stone
execute positioned ~-19 ~16 ~25 as @a[dx=0,dy=0,dz=0,tag=pr.target] positioned ~ ~ ~-1 unless entity @s[dx=0,dy=0,dz=0] run clear @s minecraft:tripwire_hook

scoreboard players add #chest_reset_timer risely.value 1
execute if score #chest_reset_timer risely.value matches 20.. positioned ~11 ~19 ~-13 unless entity @a[tag=pr.target,distance=..5] run item replace block ~ ~ ~ container.13 with minecraft:tripwire_hook{display:{Name:'{"text":"Basement Key","color":"gold","italic":false,"bold":true}'}}
execute if score #chest_reset_timer risely.value matches 20.. run scoreboard players set #chest_reset_timer risely.value 0