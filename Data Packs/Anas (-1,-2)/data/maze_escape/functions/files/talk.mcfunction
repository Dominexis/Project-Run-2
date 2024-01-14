
#play animation
execute as @e[tag=aj.maze_npc.root] run function maze_escape:maze_npc/animations/idle/stop
execute as @e[tag=aj.maze_npc.root] run function maze_escape:maze_npc/animations/wave/play
execute as @e[tag=aj.maze_npc.root] at @s run tellraw @a[distance=..3] [{"text":"[Anas099] ","color":"green","type":"text"},{"text":"Greetings! I'm Anas, the creator of this map. As you embark on your journey, navigate through the maze until you reach the final destination while remaining cautious of Packed Mud, as it can be deceptive and act as traps. Please take caution and enjoy every moment along the way!","color":"gray","type":"text"}]







#remove interaction data
execute as @e[tag=maze_escape.hitbox] run data remove entity @s interaction



return 1