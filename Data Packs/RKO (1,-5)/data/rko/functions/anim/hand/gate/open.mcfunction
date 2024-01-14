# Right #
clone ~23 ~26 ~16 ~16 ~34 ~14 ~15 ~26 ~14 replace move
setblock ~23 ~34 ~15 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=false]

clone ~25 ~26 ~14 ~32 ~34 ~16 ~26 ~26 ~14 replace move
setblock ~25 ~34 ~15 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=false]

execute if score hand rko.time matches 40 positioned ~25 ~34 ~15 run playsound rko:gate.open master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 0.4 1

# Left #
clone ~-23 ~26 ~16 ~-16 ~34 ~14 ~-22 ~26 ~14 replace move
setblock ~-23 ~34 ~15 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=false]

clone ~-25 ~26 ~14 ~-32 ~34 ~16 ~-33 ~26 ~14 replace move
setblock ~-25 ~34 ~15 minecraft:jungle_fence_gate[facing=north,in_wall=false,open=false,powered=false]

execute if score hand rko.time matches 40 positioned ~-25 ~34 ~15 run playsound rko:gate.open master @a[tag=pr.target,sort=arbitrary] ~ ~ ~ 0.4 1
return 1