execute if entity @s[tag=aj.melloflora_lantern_sho.root] run function animated_java:melloflora_lantern_sho/zzzzzzzz/apply_variant/magenta/as_root
execute if entity @s[tag=!aj.melloflora_lantern_sho.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:melloflora_lantern_sho/apply_variant/magenta ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]