execute if entity @s[tag=aj.comet_flake.root] run function animated_java:comet_flake/zzzzzzzz/apply_variant/default/as_root
execute if entity @s[tag=!aj.comet_flake.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:comet_flake/apply_variant/default ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]