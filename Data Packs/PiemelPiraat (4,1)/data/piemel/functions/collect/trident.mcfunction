give @s trident{Enchantments:[{id:"minecraft:riptide",lvl:3}],display:{Name:'{"text":"Riptide Trident","italic":false}'}}
scoreboard players set @s piemel.progress 3
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1.7
title @s times 0 60 20
title @s subtitle [{"text":"Collected: ","color":"gold"},{"text":"Riptide Trident","color":"yellow"}]
title @s title ""