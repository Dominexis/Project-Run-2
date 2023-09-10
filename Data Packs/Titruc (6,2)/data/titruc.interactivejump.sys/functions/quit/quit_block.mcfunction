execute as @e[type=marker,tag=titruc.interactivejump.block,tag=pr.target] at @s run fill ~ ~ ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.redblock.block] at @s run fill ~ ~ ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.redblock.lookmarker] at @s run kill @e[tag=titruc.interactivejump.redblock.look,distance=..2]
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.block] at @s run fill ~ ~ ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.yellowblock.lookmarker] at @s run kill @e[tag=titruc.interactivejump.yellowblock.look,distance=..2]
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.greenblock.block] at @s run fill ~ ~ ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.greenblock.lookmarker] at @s run kill @e[tag=titruc.interactivejump.greenblock.look,distance=..2]
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blueblock.block] at @s run fill ~ ~ ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blueblock.lookmarker] at @s run kill @e[tag=titruc.interactivejump.blueblock.look,distance=..2]
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.checkpoint] at @s run fill ~ ~3 ~ ~ ~-2 ~ air
execute as @e[type=marker,tag=pr.target,tag=titruc.interactivejump.blackblock.block] at @s run function titruc.interactivejump.sys:black_block/detect_type_destroy
