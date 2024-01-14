give @s minecraft:diamond_boots{Unbreakable:1b,Trim:{pattern:"vex",material:"redstone"},display:{Name:'["",{"text":"Infernal Boots","italic":false,"bold":true,"color":"red","type":"text"}]'},Enchantments:[{lvl:4s,id:"minecraft:protection"}],HideFlags:131} 1
kill @e[type=minecraft:item,tag=pr.target,nbt={Item:{id:"minecraft:diamond_boots"}}]
scoreboard players reset @s isch.drop.bo
return 1