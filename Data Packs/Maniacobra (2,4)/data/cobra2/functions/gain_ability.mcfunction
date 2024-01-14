function pr:player/checkpoint/mark_pos
tag @s add cobra2.has_boots
title @s times 5 70 20
title @s subtitle {"text":"(Hotbar)","color":"gray","type":"text"}
title @s title {"text":"Flip Ability Obtained","bold":true,"color":"gray","type":"text"}
playsound minecraft:block.bell.resonate master @s ~ ~ ~ 2 1.3 1

return 1