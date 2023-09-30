# Tag entity(ies)

#data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.escapement","kello.entity.part.plank","kello.entity.platform","kello.decal.controlled","kello.entity.target.spawn" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351926}}}

function animated_java:escapement/summon



# Assign scores

execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.escapement.root,tag=!kello.entity.type.escapement,distance=..4,sort=nearest,limit=1] run function kello:entity/decal/component/escapement/spawn/iter/leaf/escapement_score




# Summon aimdicator

function kello:entity/decal/component/escapement/spawn/iter/leaf/aimdicator