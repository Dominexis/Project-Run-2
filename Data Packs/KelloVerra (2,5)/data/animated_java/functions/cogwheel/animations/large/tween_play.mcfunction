execute if entity @s[tag=aj.cogwheel.root] run function animated_java:cogwheel/zzzzzzzz/animations/large/tween_play_as_root
execute if entity @s[tag=!aj.cogwheel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:cogwheel/animations/large/tween_play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]