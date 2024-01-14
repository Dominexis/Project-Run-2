execute on origin run data modify entity @e[type=minecraft:item,tag=pr.target,sort=nearest,limit=1] Owner set from entity @s UUID
data modify entity @s PickupDelay set value 0s
execute on origin run tp @e[type=minecraft:item,tag=pr.target,sort=nearest,limit=1] @s
return 1