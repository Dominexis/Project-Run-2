execute if entity @s[tag=aj.melloleta_patch.root] run function animated_java:melloleta_patch/zzzzzzzz/apply_variant/default/as_root
execute if entity @s[tag=!aj.melloleta_patch.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:melloleta_patch/apply_variant/default ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]