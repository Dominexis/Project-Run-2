execute align xyz positioned ~-1.5 ~-1.9 ~-1.5 as @a[tag=pr.target,dz=3,dy=1.5,dx=3,predicate=kello:midair] positioned ~1.5 ~1.9 ~1.5 run tp @s ~.5 ~1.05 ~.5
kill @e[type=item_display,tag=kello.entity.type.placedicator,tag=kello.entity.type.large,distance=..1,sort=nearest]
fill ~-1 ~ ~-1 ~1 ~-2 ~1 barrier replace air

tag @s add kello.temporary_positioned
execute summon marker positioned as @e[type=#kello:generic/system,tag=kello.temporary_positioned] run function kello:entity/decal/parkour_controller/state/idle/children/particle_large_init
tag @s remove kello.temporary_positioned