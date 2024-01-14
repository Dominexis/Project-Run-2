execute positioned ~-13 ~17 ~13 run tag @a[distance=..3,tag=pr.target] add spooky.trident

execute as @a[tag=pr.target,tag=spooky.trident] store result score @s spooky.item_count run clear @s minecraft:trident 0
execute as @a[tag=pr.target,tag=spooky.trident,scores={spooky.item_count=0}] run give @s minecraft:trident{Enchantments:[{id:"minecraft:riptide",lvl:1s}],Unbreakable:1b}
execute as @a[tag=pr.target,tag=spooky.trident,scores={spooky.item_count=2..}] run clear @s minecraft:trident

effect give @a[tag=pr.target] minecraft:weakness infinite 9 true
execute positioned ~0 ~33 ~39 run effect give @a[distance=..5,tag=pr.target] minecraft:resistance 4 4 true

kill @e[type=minecraft:item,tag=pr.target]
return 1