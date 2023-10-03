execute at @s run particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 1 2 force @a[tag=pr.target]
execute at @s run particle minecraft:item trident ~ ~ ~ 0.1 0.1 0.1 0 15 force @a[tag=pr.target]
execute at @a[tag=pr.target] run playsound minecraft:entity.shulker.hurt_closed master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @a[tag=pr.target] run playsound minecraft:entity.item.break master @a[tag=pr.target] ~ ~ ~ 1 1 1
kill @s
execute as @a[tag=pr.target] unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run give @s trident{display:{Name:'[{"text":"Infernal Destroyer","italic":false,"bold":true,"color":"dark_red"}]',Lore:['[{"text":"[","italic":false,"color":"dark_blue"},{"text":"Distance Weapon","color":"blue"},{"text":"]"}]']},Enchantments:[{id:"loyalty",lvl:3}],HideFlags:131} 1