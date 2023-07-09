### Level 1

# Pick up bucket
execute at @e[tag=pr.target,tag=sdmc.display-bucket] as @a[distance=..1.3,tag=pr.target,nbt=!{Inventory:[{id:"minecraft:bucket"}]}] run give @s bucket{CanPlaceOn:["minecraft:water"]}