
#add scoreboards
function maze_escape:maze_npc/zzzzzzzz/load

#summon npc
execute at @e[tag=maze_escape,tag=hitbox] rotated ~-25 ~ run function maze_escape:maze_npc/summon

#run animation
execute as @e[tag=aj.maze_npc.root] run function maze_escape:maze_npc/animations/idle/play

