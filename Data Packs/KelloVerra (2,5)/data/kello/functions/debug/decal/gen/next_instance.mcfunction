scoreboard players set #return kello.value 0


execute unless data storage kello:data tag.decal_generator_instance.list[0] run function kello:debug/decal/gen/end

execute as @e[type=item_display,tag=kello.decal,tag=kello.ignore] at @s run function kello:debug/decal/util/spawn/verify/decals/init_decals
execute if score #return kello.value matches 0 run function kello:debug/decal/gen/start_next_instance