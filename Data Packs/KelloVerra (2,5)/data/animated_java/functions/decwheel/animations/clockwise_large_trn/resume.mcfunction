execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_trn/resume_as_root
execute if entity @s[tag=!aj.decwheel.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:decwheel/animations/clockwise_large_trn/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1