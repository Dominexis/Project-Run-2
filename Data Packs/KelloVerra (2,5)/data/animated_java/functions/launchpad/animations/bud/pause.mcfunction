execute if entity @s[tag=aj.launchpad.root] run function animated_java:launchpad/zzzzzzzz/animations/bud/pause_as_root
#execute if entity @s[tag=!aj.launchpad.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:launchpad/animations/bud/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]