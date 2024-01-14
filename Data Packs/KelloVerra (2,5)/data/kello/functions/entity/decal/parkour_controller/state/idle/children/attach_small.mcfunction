execute align xyz positioned ~-.625 ~-1.9 ~-.625 as @a[dx=1.25,dy=1.5,dz=1.25,tag=pr.target,predicate=kello:midair] positioned ~.625 ~1.9 ~.625 run tp @s ~.5 ~1.05 ~.5
kill @e[type=minecraft:item_display,distance=..1,tag=kello.entity.type.placedicator,tag=kello.entity.type.small,sort=nearest]
fill ~ ~ ~ ~ ~-2 ~ minecraft:barrier replace minecraft:air
return 1