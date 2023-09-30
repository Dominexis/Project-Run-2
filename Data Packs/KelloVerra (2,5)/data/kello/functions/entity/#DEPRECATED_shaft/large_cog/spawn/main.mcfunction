# Summon entity(ies)

summon item_display ~ ~ ~ {interpolation_duration:0,interpolation_start:0,Tags:[ "kello.entity","kello.entity.type.large","kello.entity.type.cogwheel_shaft","kello.entity.part.shaft",      "kello.entity.ticking","kello.entity.target.spawn" ],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351913}}}




# Assign entity IDs and owner IDs

scoreboard players add #global kello.entity.id 1
scoreboard players operation @e[type=#kello:generic/system,distance=..2,tag=kello.entity.target.spawn] kello.entity.id = #global kello.entity.id




# Assign scores

execute as @e[type=#kello:generic/system,distance=..2,tag=kello.entity.target.spawn] run function kello:entity/shaft/large_cog/spawn/score




# Untarget self

tag @e[type=#kello:generic/system,tag=kello.entity.target.spawn] remove kello.entity.target.spawn