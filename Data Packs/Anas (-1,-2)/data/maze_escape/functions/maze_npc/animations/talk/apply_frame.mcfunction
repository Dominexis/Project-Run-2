execute if entity @s[tag=aj.maze_npc.root] run function maze_escape:maze_npc/zzzzzzzz/animations/talk/apply_frame_as_root
execute if entity @s[tag=!aj.maze_npc.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" maze_escape:maze_npc/animations/talk/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]