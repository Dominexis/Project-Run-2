tag @s add ridingS
title @s times 20 100 20
title @s subtitle ["",{"text":"Advice:","underlined":true,"color":"dark_green","type":"text"},{"text":" Play on F5","color":"green","type":"text"}]
title @s title {"text":"","type":"text"}
execute at @e[tag=RoBa1,tag=pr.target] run fill ~ ~-1 ~ ~1 ~-4 ~ minecraft:air destroy

execute rotated 180 0 run function pr:player/checkpoint/mark_pos

function ischool04_plot:logic/spawn_mount
return 1