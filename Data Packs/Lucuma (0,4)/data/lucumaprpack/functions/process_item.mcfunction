tag @s add lucuma.processed
data modify entity @s Owner set from entity @s Thrower
data merge entity @s {PickupDelay:0s}
return 1