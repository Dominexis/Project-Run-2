function tuntan:tostart
tag @s add tuntan.started
item replace entity @s armor.chest with minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b}
return 1