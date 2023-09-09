execute if entity @s[tag=inquognito.target.energy] as @a[tag=pr.target,limit=1] run function inquognito:logic/plot/targets/energy

execute if entity @s[tag=inquognito.target.frostbite.1] as @a[tag=pr.target,tag=!inquognito.target.frostbite.1,limit=1] run function inquognito:logic/plot/targets/frostbite/1
execute if entity @s[tag=inquognito.target.frostbite.2] as @a[tag=pr.target,tag=!inquognito.target.frostbite.2,limit=1] run function inquognito:logic/plot/targets/frostbite/2
execute if entity @s[tag=inquognito.target.frostbite.3] as @a[tag=pr.target,tag=!inquognito.target.frostbite.3,limit=1] run function inquognito:logic/plot/targets/frostbite/3

kill @e[type=minecraft:marker,tag=inquognito.gun,sort=nearest,limit=1]
