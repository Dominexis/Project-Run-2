execute if entity @s[tag=aj.moving_platform.root] run function animated_java:moving_platform/zzzzzzzz/animations/impact/apply_frame_as_root
execute if entity @s[tag=!aj.moving_platform.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:moving_platform/animations/impact/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]