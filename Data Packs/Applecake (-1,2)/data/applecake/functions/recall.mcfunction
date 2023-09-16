particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.5 20 force @s
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.5 200 force @s
scoreboard players add @s ac.body 1
execute as @s at @s run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 0
title @s times 10 40 20
title @s subtitle {"text":"New Body Synced!","color":"green"}
title @s title ["",{"selector":"@s","italic":true,"color":"gray"},{"text":"_","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"ac.body"},"italic":true,"color":"gray"}]
effect give @s minecraft:slow_falling 3 1 true