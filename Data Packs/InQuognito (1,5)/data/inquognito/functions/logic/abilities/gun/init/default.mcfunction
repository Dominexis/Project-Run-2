tag @s add inquognito.gun

execute if entity @a[tag=pr.target,tag=inquognito.gun.frostbite,limit=1] run tag @s add inquognito.gun.frostbite
execute if entity @a[tag=pr.target,tag=inquognito.gun.nova,limit=1] run tag @s add inquognito.gun.nova
execute if entity @a[tag=pr.target,tag=inquognito.gun.trinity,limit=1] run function inquognito:logic/abilities/gun/augments/trinity/init

teleport @s ~ ~ ~ facing ^ ^ ^1
