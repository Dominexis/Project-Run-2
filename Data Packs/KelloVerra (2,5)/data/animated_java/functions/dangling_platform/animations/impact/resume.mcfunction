execute if entity @s[tag=aj.dangling_platform.root] run function animated_java:dangling_platform/zzzzzzzz/animations/impact/resume_as_root
#execute if entity @s[tag=!aj.dangling_platform.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:dangling_platform/animations/impact/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]