# instantly return dropped item to nearest player
data merge entity @s {PickupDelay:0s}
tp @s @p[tag=pr.target]