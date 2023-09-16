execute as @s at @s run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 1 0
execute as @s at @s run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 0
title @s times 20 100 20
title @s subtitle {"text":"Steampunk Factory","bold":true,"color":"gold"}
title @s title ["",{"text":"Applecake Presents","color":"green"}]
scoreboard players set @s ac.player 2
scoreboard players set @s ac.body 1
effect give @s minecraft:slowness 3 255 true
effect give @s minecraft:jump_boost 3 160 true
execute positioned ~ ~ ~ run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.5 20 force @s
execute positioned ~ ~ ~ run particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.5 200 force @s
execute as @s store result score @s ac.PosY run data get entity @s Pos[1]