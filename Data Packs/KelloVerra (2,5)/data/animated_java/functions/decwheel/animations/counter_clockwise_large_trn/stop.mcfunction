execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large_trn/stop_as_root
execute if entity @s[tag=!aj.decwheel.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:decwheel/animations/counter_clockwise_large_trn/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]