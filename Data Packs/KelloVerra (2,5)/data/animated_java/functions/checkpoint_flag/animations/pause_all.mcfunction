execute if entity @s[tag=aj.checkpoint_flag.root] run function animated_java:checkpoint_flag/zzzzzzzz/animations/pause_all_as_root
execute if entity @s[tag=!aj.checkpoint_flag.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:checkpoint_flag/animations/pause_all ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]