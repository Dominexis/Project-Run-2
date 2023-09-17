tag @s add inquognito.gun

scoreboard players operation @s inquognito.id = @a[tag=pr.target,limit=1] inquognito.id

execute if entity @a[tag=pr.target,tag=inquognito.gun.frostbite,limit=1] run tag @s add inquognito.gun.frostbite
execute if entity @a[tag=pr.target,tag=inquognito.gun.trinity,limit=1] run function inquognito:logic/abilities/gun/augments/trinity/init

teleport @s ~ ~ ~ facing ^ ^ ^1
