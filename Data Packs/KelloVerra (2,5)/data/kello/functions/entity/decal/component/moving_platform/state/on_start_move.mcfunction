# VFX

particle instant_effect ~ ~ ~ 0.5 0.35 0.5 0.05 12 force @a[tag=pr.target,distance=..48]
particle smoke ~ ~ ~ 0.5 0.35 0.5 0.075 16 force @a[tag=pr.target,distance=..48]
particle cloud ~ ~ ~ 0.5 0.35 0.5 0.05 12 force @a[tag=pr.target,distance=..64]
particle electric_spark ~ ~ ~ 0.75 0.65 0.75 0.75 12 force @a[tag=pr.target,distance=..64]





# SFX

playsound minecraft:block.bamboo_wood.step master @a[tag=pr.target,distance=..24] ~ ~ ~ 0.085 1.18
playsound minecraft:block.bamboo_wood.step master @a[tag=pr.target,distance=..24] ~ ~ ~ 0.15 1.88
playsound minecraft:item.trident.riptide_1 master @a[tag=pr.target,distance=..24] ~ ~ ~ 0.0125 0.67

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.hit master @a[tag=pr.target,distance=..24] ~ ~-3 ~ 0.35 0.48