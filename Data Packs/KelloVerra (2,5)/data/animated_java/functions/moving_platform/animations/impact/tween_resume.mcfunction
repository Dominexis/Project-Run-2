execute if entity @s[tag=aj.moving_platform.root] run function animated_java:moving_platform/zzzzzzzz/animations/impact/tween_resume_as_root
#execute if entity @s[tag=!aj.moving_platform.root] run tellraw @s ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:moving_platform/animations/impact/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]