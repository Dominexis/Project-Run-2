execute if entity @s[tag=aj.launchpad.root] run function animated_java:launchpad/zzzzzzzz/animations/cancel/stop_as_root
execute if entity @s[tag=!aj.launchpad.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:launchpad/animations/cancel/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]