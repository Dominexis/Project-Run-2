execute at @s facing entity @p[tag=pr.target] eyes run teleport @s ~ ~ ~ ~ ~

data modify storage inquognito:cameras Head set value [0f,0f,0f]

data modify storage inquognito:cameras Head[0] set from entity @s Rotation[1]

data modify entity @s Pose.Head set from storage inquognito:cameras Head

scoreboard players set @s inquognito.raycast_success 1

return 1