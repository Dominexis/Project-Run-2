execute if entity @s[tag=aj.gate.root] run function animated_java:gate/zzzzzzzz/animations/chp_1_open/pause_as_root
execute if entity @s[tag=!aj.gate.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:gate/animations/chp_1_open/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1