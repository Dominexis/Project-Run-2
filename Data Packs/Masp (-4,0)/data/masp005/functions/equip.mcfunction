item replace entity @s armor.chest with minecraft:elytra{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:255s}]} 1
playsound minecraft:block.beacon.activate master @s
playsound minecraft:particle.soul_escape master @s
playsound minecraft:item.trident.return master @s
tag @s add masp005.equipped
tellraw @s ["",{"text":"You have picked up a ","color":"gold","type":"text"},{"text":"Elytra","bold":true,"color":"green","type":"text"},{"text":"!","color":"gold","type":"text"}]
return 1