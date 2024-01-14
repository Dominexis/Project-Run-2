tp @s ~ ~29 ~ ~180 ~
execute at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~

item replace entity @s armor.feet with minecraft:iron_boots{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:frost_walker",lvl:1s}],display:{Name:'{"text":"Work Boots","color":"aqua","italic":false,"type":"text"}'}}
return 1