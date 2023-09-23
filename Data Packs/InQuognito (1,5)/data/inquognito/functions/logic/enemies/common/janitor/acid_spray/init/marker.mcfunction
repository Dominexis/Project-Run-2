teleport @s ~ ~ ~ ~ ~

data modify storage inquognito:data Rotation set from entity @s Rotation

execute store result score offset inquognito.temp run data get storage inquognito:data Rotation[0] 10
function inquognito:logic/enemies/common/janitor/acid_spray/offset
execute store result storage inquognito:data Rotation[0] float 0.1 run scoreboard players operation offset inquognito.temp += #output pr.value

execute store result score offset inquognito.temp run data get storage inquognito:data Rotation[1] 10
function inquognito:logic/enemies/common/janitor/acid_spray/offset
execute store result storage inquognito:data Rotation[1] float 0.1 run scoreboard players operation offset inquognito.temp += #output pr.value

data modify entity @s Rotation set from storage inquognito:data Rotation

execute rotated as @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1

data modify storage inquognito:data Motion set from entity @s Pos

execute summon minecraft:arrow run function inquognito:logic/enemies/common/janitor/acid_spray/init/projectile

kill @s
