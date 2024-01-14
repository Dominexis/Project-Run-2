execute as @e[tag=kello.decal.spawn_point] at @s run function kello:debug/decal/util/spawn/verify/decals/process_decals

execute as @e[type=minecraft:item_display] at @s run function kello:debug/decal/util/spawn/verify/decals/init_decals
return 1