# Clear

tag @s remove kello.decal.controller_children


execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/animations/pause_all
tag @s[tag=kello.entity.type.cogwheel_shaft] add kello.empty

execute if score @s kello.decal.state matches 2 run function kello:entity/decal/decwheel/animation/stop_rotate_inv



# Add tag incase havent

tag @s add kello.decal.controller.optional_contraption





# Tag

# tag @s[tag=kello.attach] add kello.empty
# tag @s[tag=kello.attach] remove kello.attach