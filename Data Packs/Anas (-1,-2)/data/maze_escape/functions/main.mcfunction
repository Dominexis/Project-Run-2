execute as @e[type=minecraft:item_display,tag=aj.rig_root] run function #maze_escape:rig_tick


#speech
execute as @e[tag=aj.maze_npc.root] if score @s aj.anim_time matches 53 run function maze_escape:maze_npc/animations/wave/stop
execute as @e[tag=aj.maze_npc.root] if score @s aj.anim_time matches 53 run function maze_escape:maze_npc/animations/idle/play



#teleport to start
execute as @e[tag=aj.maze_npc.root] at @s if score @s aj.anim_time matches 52 as @a[tag=pr.target,distance=..4] at @e[tag=maze_escape.enter] run tp @s ~-1 ~1 ~1


#exit area
execute as @a[tag=pr.target] at @s if block ~ ~-1 ~ purple_glazed_terracotta run function maze_escape:files/exit

#detect speech
execute as @e[tag=maze_escape.hitbox] on target run function maze_escape:files/talk



#trapped mud
execute as @a[tag=pr.target,gamemode=!spectator] at @s if block ~ ~-1 ~ packed_mud run function maze_escape:files/traps


execute positioned ~19 ~-57 ~-23 positioned ~ ~-0.5 ~-1 run particle cherry_leaves ~ ~ ~ 1 0 1 1 1 force