execute as @e[type=minecraft:item_display,tag=aj.rig_root,tag=pr.target] run function #maze_escape:rig_tick


#speech
execute as @e[tag=aj.maze_npc.root,tag=pr.target] if score @s aj.anim_time matches 53 run function maze_escape:maze_npc/animations/wave/stop
execute as @e[tag=aj.maze_npc.root,tag=pr.target] if score @s aj.anim_time matches 53 run function maze_escape:maze_npc/animations/idle/play


#teleport to start
execute as @e[tag=aj.maze_npc.root,tag=pr.target] at @s if score @s aj.anim_time matches 52 as @a[tag=pr.target,distance=..3] at @e[tag=maze_escape,tag=enter,tag=pr.target] run tp @s ~ ~1 ~


#exit area
execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ purple_glazed_terracotta run function maze_escape:files/exit

#detect speech
execute as @e[tag=maze_escape,tag=hitbox,tag=pr.target] on target run function maze_escape:files/talk



#trapped mud
execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ packed_mud run function maze_escape:files/traps
