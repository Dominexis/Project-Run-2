execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small_trn/stop_as_root
execute if entity @s[tag=!aj.decwheel.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:decwheel/animations/counter_clockwise_small_trn/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1