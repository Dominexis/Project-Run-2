### Level 1

# Pick up bucket
execute at @e[tag=pr.target,tag=sdmc.display-bucket] as @a[distance=..1.3,tag=pr.target] store result score @s sdmc.item.bucket run clear @s minecraft:bucket 0
execute at @e[tag=pr.target,tag=sdmc.display-bucket] as @a[distance=..1.3,tag=pr.target,scores={sdmc.item.bucket=0}] run give @s minecraft:bucket{CanPlaceOn:["minecraft:water"]}
return 1