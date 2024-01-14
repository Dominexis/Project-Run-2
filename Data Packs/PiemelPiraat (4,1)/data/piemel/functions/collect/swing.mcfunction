give @s minecraft:carrot_on_a_stick{CustomModelData:10063,display:{Name:'{"text":"Swing Gun","italic":false,"type":"text"}'}}
scoreboard players set @s piemel.progress 4
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1.7
title @s times 0 60 20
title @s subtitle [{"text":"Collected: ","color":"gold","type":"text"},{"text":"Swing Gun","color":"yellow","type":"text"}]
title @s title ""
return 1