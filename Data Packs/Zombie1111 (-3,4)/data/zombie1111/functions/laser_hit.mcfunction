

#runs as the laser that hit
tag @s add zombieThis
execute as @a[tag=zombiePlotPlayer,tag=pr.target] if score @s zombie_idplayer = @e[type=minecraft:armor_stand,tag=zombieThis,tag=pr.target,limit=1] zombie_idplayer run tag @s add zombieThis
damage @e[type=#zombie1111:spawnable,distance=..3,tag=zombiePlot,sort=nearest,limit=1] 5000 arrow by @a[tag=zombieThis,limit=1]
tag @a[tag=zombieThis,tag=pr.target,limit=1] remove zombieThis
kill @s
kill @e[type=minecraft:marker,tag=zombieTargetPos,tag=pr.target]

return 1