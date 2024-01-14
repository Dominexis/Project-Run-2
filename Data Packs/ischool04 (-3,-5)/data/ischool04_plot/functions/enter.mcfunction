# This function runs as and at all players that enter your plot
execute store result score @s isch.id run scoreboard players add #global isch.id 1

title @s times 20 100 20
title @s subtitle ["",{"text":"By","italic":true,"color":"dark_red","type":"text"},{"text":" ischool04","italic":true,"color":"red","type":"text"}]
title @s title ["",{"text":"[","bold":true,"color":"#FF8103","type":"text"},{"text":"The Bloody Valley","bold":true,"color":"gold","type":"text"},{"text":"]","bold":true,"color":"#FF8103","type":"text"}]
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0 100 force @s
execute at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0 1
item replace entity @s container.0 with minecraft:trident{Unbreakable:1b,display:{Name:'[{"text":"Infernal Destroyer","italic":false,"bold":true,"color":"dark_red","type":"text"}]',Lore:['[{"text":"[","italic":false,"color":"dark_blue","type":"text"},{"text":"Distance Weapon","color":"blue","type":"text"},{"text":"]","type":"text"}]']},Enchantments:[{id:"minecraft:loyalty",lvl:5s}],HideFlags:5} 1
item replace entity @s armor.chest with minecraft:diamond_chestplate{Trim:{pattern:"vex",material:"redstone"},Unbreakable:1b,display:{Name:'["",{"text":"Infernal Shell","italic":false,"bold":true,"color":"red","type":"text"}]'},Enchantments:[{lvl:4s,id:"minecraft:protection"}],HideFlags:131} 1
item replace entity @s armor.legs with minecraft:diamond_leggings{Trim:{pattern:"vex",material:"redstone"},Unbreakable:1b,display:{Name:'["",{"text":"Infernal Leggings","italic":false,"bold":true,"color":"red","type":"text"}]'},Enchantments:[{lvl:4s,id:"minecraft:protection"}],HideFlags:131} 1
item replace entity @s armor.feet with minecraft:diamond_boots{Trim:{pattern:"vex",material:"redstone"},Unbreakable:1b,display:{Name:'["",{"text":"Infernal Boots","italic":false,"bold":true,"color":"red","type":"text"}]'},Enchantments:[{lvl:4s,id:"minecraft:protection"}],HideFlags:131} 1
execute at @s run playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"#FF7F00","type":"text"},{"text":"\n    ","type":"text"},{"text":"  [","bold":true,"color":"dark_red","type":"text"},{"text":"The Bloody Valley","bold":true,"underlined":true,"color":"red","type":"text"},{"text":"]","bold":true,"color":"dark_red","type":"text"},{"text":"\n\n    ","type":"text"},{"text":"Kill ","color":"light_purple","type":"text"},{"text":"all the","color":"#FE007E","type":"text"},{"text":" mobs","color":"light_purple","type":"text"},{"text":" and ","color":"#FE007E","type":"text"},{"text":"press \n      ","color":"light_purple","type":"text"},{"text":"the","color":"#FE007E","type":"text"},{"text":" 4 infernal buttons","color":"light_purple","type":"text"},{"text":"\n","type":"text"},{"text":"   while doing parkour, in order\n      to reach the finish line.\n ","color":"#FE007E","type":"text"},{"text":"Do not dismount the Bloody Beast","underlined":true,"color":"yellow","type":"text"},{"text":"          \n","type":"text"},{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"#FF7F00","type":"text"}]
scoreboard players reset @s isch.bnp
scoreboard players reset @s isch.ChPl
scoreboard players reset @s isch.kmc
scoreboard players reset @s isch.prbt
scoreboard players set @s isch.dth 0
scoreboard players reset @s isch.regen
scoreboard players reset @s isch.drop.tr
scoreboard players reset @s isch.drop.ch
scoreboard players reset @s isch.drop.bo
scoreboard players reset @s isch.drop.le
tag @s add part1
execute at @e[tag=check1,tag=pr.target] run spawnpoint @s ~ ~ ~
return 1