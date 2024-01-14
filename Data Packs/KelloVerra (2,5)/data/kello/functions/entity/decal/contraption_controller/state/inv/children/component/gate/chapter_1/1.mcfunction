# Place hitbox

execute rotated as @s run fill ^1 ^ ^ ^-1 ^7 ^ minecraft:petrified_oak_slab[type=top] replace minecraft:air
execute rotated as @s run fill ^1 ^ ^ ^-1 ^7 ^ minecraft:petrified_oak_slab[type=top] replace minecraft:structure_void


playsound minecraft:item.trident.return master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.66 1.45
playsound minecraft:item.bottle.fill master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.51 1.37
playsound minecraft:item.bucket.empty master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.51 1.85
playsound minecraft:ambient.underwater.enter master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.49 1.82
playsound minecraft:block.metal.break master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.46 0.5
playsound minecraft:block.anvil.place master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.15 0.5
playsound minecraft:block.anvil.place master @a[distance=..64,tag=pr.target] ~ ~ ~ 0.21 1.05
return 1