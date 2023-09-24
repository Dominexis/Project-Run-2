execute as @a[scores={ac.player=2},tag=pr.target] positioned ~0 ~39 ~-32 run function pr:player/checkpoint/mark_pos
execute as @a[scores={ac.player=2},tag=pr.target] run scoreboard players set @s ac.player 1
scoreboard players add #1 ac.delay 1
execute if score #1 ac.delay matches 200.. positioned ~7 ~30 ~-32 run function applecake:ac/platform1
# execute if score #1 ac.delay matches 200.. run function applecake:ac/killentitydrop
execute if score #1 ac.delay matches 200.. run scoreboard players set #1 ac.delay 0
scoreboard players add #2 ac.delay 1
execute if score #2 ac.delay matches 400.. positioned ~-10 ~39 ~-23 run function applecake:ac/platform2
# execute if score #2 ac.delay matches 400.. run function applecake:ac/killentitydrop
execute if score #2 ac.delay matches 400.. run scoreboard players set #2 ac.delay 0
scoreboard players add #3 ac.delay 1
execute if score #3 ac.delay matches 100.. run scoreboard players set #3a ac.delay 1
execute if score #3 ac.delay matches 100.. if predicate applecake:ran-50 run scoreboard players add #3a ac.delay 1
execute if score #3 ac.delay matches 100.. if score #3a ac.delay matches 1 positioned ~-38 ~8 ~26 run function applecake:ac/platform3
execute if score #3 ac.delay matches 100.. if score #3a ac.delay matches 2 positioned ~-38 ~8 ~30 run function applecake:ac/platform3
# execute if score #3 ac.delay matches 100.. run function applecake:ac/killentitydrop
execute if score #3 ac.delay matches 100.. run scoreboard players set #3 ac.delay 0
execute as @e[tag=ac.entity,tag=pr.target] run scoreboard players add @s ac.delay2 1
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform1] at @s run tp @s ~0.05 ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform1] if score @s ac.delay2 matches 460.. run tp @s ~ ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform1] if score @s ac.delay2 matches 460.. run kill @s
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform2] at @s if score @s ac.delay2 matches 0..380 run tp @s ~-0.05 ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform2] at @s if score @s ac.delay2 matches 381..760 run tp @s ~ ~ ~0.05
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform2] at @s if score @s ac.delay2 matches 761.. run tp @s ~0.05 ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform2] if score @s ac.delay2 matches 1860.. run tp @s ~ 0 ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform2] if score @s ac.delay2 matches 1860.. run kill @s
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] run scoreboard players add @s ac.temp 1
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] at @s if score @s ac.temp matches 0..140 run tp @s ~0.4 ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] at @s if score @s ac.temp matches 141..185 run tp @s ~ ~1 ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] at @s if score @s ac.temp matches 170..280 run tp @s ~-0.4 ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3,type=armor_stand] at @s if score @s ac.temp matches 186 run tp @s ~-3.5 ~ ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] at @s if score @s ac.temp matches 280.. run tp @s ~ ~1 ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3,type=armor_stand] at @s if score @s ac.temp matches 280.. run tp @s ~ 0 ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3,type=armor_stand] at @s if score @s ac.temp matches 280.. run kill @s
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] at @s if score @s ac.temp matches 500.. run tp @s ~ 0 ~
execute as @e[tag=ac.entity,tag=pr.target,tag=ac.platform3] at @s if score @s ac.temp matches 500.. run kill @s
execute as @a[scores={ac.player=1},tag=pr.target] run effect give @s minecraft:resistance 5 255 true
execute as @a[scores={ac.player=1},tag=pr.target] run effect give @s minecraft:darkness 5 10 true
execute as @a[scores={ac.player=1},tag=pr.target] store result score @s ac.PosY run data get entity @s Pos[1]
execute as @a[scores={ac.player=1,ac.PosY=..-25},gamemode=!spectator,tag=pr.target] run kill @s
execute as @a[scores={ac.player=1,ac.PosY=7..60},gamemode=!spectator,tag=pr.target] at @s if block ~ 5 ~ weathered_copper run effect give @s minecraft:levitation 1 10 true

execute positioned ~-6 ~42 ~-22 as @a[tag=pr.target,distance=..3] positioned ~ ~17 ~ rotated 90 0 run function pr:player/checkpoint/mark_pos
execute positioned ~31 ~45 ~-4 as @a[tag=pr.target,distance=..6] positioned ~ ~13 ~ rotated 0 0 run function pr:player/checkpoint/mark_pos
execute positioned ~7 ~54 ~34 as @a[tag=pr.target,distance=..3] positioned ~ ~10 ~ rotated 90 0 run function pr:player/checkpoint/mark_pos