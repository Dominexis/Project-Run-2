scoreboard players operation #local kello.decal.state = @s kello.decal.state

scoreboard players remove @s[scores={kello.entity.timer=0..}] kello.entity.timer 1
execute if score @s kello.entity.timer matches 0 run function kello:entity/decal/component/moving_platform/animation/moving_momentum




execute if entity @s[tag=kello.entity.type.z] rotated as @s run function kello:entity/decal/component/moving_platform/state/move/z/main
execute if entity @s[tag=kello.entity.type.x] rotated as @s run function kello:entity/decal/component/moving_platform/state/move/x/main

# VFX

particle minecraft:instant_effect ~ ~ ~ 0.5 0.35 0.5 0.01 1 force @a[distance=..32,tag=pr.target]




# SFX

playsound minecraft:block.pointed_dripstone.place master @a[distance=..16,tag=pr.target] ~ ~ ~ 0.01 0.72
playsound minecraft:block.pointed_dripstone.place master @a[distance=..16,tag=pr.target] ~ ~ ~ 0.025 0.93
playsound minecraft:block.lever.click master @a[distance=..16,tag=pr.target] ~ ~ ~ 0.0125 1.66
playsound minecraft:block.lever.click master @a[distance=..16,tag=pr.target] ~ ~ ~ 0.025 0.83
playsound minecraft:block.lever.click master @a[distance=..16,tag=pr.target] ~ ~ ~ 0.03 1.37
playsound minecraft:item.trident.throw master @a[distance=..16,tag=pr.target] ~ ~ ~ 0.01 1.06

execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.fall master @a[distance=..16,tag=pr.target] ~ ~-4.5 ~ 0.045 0.85
execute if score @s kello.decal.state matches 1 run playsound minecraft:block.chain.step master @a[distance=..16,tag=pr.target] ~ ~-4.5 ~ 0.065 1.25
return 1