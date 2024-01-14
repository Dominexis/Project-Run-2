tag @s add pr.hide_timer

scoreboard players set @s inquognito.suit 3

scoreboard players operation @s inquognito.energy += energy inquognito.values

item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s armor.chest with minecraft:diamond_chestplate
item replace entity @s armor.legs with minecraft:diamond_leggings{Enchantments:[{id:"minecraft:swift_sneak",lvl:3s}]}
item replace entity @s armor.feet with minecraft:diamond_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}

item modify entity @s armor.head inquognito:suits/mk3
item modify entity @s armor.chest inquognito:suits/mk3
item modify entity @s armor.legs inquognito:suits/mk3
item modify entity @s armor.feet inquognito:suits/mk3

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Item acquired: ","color":"yellow","type":"text"},{"text":"???","color":"light_purple","type":"text"}]
tellraw @s [{"text":"Incoming Transmission (Unknown Substance) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 7"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1