# VFX

particle minecraft:cloud ^ ^.125 ^ 0.225 0 0.225 0.025 8 force @a[distance=..56,tag=pr.target]
particle minecraft:cloud ^1 ^.125 ^ 0.225 0 0.225 0.025 8 force @a[distance=..56,tag=pr.target]
particle minecraft:cloud ^-1 ^.125 ^ 0.225 0 0.225 0.025 8 force @a[distance=..56,tag=pr.target]



# SFX

playsound minecraft:block.metal.place master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.44 0.9
playsound minecraft:item.bottle.fill_dragonbreath master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.15 1.46
playsound minecraft:block.anvil.place master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.13 1.37
playsound minecraft:block.anvil.place master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.19 1.58
return 1