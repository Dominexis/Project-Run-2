execute at @e[tag=BRmc,tag=pr.target] as @a[distance=0..1.5,tag=pr.target] run damage @s 8 minecraft:hot_floor
execute at @e[tag=BRmc,tag=pr.target,sort=random,limit=15] run particle minecraft:flame ~ ~ ~ 0.2 0.6 0.2 0 20 force
scoreboard players reset isch.bnp isch.bnp
return 1