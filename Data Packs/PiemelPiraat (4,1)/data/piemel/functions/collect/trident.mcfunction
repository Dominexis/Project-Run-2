give @s minecraft:trident{Enchantments:[{id:"minecraft:riptide",lvl:3s}],display:{Name:'{"text":"Riptide Trident","italic":false,"type":"text"}'}}
scoreboard players set @s piemel.progress 3
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1.7
title @s times 0 60 20
title @s subtitle [{"text":"Collected: ","color":"gold","type":"text"},{"text":"Riptide Trident","color":"yellow","type":"text"}]
title @s title ""
return 1