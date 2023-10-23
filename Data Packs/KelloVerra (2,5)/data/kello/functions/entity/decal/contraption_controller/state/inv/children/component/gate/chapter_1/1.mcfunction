# Place hitbox

execute rotated as @s run fill ^1 ^ ^ ^-1 ^7 ^ minecraft:petrified_oak_slab[type=top] replace air
execute rotated as @s run fill ^1 ^ ^ ^-1 ^7 ^ minecraft:petrified_oak_slab[type=top] replace structure_void


playsound minecraft:item.trident.return master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.66 1.45
playsound minecraft:item.bottle.fill master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.51 1.37
playsound minecraft:item.bucket.empty master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.51 1.85
playsound minecraft:ambient.underwater.enter master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.49 1.82
playsound minecraft:block.metal.break master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.46 0.5
playsound minecraft:block.anvil.place master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.15 0.5
playsound minecraft:block.anvil.place master @a[tag=pr.target,distance=..64] ~ ~ ~ 0.21 1.05