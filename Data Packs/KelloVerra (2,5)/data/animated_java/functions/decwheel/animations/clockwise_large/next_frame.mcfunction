execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large/next_frame_as_root
execute if entity @s[tag=!aj.decwheel.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:decwheel/animations/clockwise_large/next_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]