execute if entity @s[tag=aj.maze_npc.root] run function maze_escape:maze_npc/zzzzzzzz/animations/wave/tween_resume_as_root
execute if entity @s[tag=!aj.maze_npc.root] run tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},{"text":"ERROR ☠","color":"red","type":"text"},{"text":" > ","color":"gray","type":"text"},[{"text":"The function","color":"yellow"},{"text":" maze_escape:maze_npc/animations/wave/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]
return 1