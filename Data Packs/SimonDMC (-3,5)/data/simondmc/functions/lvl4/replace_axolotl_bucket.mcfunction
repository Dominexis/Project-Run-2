### Replaces a default axolotl bucket with a placable one
# Called by lvl4/tick
clear @s minecraft:axolotl_bucket
give @s minecraft:axolotl_bucket{CanPlaceOn:["minecraft:big_dripleaf"]}
return 1