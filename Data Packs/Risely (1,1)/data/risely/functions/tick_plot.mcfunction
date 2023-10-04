execute as @a[tag=pr.target] store result score @s risely.item_count run clear @s tripwire_hook 0

execute positioned ~-19 ~16 ~24 if entity @a[distance=..5,tag=pr.target,scores={risely.item_count=1..}] run setblock ~ ~-2 ~ minecraft:redstone_torch
execute positioned ~-19 ~16 ~24 unless entity @a[distance=..5,tag=pr.target,scores={risely.item_count=1..}] run setblock ~ ~-2 ~ stone
execute positioned ~-19 ~16 ~25 as @a[dx=0,dy=0,dz=0,tag=pr.target] positioned ~ ~ ~-1 unless entity @s[dx=0,dy=0,dz=0] run clear @s minecraft:tripwire_hook

scoreboard players add #chest_reset_timer risely.value 1
execute if score #chest_reset_timer risely.value matches 20.. positioned ~11 ~19 ~-13 unless entity @a[tag=pr.target,distance=..5] run setblock ~ ~ ~ air
execute if score #chest_reset_timer risely.value matches 20.. positioned ~11 ~19 ~-13 unless entity @a[tag=pr.target,distance=..5] run setblock ~ ~ ~ minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:1b,Slot:13b,id:"minecraft:tripwire_hook",tag:{display:{Name:'{"text":"Basement Key","color":"gold","italic":false,"bold":true}'}}}]} replace
execute if score #chest_reset_timer risely.value matches 20.. run scoreboard players set #chest_reset_timer risely.value 0

scoreboard players add #force_chest_reset_timer risely.value 1
execute if score #force_chest_reset_timer risely.value matches 200.. positioned ~11 ~19 ~-13 run setblock ~ ~ ~ air
execute if score #force_chest_reset_timer risely.value matches 200.. positioned ~11 ~19 ~-13 run setblock ~ ~ ~ minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[{Count:1b,Slot:13b,id:"minecraft:tripwire_hook",tag:{display:{Name:'{"text":"Basement Key","color":"gold","italic":false,"bold":true}'}}}]} replace
execute if score #force_chest_reset_timer risely.value matches 200.. run scoreboard players set #force_chest_reset_timer risely.value 0