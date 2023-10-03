# This function runs as and at all players that enter your plot
title @s times 20 100 20
title @s subtitle ["",{"text":"By","italic":true,"color":"dark_red"},{"text":" ischool04","italic":true,"color":"red"}]
title @s title ["",{"text":"[","bold":true,"color":"#FF8103"},{"text":"The Bloody Valley","bold":true,"color":"gold"},{"text":"]","bold":true,"color":"#FF8103"}]
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0 100 force @s
execute at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0 1
item replace entity @s container.0 with trident{Unbreakable:1b,display:{Name:'[{"text":"Infernal Destroyer","italic":false,"bold":true,"color":"dark_red"}]',Lore:['[{"text":"[","italic":false,"color":"dark_blue"},{"text":"Distance Weapon","color":"blue"},{"text":"]"}]']},Enchantments:[{id:"loyalty",lvl:5}],HideFlags:5} 1
item replace entity @s armor.chest with diamond_chestplate{Trim:{pattern:vex,material:redstone},Unbreakable:1,display:{Name:'["",{"text":"Infernal Shell","italic":false,"bold":true,"color":"red"}]'},Enchantments:[{lvl:4,id:protection}],HideFlags:131} 1
item replace entity @s armor.legs with diamond_leggings{Trim:{pattern:vex,material:redstone},Unbreakable:1,display:{Name:'["",{"text":"Infernal Leggings","italic":false,"bold":true,"color":"red"}]'},Enchantments:[{lvl:4,id:protection}],HideFlags:131} 1
item replace entity @s armor.feet with diamond_boots{Trim:{pattern:vex,material:redstone},Unbreakable:1,display:{Name:'["",{"text":"Infernal Boots","italic":false,"bold":true,"color":"red"}]'},Enchantments:[{lvl:4,id:protection}],HideFlags:131} 1
execute at @s run playsound minecraft:item.armor.equip_diamond master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"#FF7F00"},{"text":"\n    "},{"text":"  [","bold":true,"color":"dark_red"},{"text":"The Bloody Valley","bold":true,"underlined":true,"color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":"\n\n    "},{"text":"Kill ","color":"light_purple"},{"text":"all the","color":"#FE007E"},{"text":" mobs","color":"light_purple"},{"text":" and ","color":"#FE007E"},{"text":"press \n      ","color":"light_purple"},{"text":"the","color":"#FE007E"},{"text":" 4 infernal buttons","color":"light_purple"},{"text":"\n"},{"text":"   while doing parkour, in order\n      to reach the finish line.\n ","color":"#FE007E"},{"text":"Do not dismount the Bloody Beast","underlined":true,"color":"yellow"},{"text":"          \n"},{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"#FF7F00"}]
scoreboard players reset @s isch.bnp
scoreboard players reset @s isch.ChPl
scoreboard players reset @s isch.kmc
scoreboard players reset @s isch.prbt
scoreboard players reset @s isch.dth
scoreboard players reset @s isch.regen
scoreboard players reset @s isch.drop.tr
scoreboard players reset @s isch.drop.ch
scoreboard players reset @s isch.drop.bo
scoreboard players reset @s isch.drop.le
tag @s add part1
execute at @e[tag=check1,tag=pr.target] run spawnpoint @s ~ ~ ~