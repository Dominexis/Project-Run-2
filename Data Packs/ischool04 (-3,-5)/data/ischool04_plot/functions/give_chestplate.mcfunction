give @s minecraft:diamond_chestplate{Unbreakable:1b,Trim:{pattern:"vex",material:"redstone"},display:{Name:'["",{"text":"Infernal Shell","italic":false,"bold":true,"color":"red","type":"text"}]'},Enchantments:[{lvl:4s,id:"minecraft:protection"}],HideFlags:131} 1
kill @e[type=minecraft:item,tag=pr.target,nbt={Item:{id:"minecraft:diamond_chestplate"}}]
scoreboard players reset @s isch.drop.ch
return 1