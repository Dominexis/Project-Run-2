execute at @e[tag=CCP,tag=pr.target] run fill ~1 ~ ~-1 ~-2 ~-2 ~2 minecraft:air
execute at @a[tag=pr.target] run playsound minecraft:block.stone.break master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @e[tag=CCP,tag=pr.target] run particle minecraft:dust 1 0 0 1 ~-0.5 ~ ~0.5 0.7 0.3 0.7 0 70 force @a[tag=pr.target]
return 1