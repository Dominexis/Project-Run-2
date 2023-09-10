####################################################
#                                              
#
#                Code by Titruc
#             for project run 2
#
#
#
#####################################################

#timer
scoreboard players add titruc.interactivejump.score.timer titruc.interactivejump.score.timer 1
scoreboard players operation titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.score.timer titruc.interactivejump.score.timer
scoreboard players operation titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer %= titruc.interactivejump.variable.20 titruc.interactivejump.variable

#simple block appear/disappear

execute as @e[type=marker,tag=titruc.interactivejump.block,tag=pr.target] at @s unless block ~ ~ ~ minecraft:white_stained_glass if entity @a[tag=pr.target,distance=..50] run function titruc.interactivejump.sys:block
execute as @e[type=marker,tag=titruc.interactivejump.block,tag=pr.target] at @s if block ~ ~ ~ minecraft:white_stained_glass unless entity @a[tag=pr.target,distance=..50] run fill ~ ~ ~ ~ ~-2 ~ air


#red block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:red] at @s if score @s titruc.interactivejump.score.red matches ..0 as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.redblock.look,distance=..12] at @s run particle dust 0.647 0.133 0.133 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.red matches 2.. as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.redblock.look,distance=..12] at @s run particle falling_dust red_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break red block

execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.redblock.block] at @s unless block ~ ~ ~ minecraft:red_stained_glass if entity @a[tag=pr.target,scores={titruc.interactivejump.score.red=1..10},distance=..12] run function titruc.interactivejump.sys:red_block/red_block
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.redblock.block] at @s if block ~ ~ ~ minecraft:red_stained_glass unless entity @a[tag=pr.target,scores={titruc.interactivejump.score.red=1..10},distance=..12] at @s run fill ~ ~ ~ ~ ~-2 ~ air

    #look sensor
        #place/break look sensor
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.redblock.lookmarker] at @s unless entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.redblock.look,distance=..1] if entity @a[tag=pr.target,distance=..12] run function titruc.interactivejump.sys:red_block/red_block_marker
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.redblock.lookmarker] at @s if entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.redblock.look,distance=..1] unless entity @a[tag=pr.target,distance=..12] run kill @e[tag=titruc.interactivejump.redblock.look,distance=..2]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.red=..0},predicate=titruc.interactivejump.sys:red] run scoreboard players set @s titruc.interactivejump.score.red 10
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.red=1..10}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.red 1

#yellow block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:yellow] at @s if score @s titruc.interactivejump.score.yellow matches ..0 as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.yellowblock.look,distance=..12] at @s run particle dust 0.855 0.769 0 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.yellow matches 2.. as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.yellowblock.look,distance=..12] at @s run particle falling_dust yellow_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break yellow block

execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.block] at @s unless block ~ ~ ~ minecraft:yellow_stained_glass if entity @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=1..30},distance=..12] run function titruc.interactivejump.sys:yellow_block/yellow_block
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.block] at @s if block ~ ~ ~ minecraft:yellow_stained_glass unless entity @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=1..30},distance=..12] at @s run fill ~ ~ ~ ~ ~-2 ~ air

    #look sensor
        #place/break look sensor
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.lookmarker] at @s unless entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.yellowblock.look,distance=..1] if entity @a[tag=pr.target,distance=..12] run function titruc.interactivejump.sys:yellow_block/yellow_block_marker
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.lookmarker] at @s if entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.yellowblock.look,distance=..1] unless entity @a[tag=pr.target,distance=..12] run kill @e[tag=titruc.interactivejump.yellowblock.look,distance=..2]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=..0},predicate=titruc.interactivejump.sys:yellow] run scoreboard players set @s titruc.interactivejump.score.yellow 30
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=1..30}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.yellow 1

#green block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:green] at @s if score @s titruc.interactivejump.score.green matches ..0 as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.greenblock.look,distance=..12] at @s run particle dust 0.098 0.945 0.169 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.green matches 2.. as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.greenblock.look,distance=..12] at @s run particle falling_dust lime_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break green block

execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.greenblock.block] at @s unless block ~ ~ ~ minecraft:lime_stained_glass if entity @a[tag=pr.target,scores={titruc.interactivejump.score.green=1..5},distance=..12] run function titruc.interactivejump.sys:green_block/green_block
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.greenblock.block] at @s if block ~ ~ ~ minecraft:lime_stained_glass unless entity @a[tag=pr.target,scores={titruc.interactivejump.score.green=1..5},distance=..12] at @s run fill ~ ~ ~ ~ ~-2 ~ air

    #look sensor
        #place/break look sensor
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.greenblock.lookmarker] at @s unless entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.greenblock.look,distance=..1] if entity @a[tag=pr.target,distance=..12] run function titruc.interactivejump.sys:green_block/green_block_marker
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.greenblock.lookmarker] at @s if entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.greenblock.look,distance=..1] unless entity @a[tag=pr.target,distance=..12] run kill @e[tag=titruc.interactivejump.greenblock.look,distance=..2]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.green=..0},predicate=titruc.interactivejump.sys:green] run scoreboard players set @s titruc.interactivejump.score.green 5
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.green=1..5}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.green 1

#blue block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:blue] at @s if score @s titruc.interactivejump.score.blue matches ..0 as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.blueblock.look,distance=..12] at @s run particle dust 0.086 0.635 0.773 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.blue matches 2.. as @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.blueblock.look,distance=..12] at @s run particle falling_dust light_blue_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break blue block

execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blueblock.block] at @s unless block ~ ~ ~ minecraft:light_blue_stained_glass if entity @a[tag=pr.target,scores={titruc.interactivejump.score.blue=1..20},distance=..12] run function titruc.interactivejump.sys:blue_block/blue_block
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blueblock.block] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass unless entity @a[tag=pr.target,scores={titruc.interactivejump.score.blue=1..20},distance=..12] at @s run fill ~ ~ ~ ~ ~-2 ~ air

    #look sensor
        #place/break look sensor
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blueblock.lookmarker] at @s unless entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.blueblock.look,distance=..1] if entity @a[tag=pr.target,distance=..12] run function titruc.interactivejump.sys:blue_block/blue_block_marker
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blueblock.lookmarker] at @s if entity @e[type=interaction,tag=pr.target,tag=titruc.interactivejump.blueblock.look,distance=..1] unless entity @a[tag=pr.target,distance=..12] run kill @e[tag=titruc.interactivejump.blueblock.look,distance=..2]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.blue=..0},predicate=titruc.interactivejump.sys:blue] run scoreboard players set @s titruc.interactivejump.score.blue 20
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.blue=1..20}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.blue 1




#affichage du timer

execute as @a[tag=titruc.interactivejump.title_timer,tag=pr.target] at @s run title @s actionbar ["",{"text":"\u231a \u0020"},{"score":{"name":"@s","objective":"titruc.interactivejump.score.red"},"color":"#C60002"},{"text":" \u0020 \u0020"},{"score":{"name":"@s","objective":"titruc.interactivejump.score.blue"},"color":"#00DCE5"},{"text":" \u0020 \u0020"},{"score":{"name":"@s","objective":"titruc.interactivejump.score.yellow"},"color":"#E1CB00"},{"text":" \u0020 \u0020"},{"score":{"name":"@s","objective":"titruc.interactivejump.score.green"},"color":"#00BF11"},{"text":" \u0020\u231a"},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]


#checkpoint

execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s unless block ~ ~ ~ minecraft:white_stained_glass if entity @a[tag=pr.target,distance=..7] run function titruc.interactivejump.sys:checkpoint
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s if block ~ ~ ~ minecraft:white_stained_glass unless entity @a[tag=pr.target,distance=..7] run fill ~ ~3 ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s if entity @e[type=item,tag=pr.target,distance=..2] unless entity @a[tag=pr.target,distance=..7] run kill @e[type=item,distance=..2]

execute as @e[type=marker,tag=titruc.interactivejump.checkpoint,tag=pr.target] at @s if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate[power=1] as @a[tag=pr.target,distance=..2] at @s run function titruc.interactivejump.sys:checkpoint_setspawn

#block noir

execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s if entity @a[tag=pr.target,distance=..20] run function titruc.interactivejump.sys:black_block/detect_type
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s unless entity @a[tag=pr.target,distance=..20] positioned ^ ^ ^ run function titruc.interactivejump.sys:black_block/detect_type_destroy
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s as @a[tag=pr.target,predicate=!titruc.interactivejump.sys:onground,distance=..2] at @s if block ~ ~-0.2 ~ polished_deepslate as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block,distance=..10] at @s unless entity @a[tag=pr.target,distance=..2] run scoreboard players add @s titruc.interactivejump.score.black 1
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] run scoreboard players operation @s titruc.interactivejump.score.black %= titruc.interactivejump.variable.4 titruc.interactivejump.variable

#kill

execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:onground] unless block ~ ~ ~ structure_void unless block ~ ~-1 ~ #titruc.interactivejump.sys:allowed at @s run function titruc.interactivejump.sys:kill/kill
execute as @a[tag=pr.target] if block ~ ~ ~ #titruc.interactivejump.sys:innoallowed run function titruc.interactivejump.sys:kill/kill

execute as @a[tag=pr.target] at @s if entity @e[type=marker,tag=pr.target,tag=titruc.fin,distance=..4] run function pr:player/finish