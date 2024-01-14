# Tag entity(ies)

#data merge entity @s {Tags:[ "kello.entity","kello.decal","kello.entity.type.escapement","kello.entity.part.plank","kello.entity.platform","kello.decal.controlled","kello.entity.target.spawn" ],item:{id:"minecraft:magenta_stained_glass_pane",Count:1b,tag:{CustomModelData:351926}}}

function animated_java:escapement/summon



# Assign scores

execute as @e[type=minecraft:item_display,distance=..4,tag=pr.target,tag=!pr.ignore,tag=aj.escapement.root,tag=!kello.entity.type.escapement,sort=nearest,limit=1] run function kello:entity/decal/component/escapement/spawn/iter/leaf/escapement_score




# Summon aimdicator

function kello:entity/decal/component/escapement/spawn/iter/leaf/aimdicator
return 1