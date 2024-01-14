# VFX

particle minecraft:instant_effect ~ ~ ~ 0.85 0.45 0.85 0.01 25 force @a[distance=..32,tag=pr.target]
particle minecraft:cloud ~ ~ ~ 0.85 0.45 0.85 0.01 05 force @a[distance=..32,tag=pr.target]





# SFX

playsound minecraft:block.bamboo_wood.step master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.46 0.78
playsound minecraft:block.bamboo_wood.step master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.35 1.42
playsound minecraft:block.bamboo_wood.step master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.43 1.18
playsound minecraft:item.trident.riptide_1 master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.04 0.67
playsound minecraft:item.trident.hit_ground master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.425 0.69
playsound minecraft:block.bamboo_wood.break master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.56 1.22
playsound minecraft:block.bamboo_wood.hit master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.43 0.93
playsound minecraft:block.bamboo_wood.hit master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.48 0.84
playsound minecraft:block.wood.hit master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.4 0.74
playsound minecraft:block.wood.hit master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.45 0.85
playsound minecraft:block.amethyst_block.hit master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.21 0.58
playsound minecraft:block.wood.hit master @a[distance=..24,tag=pr.target] ~ ~ ~ 0.53 0.6

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.place master @a[distance=..24,tag=pr.target] ~ ~-4.5 ~ 0.52 0.72
execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.break master @a[distance=..24,tag=pr.target] ~ ~-4.5 ~ 0.45 1.25
return 1