execute if entity @s[tag=aj.checkpoint_flag.root] run function animated_java:checkpoint_flag/zzzzzzzz/animations/checkpoint/tween_play_as_root
execute if entity @s[tag=!aj.checkpoint_flag.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:checkpoint_flag/animations/checkpoint/tween_play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1