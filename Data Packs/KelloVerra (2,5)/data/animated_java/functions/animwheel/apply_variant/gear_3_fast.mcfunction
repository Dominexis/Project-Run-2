execute if entity @s[tag=aj.animwheel.root] run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_3_fast/as_root
#execute if entity @s[tag=!aj.animwheel.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:animwheel/apply_variant/gear_3_fast ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]