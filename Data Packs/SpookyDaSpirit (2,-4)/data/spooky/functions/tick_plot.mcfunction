execute positioned ~-13 ~17 ~13 run tag @a[tag=pr.target,distance=..3] add spooky.trident

execute as @a[tag=pr.target,tag=spooky.trident] store result score @s spooky.item_count run clear @s trident 0
execute as @a[tag=pr.target,tag=spooky.trident,scores={spooky.item_count=0}] run give @s trident{Enchantments:[{id:"minecraft:riptide",lvl:1s}],Unbreakable:1b}
execute as @a[tag=pr.target,tag=spooky.trident,scores={spooky.item_count=2..}] run clear @s trident

effect give @a[tag=pr.target] weakness infinite 9 true
execute positioned ~0 ~33 ~39 run effect give @a[tag=pr.target,distance=..5] resistance 4 4 true

kill @e[type=item,tag=pr.target]