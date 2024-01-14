particle minecraft:instant_effect ~ ~ ~ 0.5 0.35 0.5 0.05 32 force @a[distance=..48,tag=pr.target]
particle minecraft:smoke ~ ~ ~ 0.5 0.35 0.5 0.075 16 force @a[distance=..48,tag=pr.target]
particle minecraft:cloud ~ ~ ~ 0.5 0.35 0.5 0.05 10 force @a[distance=..64,tag=pr.target]
particle minecraft:electric_spark ~ ~ ~ 0.75 0.65 0.75 0.75 12 force @a[distance=..64,tag=pr.target]

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.place master @a[distance=..48,tag=pr.target] ~ ~-4.5 ~ 0.85 1.25
return 1