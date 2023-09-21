tag @s add ridingS
ride @s mount @e[tag=Czg,limit=1,sort=nearest,tag=pr.target]
title @s times 20 100 20
title @s subtitle ["",{"text":"Advice:","underlined":true,"color":"dark_green"},{"text":" Play on F5","color":"green"}]
title @s title {"text":""}
execute at @e[tag=RoBa1,tag=pr.target] run fill ~ ~-1 ~ ~1 ~-4 ~ air destroy