summon item_frame ~ ~ ~ {Facing:1b,Tags:["blockCenter"]}
execute at @e[type=item_frame,tag=blockCenter] run summon marker ~ ~ ~ {Facing:1b,Tags:["collider"]}
kill @e[tag=blockCenter]
data modify entity @e[tag=collider,limit=1] Pos[1] set from entity @s Pos[1]
data modify entity @e[tag=collider,limit=1] Pos[0] set from entity @s Pos[0]
execute as @e[tag=collider] at @s run tp @s ~-0.8 ~ ~
execute at @e[tag=collider,limit=1] run tp @s ~ ~ ~
kill @e[tag=collider]