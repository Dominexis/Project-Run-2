execute if entity @s[tag=aj.escapement.root] run function animated_java:escapement/zzzzzzzz/animations/close/play_as_root
execute if entity @s[tag=!aj.escapement.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:escapement/animations/close/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]