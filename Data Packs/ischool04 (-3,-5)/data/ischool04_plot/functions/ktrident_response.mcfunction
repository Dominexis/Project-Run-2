execute at @s run particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 1 2 force @a[tag=pr.target]
execute at @s run particle minecraft:item minecraft:trident ~ ~ ~ 0.1 0.1 0.1 0 15 force @a[tag=pr.target]
execute at @a[tag=pr.target] run playsound minecraft:entity.shulker.hurt_closed master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @a[tag=pr.target] run playsound minecraft:entity.item.break master @a[tag=pr.target] ~ ~ ~ 1 1 1
kill @s
execute as @a[tag=pr.target] unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run give @s minecraft:trident{display:{Name:'[{"text":"Infernal Destroyer","italic":false,"bold":true,"color":"dark_red","type":"text"}]',Lore:['[{"text":"[","italic":false,"color":"dark_blue","type":"text"},{"text":"Distance Weapon","color":"blue","type":"text"},{"text":"]","type":"text"}]']},Enchantments:[{id:"minecraft:loyalty",lvl:3s}],HideFlags:131} 1
return 1