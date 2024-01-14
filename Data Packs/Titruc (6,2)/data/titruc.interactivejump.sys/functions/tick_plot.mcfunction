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

execute as @e[type=minecraft:marker,tag=titruc.interactivejump.block,tag=pr.target] at @s unless block ~ ~ ~ minecraft:white_stained_glass if entity @a[distance=..50,tag=pr.target] run function titruc.interactivejump.sys:block
execute as @e[type=minecraft:marker,tag=titruc.interactivejump.block,tag=pr.target] at @s if block ~ ~ ~ minecraft:white_stained_glass unless entity @a[distance=..50,tag=pr.target] run fill ~ ~ ~ ~ ~-2 ~ minecraft:air


#red block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:red] at @s if score @s titruc.interactivejump.score.red matches ..0 as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.redblock.look] at @s run particle minecraft:dust 0.647 0.133 0.133 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.red matches 2.. as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.redblock.look] at @s run particle minecraft:falling_dust minecraft:red_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break red block

execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.redblock.block] at @s unless block ~ ~ ~ minecraft:red_stained_glass if entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.red=1..10}] run function titruc.interactivejump.sys:red_block/red_block
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.redblock.block] at @s if block ~ ~ ~ minecraft:red_stained_glass unless entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.red=1..10}] at @s run fill ~ ~ ~ ~ ~-2 ~ minecraft:air

    #look sensor
        #place/break look sensor
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.redblock.lookmarker] at @s unless entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.redblock.look] if entity @a[distance=..12,tag=pr.target] run function titruc.interactivejump.sys:red_block/red_block_marker
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.redblock.lookmarker] at @s if entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.redblock.look] unless entity @a[distance=..12,tag=pr.target] run kill @e[distance=..2,tag=titruc.interactivejump.redblock.look]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.red=..0},predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:red] run function titruc.interactivejump.sys:red_block/look_at
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.red=1}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1.2
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.red=1..10}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.red 1

#yellow block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:yellow] at @s if score @s titruc.interactivejump.score.yellow matches ..0 as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.yellowblock.look] at @s run particle minecraft:dust 0.855 0.769 0 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.yellow matches 2.. as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.yellowblock.look] at @s run particle minecraft:falling_dust minecraft:yellow_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break yellow block

execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.block] at @s unless block ~ ~ ~ minecraft:yellow_stained_glass if entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.yellow=1..30}] run function titruc.interactivejump.sys:yellow_block/yellow_block
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.block] at @s if block ~ ~ ~ minecraft:yellow_stained_glass unless entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.yellow=1..30}] at @s run fill ~ ~ ~ ~ ~-2 ~ minecraft:air

    #look sensor
        #place/break look sensor
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.lookmarker] at @s unless entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.yellowblock.look] if entity @a[distance=..12,tag=pr.target] run function titruc.interactivejump.sys:yellow_block/yellow_block_marker
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.lookmarker] at @s if entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.yellowblock.look] unless entity @a[distance=..12,tag=pr.target] run kill @e[distance=..2,tag=titruc.interactivejump.yellowblock.look]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=..0},predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:yellow] run function titruc.interactivejump.sys:yellow_block/look_at
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=1}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0.8
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.yellow=1..30}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.yellow 1

#green block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:green] at @s if score @s titruc.interactivejump.score.green matches ..0 as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.greenblock.look] at @s run particle minecraft:dust 0.098 0.945 0.169 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.green matches 2.. as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.greenblock.look] at @s run particle minecraft:falling_dust minecraft:lime_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break green block

execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.greenblock.block] at @s unless block ~ ~ ~ minecraft:lime_stained_glass if entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.green=1..5}] run function titruc.interactivejump.sys:green_block/green_block
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.greenblock.block] at @s if block ~ ~ ~ minecraft:lime_stained_glass unless entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.green=1..5}] at @s run fill ~ ~ ~ ~ ~-2 ~ minecraft:air

    #look sensor
        #place/break look sensor
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.greenblock.lookmarker] at @s unless entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.greenblock.look] if entity @a[distance=..12,tag=pr.target] run function titruc.interactivejump.sys:green_block/green_block_marker
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.greenblock.lookmarker] at @s if entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.greenblock.look] unless entity @a[distance=..12,tag=pr.target] run kill @e[distance=..2,tag=titruc.interactivejump.greenblock.look]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.green=..0},predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:green] run function titruc.interactivejump.sys:green_block/look_at
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.green=1}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1.4
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.green=1..5}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.green 1

#blue block

    #block

        #particle
execute as @a[tag=pr.target,predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:blue] at @s if score @s titruc.interactivejump.score.blue matches ..0 as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.blueblock.look] at @s run particle minecraft:dust 0.086 0.635 0.773 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a
execute as @a[tag=pr.target] at @s if score @s titruc.interactivejump.score.blue matches 2.. as @e[type=minecraft:interaction,distance=..12,tag=pr.target,tag=titruc.interactivejump.blueblock.look] at @s run particle minecraft:falling_dust minecraft:light_blue_stained_glass ~ ~ ~ 0.3 0.3 0.3 0.001 1 normal @a

        #place/break blue block

execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blueblock.block] at @s unless block ~ ~ ~ minecraft:light_blue_stained_glass if entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.blue=1..20}] run function titruc.interactivejump.sys:blue_block/blue_block
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blueblock.block] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass unless entity @a[distance=..12,tag=pr.target,scores={titruc.interactivejump.score.blue=1..20}] at @s run fill ~ ~ ~ ~ ~-2 ~ minecraft:air

    #look sensor
        #place/break look sensor
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blueblock.lookmarker] at @s unless entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.blueblock.look] if entity @a[distance=..12,tag=pr.target] run function titruc.interactivejump.sys:blue_block/blue_block_marker
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blueblock.lookmarker] at @s if entity @e[type=minecraft:interaction,distance=..1,tag=pr.target,tag=titruc.interactivejump.blueblock.look] unless entity @a[distance=..12,tag=pr.target] run kill @e[distance=..2,tag=titruc.interactivejump.blueblock.look]
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.blue=..0},predicate=titruc.interactivejump.sys:interaction,predicate=titruc.interactivejump.sys:blue] run function titruc.interactivejump.sys:blue_block/look_at
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.blue=1}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1
execute as @a[tag=pr.target,scores={titruc.interactivejump.score.blue=1..20}] if score titruc.interactivejump.score.timer.s titruc.interactivejump.score.timer = titruc.interactivejump.variable.0 titruc.interactivejump.variable run scoreboard players remove @s titruc.interactivejump.score.blue 1




#affichage du timer
execute as @a[tag=titruc.interactivejump.title_timer,tag=pr.target] at @s run function titruc.interactivejump.sys:display_timer


#checkpoint

execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s unless block ~ ~ ~ minecraft:white_stained_glass if entity @a[distance=..7,tag=pr.target] run function titruc.interactivejump.sys:checkpoint
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s if block ~ ~ ~ minecraft:white_stained_glass unless entity @a[distance=..7,tag=pr.target] run fill ~ ~3 ~ ~ ~-2 ~ minecraft:air
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s if entity @e[type=minecraft:item,distance=..2,tag=pr.target] unless entity @a[distance=..7,tag=pr.target] run kill @e[type=minecraft:item,distance=..2]

execute as @e[type=minecraft:marker,tag=titruc.interactivejump.checkpoint,tag=pr.target] at @s if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate unless block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate[power=0] as @a[distance=..2,tag=pr.target] positioned ~ ~2 ~ run function titruc.interactivejump.sys:checkpoint_setspawn

#block noir

execute as @a[tag=pr.target] store result score @s titruc.interactivejump.standing_on_deepslate if predicate titruc.interactivejump.sys:on_polished_deepslate

execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s if entity @a[distance=..20,tag=pr.target] run function titruc.interactivejump.sys:black_block/detect_type
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s unless entity @a[distance=..20,tag=pr.target] positioned ^ ^ ^ run function titruc.interactivejump.sys:black_block/detect_type_destroy
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s as @a[distance=..2,tag=pr.target,scores={titruc.interactivejump.standing_on_deepslate=1,titruc.interactivejump.standing_on_deepslate_prev=0}] at @s if block ~ ~-0.2 ~ minecraft:polished_deepslate as @e[type=minecraft:marker,distance=..10,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s unless entity @a[distance=..2,tag=pr.target] run scoreboard players add @s titruc.interactivejump.score.black 1
execute as @e[type=minecraft:marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] run scoreboard players operation @s titruc.interactivejump.score.black %= titruc.interactivejump.variable.4 titruc.interactivejump.variable

execute as @a[tag=pr.target] run scoreboard players operation @s titruc.interactivejump.standing_on_deepslate_prev = @s titruc.interactivejump.standing_on_deepslate

#kill

execute as @a[tag=pr.target] at @s unless block ~ ~ ~ minecraft:structure_void unless block ~ ~-0.1 ~ #titruc.interactivejump.sys:allowed at @s[predicate=titruc.interactivejump.sys:onground] run function titruc.interactivejump.sys:kill/kill
execute as @a[tag=pr.target] at @s if block ~ ~ ~ #titruc.interactivejump.sys:innoallowed run function titruc.interactivejump.sys:kill/kill

kill @e[type=minecraft:item,tag=pr.target]

execute as @a[tag=pr.target] at @s if entity @e[type=minecraft:marker,distance=..4,tag=pr.target,tag=titruc.fin] run function pr:player/finish
return 1