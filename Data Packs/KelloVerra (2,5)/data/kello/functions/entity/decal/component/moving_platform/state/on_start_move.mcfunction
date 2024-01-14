# VFX

particle minecraft:instant_effect ~ ~ ~ 0.5 0.35 0.5 0.05 12 force @a[distance=..48,tag=pr.target]
particle minecraft:smoke ~ ~ ~ 0.5 0.35 0.5 0.075 16 force @a[distance=..48,tag=pr.target]
particle minecraft:cloud ~ ~ ~ 0.5 0.35 0.5 0.05 12 force @a[distance=..64,tag=pr.target]
particle minecraft:electric_spark ~ ~ ~ 0.75 0.65 0.75 0.75 12 force @a[distance=..64,tag=pr.target]





# SFX

playsound minecraft:block.bamboo_wood.step master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.085 1.18
playsound minecraft:block.bamboo_wood.step master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.15 1.88
playsound minecraft:item.trident.riptide_1 master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.0125 0.67

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.hit master @a[distance=..24,tag=pr.target] ~ ~-3 ~ 0.35 0.48
return 1