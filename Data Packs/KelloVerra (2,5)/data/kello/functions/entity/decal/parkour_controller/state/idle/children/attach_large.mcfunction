execute align xyz positioned ~-1.5 ~-1.9 ~-1.5 as @a[dx=3,dy=1.5,dz=3,tag=pr.target,predicate=kello:midair] positioned ~1.5 ~1.9 ~1.5 run tp @s ~.5 ~1.05 ~.5
kill @e[type=minecraft:item_display,distance=..1,tag=kello.entity.type.placedicator,tag=kello.entity.type.large,sort=nearest]
fill ~-1 ~ ~-1 ~1 ~-2 ~1 minecraft:barrier replace minecraft:air

tag @s add kello.temporary_positioned
execute summon minecraft:marker positioned as @e[type=#kello:generic/system,tag=kello.temporary_positioned] run function kello:entity/decal/parkour_controller/state/idle/children/particle_large_init
tag @s remove kello.temporary_positioned
return 1