# Tag entity(ies)

#data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.chain_platform","kello.entity.part.plank","kello.entity.platform","kello.decal.controlled","kello.entity.target.spawn" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351926}}}

data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.chain_platform","kello.entity.part.plank","kello.entity.platform","kello.decal.component","kello.decal.controlled","kello.exclude" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351916}}}




# Assign scores

execute rotated 0 0 run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/plank_score




# Assign decal IDs

scoreboard players operation @s kello.decal.id = #selected kello.decal.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id



# Boolean

scoreboard players set #boolean kello.value 1
scoreboard players set #boolean1 kello.value 1
scoreboard players set #barrier kello.decal 1