execute if entity @s[tag=aj.gate.root] run function animated_java:gate/zzzzzzzz/apply_variant/loading/as_root
execute if entity @s[tag=!aj.gate.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:gate/apply_variant/loading ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]