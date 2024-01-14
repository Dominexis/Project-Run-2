give @s minecraft:carrot_on_a_stick{CustomModelData:10061,display:{Name:'{"text":"Grapple Gun","italic":false,"type":"text"}'}}
scoreboard players set @s piemel.progress 1
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1.7
title @s times 0 60 20
title @s subtitle [{"text":"Collected: ","color":"gold","type":"text"},{"text":"Grappling hook","color":"yellow","type":"text"}]
title @s title ""
scoreboard players set @s piemel.hintto 1
return 1