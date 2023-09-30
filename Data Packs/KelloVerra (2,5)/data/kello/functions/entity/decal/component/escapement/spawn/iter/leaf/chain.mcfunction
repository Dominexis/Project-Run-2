# Tag entity(ies)

#summon marker ~ ~ ~ {Tags:[ "kello.entity","kello.decal","kello.entity.type.decal_contraption_controller","kello.entity.part.main",      "kello.decal.controlled","kello.entity.ticking","kello.entity.target.spawn" ]}

data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.escapement","kello.entity.part.chain","kello.decal.component","kello.decal.controlled","kello.exclude" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351907}}}




# Assign scores

function kello:entity/decal/component/escapement/spawn/iter/leaf/chain_score




# Assign decal IDs

scoreboard players operation @s kello.decal.id = #selected kello.decal.id
scoreboard players operation @s kello.entity.id = #global kello.entity.id



# Boolean

scoreboard players set #boolean kello.value 1
scoreboard players set #boolean1 kello.value 1