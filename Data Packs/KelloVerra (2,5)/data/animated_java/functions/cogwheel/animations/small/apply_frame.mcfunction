execute if entity @s[tag=aj.cogwheel.root] run function animated_java:cogwheel/zzzzzzzz/animations/small/apply_frame_as_root
execute if entity @s[tag=!aj.cogwheel.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:cogwheel/animations/small/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]