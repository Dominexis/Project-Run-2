scoreboard players set @s inquognito.suit 2

attribute @s minecraft:generic.armor base set 8.0

item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s armor.chest with minecraft:diamond_chestplate
item replace entity @s armor.legs with minecraft:diamond_leggings{Enchantments:[{id:"minecraft:swift_sneak",lvl:2}]}
item replace entity @s armor.feet with minecraft:diamond_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:255}]}

item modify entity @s armor.head inquognito:suits/mk2
item modify entity @s armor.chest inquognito:suits/mk2
item modify entity @s armor.legs inquognito:suits/mk2
item modify entity @s armor.feet inquognito:suits/mk2

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Propulsion Suit","color":"aqua"}]
tellraw @s [{"text":"Incoming Transmission (Propulsion Suit) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 6"}}]

playsound minecraft:entity.player.levelup master @s
