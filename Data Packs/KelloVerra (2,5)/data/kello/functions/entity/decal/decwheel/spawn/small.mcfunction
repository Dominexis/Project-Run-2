# Summon decal(ies)

#summon item_display ~ ~ ~ {interpolation_duration:0,interpolation_start:0,Tags:[ "kello.entity","kello.decal","kello.entity.type.small","kello.entity.type.cogwheel_decal","kello.entity.part.cogwheel",      "kello.entity.ticking", "kello.entity.target.spawn" ],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351922}}}
function animated_java:decwheel/summon/small_gear





# Assign scores and entity ID

execute if score #is_dummy kello.value matches 0 as @e[type=minecraft:item_display,distance=..0.5,tag=aj.decwheel.root,tag=!kello.decal] run function kello:entity/decal/decwheel/spawn/small_score
execute if score #is_dummy kello.value matches 1 as @e[type=minecraft:item_display,distance=..0.5,tag=aj.decwheel.root,tag=!kello.decal] run function kello:entity/decal/decwheel/spawn/dummy_score
return 1