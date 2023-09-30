# Tag entity(ies)

data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.chain_platform","kello.entity.part.platform_visual","kello.decal.component","kello.decal.controlled" ],item:{id:"minecraft:light_gray_dye",Count:1b,tag:{CustomModelData:0}},brightness:{sky:15,block:15}}




# Assign entity IDs

scoreboard players operation @s kello.decal.id = #selected kello.decal.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id



# Boolean

scoreboard players set #boolean kello.value 1
scoreboard players set #boolean1 kello.value 1