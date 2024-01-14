#When players enter the plot
title @s times 10t 3s 10t
title @s title {"bold":true,"color":"dark_gray","text":"The Path","type":"text"}
title @s subtitle {"bold":true,"color":"gray","text":"of Duality","type":"text"}
tellraw @s {"color":"gray","text":"<Master Panda> Choose your path and venture forth on this scenic parkour journey! You may stray from your path, but when lost, return to it. There are many shortcuts and secrets to find along your way!","type":"text"}
tellraw @s {"bold":true,"color":"dark_gray","text":"Created by ShadowCreeperr!","type":"text"}
execute at @s run playsound minecraft:entity.panda.ambient master @a ~ ~ ~
tag @s add panda
tag @s add pr.self_checkpoint
return 1