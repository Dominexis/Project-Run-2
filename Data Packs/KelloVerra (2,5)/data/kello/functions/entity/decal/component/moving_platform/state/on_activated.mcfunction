execute if score @s kello.decal.state matches 0 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/animations/impact/play
execute if score @s kello.decal.state matches 1 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:dangling_platform/animations/impact/play

# tag @s add kello.indicate_dir
scoreboard players set @s kello.decal.sequence 20
function kello:entity/decal/component/moving_platform/state/idle/start


# SFX

playsound minecraft:block.bamboo_wood.break master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.18 0.8
playsound minecraft:block.bamboo_wood.step master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.27 1.06
playsound minecraft:block.bamboo_wood.step master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.2 0.5
playsound minecraft:block.bamboo.step master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.44 1.23
playsound minecraft:block.wood.step master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.64 1.56
playsound minecraft:block.bamboo_wood.step master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.49 1.29
playsound minecraft:block.wood.step master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.51 1.15
playsound minecraft:block.note_block.chime master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.31 1.66
playsound minecraft:block.amethyst_block.break master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.24 1.42
playsound minecraft:block.dripstone_block.break master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.29 1
playsound minecraft:item.trident.riptide_3 master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.07 0.61
playsound minecraft:item.trident.riptide_2 master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.05 1.19
playsound minecraft:item.trident.riptide_1 master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.05 1.04

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.break master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.52 0.68
execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.place master @a[distance=..48,tag=pr.target] ~ ~ ~ 0.65 1.28
return 1