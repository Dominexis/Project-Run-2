execute as @e[type=minecraft:item_display,tag=aj.maze_npc.root] run function maze_escape:maze_npc/zzzzzzzz/remove/as_root
kill @e[tag=aj.maze_npc.rig_entity]
return 1