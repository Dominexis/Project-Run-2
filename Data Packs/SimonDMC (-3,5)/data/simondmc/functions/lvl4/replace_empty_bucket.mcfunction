### Replaces a default bucket with one that can pick up water
# Called by lvl4/tick
clear @s minecraft:bucket
give @s minecraft:bucket{CanPlaceOn:["minecraft:water"]}
return 1