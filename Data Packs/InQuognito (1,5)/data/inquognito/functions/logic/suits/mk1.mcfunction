scoreboard players set @s inquognito.suit 1

item replace entity @s armor.head with minecraft:iron_helmet
item replace entity @s armor.chest with minecraft:iron_chestplate
item replace entity @s armor.legs with minecraft:iron_leggings{Enchantments:[{id:"minecraft:swift_sneak",lvl:1s}]}
item replace entity @s armor.feet with minecraft:iron_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:3s}]}

item modify entity @s armor.head inquognito:suits/mk1
item modify entity @s armor.chest inquognito:suits/mk1
item modify entity @s armor.legs inquognito:suits/mk1
item modify entity @s armor.feet inquognito:suits/mk1

return 1