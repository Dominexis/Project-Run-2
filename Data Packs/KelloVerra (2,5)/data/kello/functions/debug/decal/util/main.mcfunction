# Select

execute if entity @s[tag=kello.entity.decal_deselector] run function kello:debug/decal/util/selector/deselect
execute if entity @s[tag=kello.entity.decal_selector  ] run function kello:debug/decal/util/selector/select
execute if entity @s[tag=kello.entity.decal_spawner   ] run function kello:debug/decal/util/spawn/main