particle instant_effect ~ ~ ~ 0.5 0.35 0.5 0.05 32 force @a[tag=pr.target,distance=..48]
particle smoke ~ ~ ~ 0.5 0.35 0.5 0.075 16 force @a[tag=pr.target,distance=..48]
particle cloud ~ ~ ~ 0.5 0.35 0.5 0.05 10 force @a[tag=pr.target,distance=..64]
particle electric_spark ~ ~ ~ 0.75 0.65 0.75 0.75 12 force @a[tag=pr.target,distance=..64]

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.place master @a[tag=pr.target,distance=..48] ~ ~-4.5 ~ 0.85 1.25