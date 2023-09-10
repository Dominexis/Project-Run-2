# This function will run every tick while players are in your plot on the center block at Y=0
execute if score floortimer boss586 matches 1.. run scoreboard players remove floortimer boss586 1
execute positioned ~2.0 ~49.0 ~-19.0 if entity @a[tag=pr.target,dx=2,dy=1,dz=5,nbt={OnGround:1b}] run scoreboard players set floortimer boss586 20
execute if score floortimer boss586 matches 1.. run fill ~2 ~48 ~-19 ~4 ~48 ~-14 air
execute if score floortimer boss586 matches 0 run fill ~2 ~48 ~-19 ~4 ~48 ~-14 oak_planks

execute positioned ~-9 ~34 ~-8 as @a[distance=..1.5,tag=pr.target] run function pr:player/checkpoint/mark

execute positioned ~37.5 ~10.0 ~23.0 as @a[tag=pr.target,dx=1,dy=1,dz=2] positioned ~-38.0 ~-10.0 ~-23.0 run tp @s ~-37 ~17 ~ 90 0