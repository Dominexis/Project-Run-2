execute if entity @s[tag=inquognito.gun.nova,scores={inquognito.gun.augments.nova_cooldown=..0}] if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{inquognito.gun:1}}}] run function inquognito:logic/abilities/gun/augments/nova/activate

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Owner set from entity @s UUID
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s

scoreboard players reset @s inquognito.drop_item

return 1