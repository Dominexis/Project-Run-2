# Animation

# execute if score @s kello.decal.state matches 0 run function kello:entity/decal/decwheel/animation/stop_rotate_trn
# execute if score @s kello.decal.state matches 3 run function kello:entity/decal/decwheel/animation/stop_rotate_trn
# execute if score @s kello.decal.state matches 1..2 run function kello:entity/decal/decwheel/animation/stop_rotate




# Detach

execute if entity @s[tag=kello.attach] run function kello:entity/decal/parkour_controller/state/out/children/detach



# Add tag

tag @s add kello.decal.controller_children
# tag @s remove kello.empty
tag @s[tag=kello.entity.type.cogwheel_shaft] remove kello.empty



execute if entity @s[tag=kello.entity.type.cogwheel_shaft] run kill @e[type=item_display,tag=kello.entity.type.placedicator,distance=..1,sort=nearest,limit=4]
execute if entity @s[tag=kello.entity.type.cogwheel] run kill @e[type=item_display,tag=kello.entity.type.groundicator,distance=..1,sort=nearest,limit=4]
execute if entity @s[tag=kello.entity.type.cogwheel_decshaft] run kill @e[type=item_display,tag=kello.entity.type.placedicator,distance=..1,sort=nearest,limit=4]