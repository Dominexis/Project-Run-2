execute at @e[tag=BRmc] as @a[distance=0..1,tag=pr.target] run damage @s 5 minecraft:hot_floor
execute at @e[tag=BRmc,limit=15,sort=random] run particle flame ~ ~ ~ 0.2 0.6 0.2 0 20 force
scoreboard players reset isch.bnp isch.bnp