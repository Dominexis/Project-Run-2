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
tellraw @s [{"text":"Simaris | ","color":"aqua"},{"text":"Great job, Hunter. It appears you have found a suit upgrade. My scans indicate that it is composed of a superior alloy that will increase your defense. More significantly, you should now be able to double jump by pressing the sneak key in midair. It will surely allow you to reach areas previously inaccessible.","color":"white"}]

playsound minecraft:entity.player.levelup master @s
