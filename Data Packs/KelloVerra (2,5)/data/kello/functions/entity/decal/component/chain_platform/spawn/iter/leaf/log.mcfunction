# Tag entity(ies)

#data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.chain_platform","kello.entity.part.log","kello.entity.platform","kello.decal.controlled","kello.entity.target.spawn" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351926}}}

data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.chain_platform","kello.entity.part.log","kello.entity.platform","kello.decal.component","kello.decal.controlled","kello.exclude" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351916}}}


# 9 Slicing

scoreboard players set #slice kello.decal 0

execute if block ~ ~ ~1 air run scoreboard players add #slice kello.decal 1
execute if block ~ ~ ~-1 air run scoreboard players add #slice kello.decal 2
#execute if block ^ ^ ^1 air run scoreboard players add #slice kello.decal 4
#execute if block ^ ^ ^-1 air run scoreboard players add #slice kello.decal 8

execute if score #slice kello.decal matches 0 run data modify entity @s item.tag.CustomModelData set value 351910
execute if score #slice kello.decal matches 1 run data modify entity @s item.tag.CustomModelData set value 351909
execute if score #slice kello.decal matches 2 run data modify entity @s item.tag.CustomModelData set value 351911
execute if score #slice kello.decal matches 3 run data modify entity @s item.tag.CustomModelData set value 351910



# Assign scores

function kello:entity/decal/component/chain_platform/spawn/iter/leaf/log_score



# Assign var

#function kello:entity/decal/component/chain_platform/spawn/iter/leaf/log/var




# Assign decal IDs

scoreboard players operation @s kello.decal.id = #selected kello.decal.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id



# Boolean

scoreboard players set #boolean kello.value 1
scoreboard players set #boolean1 kello.value 1
scoreboard players set #barrier kello.decal 1