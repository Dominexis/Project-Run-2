tag @s add inquognito.gun

execute if entity @a[tag=pr.target,tag=inquognito.gun.frostbite,limit=1] run tag @s add inquognito.gun.frostbite
execute if entity @a[tag=pr.target,tag=inquognito.gun.behemoth,limit=1] run tag @s add inquognito.gun.behemoth
execute if entity @a[tag=pr.target,tag=inquognito.gun.trinity,limit=1] run tag @s add inquognito.gun.trinity

teleport @s ~ ~ ~ facing ^ ^ ^1
