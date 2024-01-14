# summon item_frame ~ ~ ~ {Facing:1b,Tags:["pr.target","blockCenter"]}
# execute at @e[type=item_frame,tag=pr.target,tag=blockCenter] run summon marker ~ ~ ~ {Facing:1b,Tags:["pr.target","collider"]}
# kill @e[tag=blockCenter,tag=pr.target]
# data modify entity @e[tag=collider,tag=pr.target,limit=1] Pos[1] set from entity @s Pos[1]
# data modify entity @e[tag=collider,tag=pr.target,limit=1] Pos[0] set from entity @s Pos[0]
# execute as @e[tag=collider,tag=pr.target] at @s run tp @s ~-0.8 ~ ~
# execute at @e[tag=collider,tag=pr.target,limit=1] run tp @s ~ ~ ~
# kill @e[tag=collider,tag=pr.target]

execute align x run tp @s ~-0.8 ~ ~
return 1