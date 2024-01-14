give @s minecraft:carrot_on_a_stick{CustomModelData:10064,display:{Name:'{"text":"Launch Access","italic":false,"type":"text"}'}}
scoreboard players set @s piemel.progress 2
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1.7
title @s times 0 60 20
title @s subtitle [{"text":"Collected: ","color":"gold","type":"text"},{"text":"Launch Access","color":"yellow","type":"text"}]
title @s title ""
return 1