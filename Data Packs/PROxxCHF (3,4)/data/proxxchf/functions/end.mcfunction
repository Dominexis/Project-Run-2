tp @s ~ ~49 ~34 0 0
effect clear @s levitation
execute unless entity @a[tag=pr.target,predicate=proxxchf:levitation] run fill ~15 ~55 ~-10 ~17 ~55 ~-12 barrier
execute unless entity @a[tag=pr.target,predicate=proxxchf:levitation] run fill ~15 ~56 ~-12 ~17 ~60 ~-10 minecraft:gray_concrete_powder
execute unless entity @a[tag=pr.target,predicate=proxxchf:levitation] run setblock ~13 ~65 ~-24 air