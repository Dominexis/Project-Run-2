execute if entity @s[tag=aj.moving_platform.root] run function animated_java:moving_platform/zzzzzzzz/animations/impact/apply_frame_as_root
execute if entity @s[tag=!aj.moving_platform.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:moving_platform/animations/impact/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1