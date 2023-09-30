# Summon entity(ies)

#summon area_effect_cloud ~ ~ ~ {Tags:[ "kello.entity","kello.entity.throwable","kello.entity.type.large","kello.entity.type.thrown_cogwheel","kello.entity.part.main",      "kello.entity.ticking","kello.entity.air_toggle","kello.entity.target.spawn" ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:item_display",interpolation_duration:0,interpolation_start:0,Tags:[ "kello.entity","kello.entity.throwable","kello.entity.type.large","kello.entity.type.thrown_cogwheel","kello.entity.part.cogwheel",      "kello.entity.target.spawn" ],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351902}}}]}
execute positioned ~ ~-64 ~ run function animated_java:cogwheel/summon/large
scoreboard players set #boolean kello.value 1



# Assign scores and IDs

scoreboard players add #global kello.entity.id 1
execute positioned ~ ~-64 ~ as @e[type=#kello:generic/system,distance=..0.5,tag=aj.cogwheel.root,tag=!kello.entity.type.thrown_cogwheel,tag=!kello.entity.type.large] positioned as @s run function kello:entity/thrown/large_cog/spawn/score