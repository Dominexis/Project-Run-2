
#add scoreboards
function maze_escape:maze_npc/zzzzzzzz/load

#summon npc
summon minecraft:interaction ~-1 ~33 ~35 {width:1.0f,height:1.51f,Tags:["maze_escape.hitbox"],response:1b}
execute at @e[tag=maze_escape.hitbox] rotated ~-32 ~ run function maze_escape:maze_npc/summon
summon minecraft:text_display ~-1 ~34.55 ~35 {width:1.0f,height:1.5f,billboard:"center",text:'{"text":"Right Click","color":"aqua","bold":true,"type":"text"}',Tags:["maze_escape"]}

#texts
summon minecraft:text_display ~-29 ~-60.5 ~30 {width:1.0f,height:1.5f,billboard:"center",text:'{"text":"Start","color":"green","bold":true,"type":"text"}',Tags:["maze_escape","maze_escape.enter"]}
summon minecraft:text_display ~18.5 ~-60.5 ~-23.5 {width:1.0f,height:1.5f,billboard:"center",text:'{"text":"Finish","color":"red","bold":true,"type":"text"}',Tags:["maze_escape"]}

#exit marker
summon minecraft:marker ~0 ~1 ~-35 {Tags:["maze_escape","maze_escape.exit"]}


#run animation
execute as @e[tag=aj.maze_npc.root] run function maze_escape:maze_npc/animations/idle/play


return 1