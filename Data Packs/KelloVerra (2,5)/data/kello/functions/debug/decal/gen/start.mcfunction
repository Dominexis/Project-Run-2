scoreboard players set #generator.new_instance kello.value 0
execute if score #generator.generate kello.value matches 0 run scoreboard players set #generator.new_instance kello.value 1
scoreboard players set #generator.generate kello.value 1

execute as @e[type=marker,tag=kello.decal.temp_spawn_point,tag=kello.decal.unregistered] run function kello:debug/decal/gen/as

execute store result storage kello:data tag.decal_generator_instance.id int 1 run scoreboard players get #local kello.level.id
data modify storage kello:data tag.decal_generator_instance.list append from storage kello:data tag.decal_generator_instance.id

execute if score #generator.new_instance kello.value matches 1 run function kello:debug/decal/gen/next_instance