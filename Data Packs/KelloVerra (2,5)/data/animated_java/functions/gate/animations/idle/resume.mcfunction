execute if entity @s[tag=aj.gate.root] run function animated_java:gate/zzzzzzzz/animations/idle/resume_as_root
execute if entity @s[tag=!aj.gate.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:gate/animations/idle/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]