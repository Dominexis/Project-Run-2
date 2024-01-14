give @s minecraft:trident{Unbreakable:1b,display:{Name:'[{"text":"Infernal Destroyer","italic":false,"bold":true,"color":"dark_red","type":"text"}]',Lore:['[{"text":"[","italic":false,"color":"dark_blue","type":"text"},{"text":"Distance Weapon","color":"blue","type":"text"},{"text":"]","type":"text"}]']},Enchantments:[{id:"minecraft:loyalty",lvl:3s}],HideFlags:5} 1
kill @e[type=minecraft:item,tag=pr.target,nbt={Item:{id:"minecraft:trident"}}]
scoreboard players reset @s isch.drop.tr
return 1