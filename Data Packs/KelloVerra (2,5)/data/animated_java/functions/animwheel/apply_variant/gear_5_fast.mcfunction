execute if entity @s[tag=aj.animwheel.root] run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_5_fast/as_root
execute if entity @s[tag=!aj.animwheel.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" animated_java:animwheel/apply_variant/gear_5_fast ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1