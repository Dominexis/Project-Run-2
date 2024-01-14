tag @s add pr.hide_timer

scoreboard players operation @s funkytoc.moon.oxygen = #o2.max funkytoc.moon.var
scoreboard players set @s funkytoc.moon.particle.dust 0
scoreboard players set @s funkytoc.moon.jump 0

item replace entity @s armor.head with minecraft:light_blue_stained_glass{display:{Name:'{"text":"Astronaut Helmet","italic":false,"type":"text"}',Lore:['{"text":"A life hack protection to keep air close to your nose.","color":"white","italic":false,"type":"text"}','{"text":"Only works fiew minutes before dying of suffocation.","color":"white","italic":false,"type":"text"}','{"text":"DO NOT VOMIT INSIDE.","color":"dark_red","italic":false,"type":"text"}']},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

return 1